using HairCareStore.Data;
using HairCareStore.Models;
using HairCareStore.Helper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;
using HairCareStore.ViewModels;

namespace HairCareStore.Controllers
{
    public class CartController : Controller
    {
        private readonly EshopContext _context;
        public CartController(EshopContext context)
        {
            _context = context;
        }
        public List<CartItem> Cart => HttpContext.Session.Get<List<CartItem>>(MySetting.CART_KEY) ?? new List<CartItem>();

        public IActionResult Index()
        {
            var cartJson = HttpContext.Session.GetString(MySetting.CART_KEY);
            Console.WriteLine(cartJson);
            return View(Cart);
        }
        public IActionResult AddToCart(int id, int quantity=1)
        {
            var tempCart = Cart;
            var item = tempCart.SingleOrDefault(p => p.ProductId == id);
            if (item == null)
            {
                var product = _context.Products.SingleOrDefault(p => p.ProductId == id);
                if (product == null)
                {
                    TempData["Message"] = $"Not found productID: {id}";
                    return Redirect("/404");
                }
                item = new CartItem
                {
                    ProductId = product.ProductId,
                    Name = product.Name,
                    Price = (double)product.Price,
                    ImageUrl = product.ImageUrl,
                    Quantity = quantity,
                };
                tempCart.Add(item);

            }
            else {
                item.Quantity += quantity;
            }
            HttpContext.Session.Set(MySetting.CART_KEY, tempCart);

                return RedirectToAction("Index");
        }
        public IActionResult RemoveCart(int id)
        {
            var tempCart = Cart;
            var item = tempCart.SingleOrDefault(p => p.ProductId == id);
            if (item != null)
            {
                tempCart.Remove(item);
                HttpContext.Session.Set(MySetting.CART_KEY, tempCart);
            }
                return RedirectToAction("Index");
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public IActionResult Checkout(CheckoutViewModel model)
        {
            int? userId = HttpContext.Session.GetInt32("UserId");
            if (userId == null)
                return RedirectToAction("Login", "Account");

            if (Cart.Count == 0)
                return Redirect("/");

            // Tạo Order
            var order = new Order
            {
                UserId = userId.Value,
                Date = DateTime.Now,
                Adress = model.Address,
                Phone = model.Phone,
                TotalAmount = (decimal)model.CartItems.Sum(i => i.Price * i.Quantity)
            };

            _context.Orders.Add(order);
            _context.SaveChanges();

            // Tạo OrderDetails
            foreach (var item in Cart)
            {
                var detail = new OrderDetail
                {
                    OrderId = order.OrderId,
                    ProductId = item.ProductId,
                    Quantity = item.Quantity,
                    UnitPrice = (decimal)item.Price
                };

                _context.OrderDetails.Add(detail);
            }

            _context.SaveChanges();

            // Xóa giỏ hàng sau khi thanh toán
            HttpContext.Session.Remove(MySetting.CART_KEY);

            return RedirectToAction("OrderSuccess");
        }


    }
}
