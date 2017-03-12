using Core.Entity;
using System.Collections.Generic;

namespace Core.DataAccess.Collection
{
    public interface IProductSerializer
    {
        ICollection<Product> ReadProducts();
        void WriteProducts(ICollection<Product> products);
    }
}