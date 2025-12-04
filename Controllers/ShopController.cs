using HairCareStore.Data;
using HairCareStore.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace HairCareStore.Controllers
{
    public class ShopController : Controller
    {

        private readonly EshopContext _context;

        public ShopController(EshopContext context)
        {

            _context = context;
        }


        [HttpGet("/Shop/Index")]
        public IActionResult Index(int? id, string searchString, int page = 1, int pageSize = 12)
        {
            IQueryable<Product> productsQuery = _context.Products
                .Include(p => p.Category)
                .Include(p => p.Brand);

            if (id.HasValue)
            {
                productsQuery = productsQuery.Where(p => p.CategoryId == id);
                ViewBag.CurrentCategory = _context.Categories.Find(id);
            }

            if (!string.IsNullOrEmpty(searchString))
            {
                productsQuery = productsQuery.Where(p =>
                    p.Name.Contains(searchString) ||
                    p.Description.Contains(searchString));
            }

            int totalProducts = productsQuery.Count();

            var products = productsQuery
                .OrderBy(p => p.ProductId)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();

            ViewBag.Products = products;
            ViewBag.Page = page;
            ViewBag.PageSize = pageSize;
            ViewBag.TotalProducts = totalProducts;
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalProducts / pageSize);
            ViewBag.CurrentSearch = searchString;
            ViewBag.Categories = _context.Categories.ToList();

            return View();
        }




    }
}