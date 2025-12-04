namespace HairCareStore.ViewModels

{
    using System.Collections.Generic;
    using HairCareStore.Models;
    public class CheckoutViewModel
    {
        public List<CartItem> CartItems { get; set; }
        public User User { get; set; }
    }
}
