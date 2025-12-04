using System.Diagnostics;
using System.Security.Claims;
using HairCareStore.Data;
using HairCareStore.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace HairCareStore.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly EshopContext _context;

        public HomeController(ILogger<HomeController> logger, EshopContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            var products = _context.Products.Include(p => p.Category).Include(p => p.Brand).ToList();
            var topProducts = _context.OrderDetails
               .Include(od => od.Product)
                   .ThenInclude(p => p.Category)
               .Include(od => od.Product.Brand)
               .GroupBy(od => od.Product)
               .Select(g => new
               {
                   Product = g.Key,
                   TotalSold = g.Sum(x => x.Quantity)
               })
               .OrderByDescending(x => x.TotalSold)
               .Take(20)
               .Select(x => x.Product)
               .ToList();

            var newProducts = _context.Products
               .Include(p => p.Category)
               .Include(p => p.Brand)
               .OrderByDescending(p => p.CreatedDate)
               .Take(8)     // nếu bạn muốn lấy top 20 sản phẩm mới
               .ToList();



            ViewBag.FavProducts = topProducts;
            ViewBag.Products = newProducts;

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Profile()
        {
            if (_context == null)
            {
                return NotFound();
            }
            var userId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value);
            var user = _context.Users.FirstOrDefault(b => b.UserId == userId);
            if (user == null)
            {
                return NotFound();
            }
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, user.Email),
                new Claim("UserId", user.UserId.ToString()), 
            
            };
            return View(user);
        }

        

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public IActionResult NotFoundPage()
        {
            return View();
        }
        [HttpGet]
        public ActionResult EditProfile(int id)
        {
            var user = _context.Users.FirstOrDefault(b => b.UserId == id);
            if (user == null)
            {
                return NotFound();
            }

           
            return View(user);
        }

        // POST: ProductController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditProfile(int id, User user, IFormFile? ImageFile)
        {
            var CurrentUser = _context.Users.FirstOrDefault(b => b.UserId == id);
            if (CurrentUser == null)
            {
                return NotFound();
            }
            ModelState.Remove("Avatar");
            ModelState.Remove("Password");
            ModelState.Remove("RoleId");

            if (ModelState.IsValid)
            {
                if (ImageFile != null && ImageFile.Length > 0)
                {
                    var fileName = Path.GetFileName(ImageFile.FileName);
                    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/Users", fileName);

                    using (var stream = new FileStream(filePath, FileMode.Create))
                    {
                        await ImageFile.CopyToAsync(stream);
                    }
                    CurrentUser.Avatar = fileName;
                }

                CurrentUser.Fullname = user.Fullname;
                CurrentUser.Description = user.Description;
                CurrentUser.Email = user.Email;
                CurrentUser.Phone = user.Phone;
                CurrentUser.Address = user.Address;
                


                await _context.SaveChangesAsync();
                return RedirectToAction("Profile", "Home");
            }
            else
            {
                var errors = ModelState.Values.SelectMany(v => v.Errors).Select(e => e.ErrorMessage).ToList();
                foreach (var error in errors)
                {
                    Console.WriteLine("Fix here: " + error); // Hoặc log ra file
                }
                return View(CurrentUser);
            }
        }
    }
}