using HairCareStore.Data;
using HairCareStore.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace HairCareStore.Controllers
{
    public class AdminController : Controller
    {

        private readonly EshopContext _context;

        public AdminController(EshopContext context)
        {
            _context = context;
        }

        [Authorize(Roles = "Admin")]
        public IActionResult Index()
        {
            return View();
        }


        public IActionResult Dashboard()
        {
            var model = new DashboardViewModel
            {
                TotalOrders = _context.Orders.Count(),
                TotalCustomers = _context.Users.Count(),
                TotalProducts = _context.Products.Count(),

                TotalRevenue = _context.Orders
                .Where(o => o.Status == "Completed")
                .Sum(o => (decimal?)o.TotalAmount) ?? 0,

                RecentOrders = _context.Orders
                .Include(o => o.User)
                .OrderByDescending(o => o.Date)
                .Take(5)
                .ToList()
            };

            return View(model);
        }
    }
}