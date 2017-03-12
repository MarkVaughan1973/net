using System;

namespace Core.Entity
{
    [Serializable]
    public class LineItem
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
        public Product Product { get; set; }

        public LineItem()
        {

        }
        public LineItem(Product product, int quantity)
        {
            Product = product;
            Quantity = quantity;
        }

        public override string ToString()
        {
            return Quantity + " x " + Product;
        }

        public override bool Equals(object obj)
        {
            LineItem lineItem = obj as LineItem;
            if (obj == null)
                return false;
            return lineItem.Id == Id && lineItem.Product.Equals(Product) && lineItem.Quantity == Quantity;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode() + Quantity.GetHashCode() * 3 + Product.GetHashCode() * 5;
        }
    }
}
