using System.ComponentModel.DataAnnotations.Schema;

namespace HairCareStore.Models
{
    public class Conversation
    {
        public int ConversationId { get; set; }

        public int ClientId { get; set; }
        public User Client { get; set; }

        public int? AdminId { get; set; }
        public User? Admin { get; set; }

        [NotMapped]
        public string? LastMessage { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.Now;
        public DateTime LastMessageAt { get; set; } = DateTime.Now;

        public bool IsClosed { get; set; }
    }
}
