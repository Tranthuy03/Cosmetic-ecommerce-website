using HairCareStore.Data;
using HairCareStore.Models;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace HairCareStore.Hubs
{
    public class ChatHub : Hub
    {
        private readonly EshopContext _context;

        public ChatHub(EshopContext context)
        {
            _context = context;
        }

        public async Task JoinConversation(int conversationId)
        {
            int userId = int.Parse(Context.User.FindFirst(ClaimTypes.NameIdentifier)!.Value);

            var conv = await _context.Conversations
                .FirstOrDefaultAsync(c => c.ConversationId == conversationId);

            if (conv == null) throw new HubException("Conversation not found");

            bool allowed = (conv.ClientId == userId) || (conv.AdminId == userId);
            if (!allowed) throw new HubException("Not allowed");

            await Groups.AddToGroupAsync(Context.ConnectionId, $"conv-{conversationId}");
        }

        public async Task SendMessage(int conversationId, string message)
        {
            int userId = int.Parse(Context.User.FindFirst(ClaimTypes.NameIdentifier)!.Value);

            var conv = await _context.Conversations
                .FirstOrDefaultAsync(c => c.ConversationId == conversationId);

            if (conv == null) throw new HubException("Conversation not found");

            bool allowed = (conv.ClientId == userId) || (conv.AdminId == userId);
            if (!allowed) throw new HubException("Not allowed");

            var chat = new ChatMessage
            {
                ConversationId = conversationId,
                SenderId = userId,
                Content = message,
                CreatedAt = DateTime.Now
            };

            _context.ChatMessages.Add(chat);
            conv.LastMessageAt = DateTime.Now;
            await _context.SaveChangesAsync();

            var senderName = await _context.Users
        .Where(u => u.UserId == userId)
        .Select(u => u.Fullname)
        .FirstOrDefaultAsync() ?? $"User {userId}";

            // ✅ GỬI THÊM senderName
            await Clients.Group($"conv-{conversationId}")
                .SendAsync("ReceiveMessage", userId, senderName, message, chat.CreatedAt);
        }



    }
}