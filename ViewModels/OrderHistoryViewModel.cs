namespace HairCareStore.ViewModels
{
    public class OrderHistoryViewModel
    {
        public int OrderId { get; set; }
        public DateTime? Date { get; set; }
        public decimal TotalAmount { get; set; }
        public string? Status { get; set; }
    }
}
