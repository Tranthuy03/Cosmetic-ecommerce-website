namespace HairCareStore.ViewModels

{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using HairCareStore.Models;
    public class CheckoutViewModel
    {
        // Hiển thị
        public List<CartItem> CartItems { get; set; } = new();

        public User? User { get; set; }

        // Form input
        [Required]
        public string FullName { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        public string City { get; set; }

        [Required]
        public string Country { get; set; }

        [Required]
        public string Phone { get; set; }

        [Required, EmailAddress]
        public string Email { get; set; }

        public string? Note { get; set; }
    }
}