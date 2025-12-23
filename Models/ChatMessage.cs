using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HairCareStore.Models
{
    public class ChatMessage


    {
        public int ChatMessageId { get; set; }
        public int ConversationId { get; set; }
        public Conversation Conversation { get; set; }

        public int SenderId { get; set; }
        public User Sender { get; set; }

        public string Content { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}

