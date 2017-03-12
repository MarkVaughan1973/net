using System;
using System.Collections.Generic;

namespace Core.Entity
{
    /// <summary>
    /// Interface facilitates mocking and dependency injection
    /// </summary>
    public interface IOrder
    {
        Account Account { get; set; }
        DateTime Date { get; set; }
        ICollection<LineItem> LineItems { get; set; }
        int OrderId { get; set; }
        OrderStatus OrderStatus { get; set; }

        void AddProduct(Product product, int quantity);
        void RemoveProduct(Product product, int quantity);
        string ToString();
    }
}