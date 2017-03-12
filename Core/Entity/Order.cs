using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.Entity
{
    public class Order : IOrder
    {
        public int OrderId { get; set; }
        public DateTime Date { get; set; } = DateTime.Now;
        public OrderStatus OrderStatus { get; set; } = OrderStatus.NotPlaced;
        public Account Account { get; set; }
        public ICollection<LineItem> LineItems { get; set; } = new List<LineItem>();

        public ICollection<LineItem> GetLineItems()
        {
            return LineItems;
        }

        public Order()
        {
            LineItems = new List<LineItem>();
        }

        /// <summary>
        /// If LineItems contains the product, increase the quantity for that LineItem
        /// otherwise add a new LineItem
        /// </summary>
        /// <param name="product"></param>
        /// <param name="quantity"></param>
        public void AddProduct(Product product, int quantity)
        {
            //LineItem lineItem = LineItems.SingleOrDefault(li => li.Product.Id == product.Id);
            IEnumerable<LineItem> query = from li in LineItems
                                          where li.Product.Equals(product)
                                          select li;

            LineItem lineItem = query.SingleOrDefault();//InvalidOperationException if more than one element

            if (lineItem == null)
            {
                LineItems.Add(new LineItem(product, quantity));
            }
            else
            {
                lineItem.Quantity += quantity;
            }
        }

        /// <summary>
        /// If LineItems contains the product, decrease the quantity for that LineItem
        /// </summary>
        /// <param name="product"></param>
        /// <param name="quantity"></param>
        public void RemoveProduct(Product product, int quantity)
        {
            //LineItem lineItem = LineItems.FirstOrDefault(li => li.Product.Id == product.Id);
            IEnumerable<LineItem> query = from li in LineItems
                                          where li.Product.Id == product.Id
                                          select li;

            LineItem lineItem = query.FirstOrDefault();

            if (lineItem == null)
            {
                throw new InvalidOperationException($"{product.Name} is not in Order");
            }
            else
            {
                lineItem.Quantity -= quantity;
            }
        }

        public override string ToString()
        {
            string text = $"{Environment.NewLine}Order Id: {OrderId}, Date: {Date}, Status: {OrderStatus} {Environment.NewLine}Account Id: {Account.Id}, Account Name: {Account.Name}  {Environment.NewLine}Products: ";
            //LineItems.ForEach(lineItem => text += lineItem + ", ");
            return text;
        }
    }
}
