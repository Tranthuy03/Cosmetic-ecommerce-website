namespace HairCareStore.ViewModels

{
    using System.Collections.Generic;
    using HairCareStore.Models;
    public class CheckoutViewModel
    {
        public List<CartItem> CartItems { get; set; }
        public User User { get; set; }


        public string? FullName { get; set; }
        public string? Address { get; set; }
        public string? City { get; set; }
        public string? Country { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
    }
}