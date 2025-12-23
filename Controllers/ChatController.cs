using HairCareStore.Data;
using HairCareStore.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic;
using System.Security.Claims;

namespace HairCareStore.Controllers
{
    [Authorize(AuthenticationSchemes = "CookieAuth")]
    public class ChatController : Controller
    {
        private readonly EshopContext _context;

        public ChatController(EshopContext context)
        {
            _context = context;
        }

        // =========================
        // CLIENT CHAT SUPPORT
        // URL: /Chat/Support
        // =========================
        [HttpGet]
        public IActionResult Support()
        {
            int clientId = int.Parse(
                User.FindFirstValue(ClaimTypes.NameIdentifier)!
            );

            // ✅ TÌM ADMIN / MANAGER THEO ROLEID
            int adminId = _context.Users
    .Where(u => u.RoleId == 1 || u.RoleId == 2)
    .Select(u => u.UserId)
    .FirstOrDefault();




            if (adminId == 0)
            {
                return Content("❌ Chưa có Admin/Manager trong hệ thống.");
            }

            var conversation = _context.Conversations
                .FirstOrDefault(c =>
                    c.ClientId == clientId &&
                    c.AdminId == adminId &&
                    !c.IsClosed
                );

            if (conversation == null)
            {
                conversation = new Conversation
                {
                    ClientId = clientId,
                    AdminId = adminId
                };

                _context.Conversations.Add(conversation);
                _context.SaveChanges();
            }

            var messages = _context.ChatMessages
                .Where(m => m.ConversationId == conversation.ConversationId)
                .Include(x => x.Sender)
                .OrderBy(m => m.CreatedAt)
                .ToList();

            ViewBag.ConversationId = conversation.ConversationId;
            ViewBag.CurrentUserId = clientId;

            return View("Index1", messages);
        }

        // =========================
        // ADMIN CHAT VỚI CLIENT
        // URL: /Chat/Room/{conversationId}
        // =========================
        [Authorize(Roles = "Admin,Manager")]
        [HttpGet]
        public IActionResult Room(int conversationId)
        {
            var currentUserId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier)!);

            var conversation = _context.Conversations
                .Include(c => c.Client)
                .Include(c => c.Admin)
                .FirstOrDefault(c => c.ConversationId == conversationId);

            if (conversation == null) return NotFound();

            var messages = _context.ChatMessages
                .Where(m => m.ConversationId == conversationId)
                .Include(x => x.Sender)
                .OrderBy(m => m.CreatedAt)
                .ToList();

            ViewBag.ConversationId = conversationId;
            ViewBag.CurrentUserId = currentUserId;

            // ✅ header hiển thị "tên người đang chat cùng"
            // admin chat với client => lấy tên client
            ViewBag.ChatWithName = conversation.Client?.Fullname ?? $"User {conversation.ClientId}";
            ViewBag.ChatWithAvatar = !string.IsNullOrWhiteSpace(conversation.Client?.Fullname)
                ? conversation.Client.Fullname.Trim()[0].ToString().ToUpper()
                : "U";

            return View("Index1", messages);
        }



        [Authorize(Roles = "Admin,Manager")]
        [HttpGet]
        public IActionResult Inbox()
        {
            var conversations = _context.Conversations
                .Where(c => !c.IsClosed)
                .Include(c => c.Client)
                .OrderByDescending(c => c.LastMessageAt)
                .Select(c => new Conversation
                {
                    ConversationId = c.ConversationId,
                    ClientId = c.ClientId,
                    Client = c.Client,
                    AdminId = c.AdminId,
                    IsClosed = c.IsClosed,
                    LastMessageAt = c.LastMessageAt,

                    // ✅ lấy nội dung tin nhắn mới nhất (KHÔNG cần thêm cột DB)
                    LastMessage = _context.ChatMessages
                        .Where(m => m.ConversationId == c.ConversationId)
                        .OrderByDescending(m => m.CreatedAt)
                        .Select(m => m.Content)
                        .FirstOrDefault()
                })
                .ToList();

            return View("Inbox1", conversations);
        }


    }
}
