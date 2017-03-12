using Core.Entity;
using System.Collections.Generic;
using System.Linq;

namespace Core.DataAccess.Collection
{
    /// <summary>
    /// uses object serialization to persist products
    /// </summary>
    public class CollectionProductModel : IProductModel
    {
        private ISet<Product> products = new HashSet<Product>();
        private IProductSerializer serializer;

        public CollectionProductModel()
        {
        }

        public CollectionProductModel(IProductSerializer serializer)
        {
            this.serializer = serializer;
            ICollection<Product> productCollection = serializer.ReadProducts();
            if(productCollection != null)
                products = new HashSet<Product>(productCollection);
        }

        public ICollection<Product> Products
        {
            get
            {
                return products;
            }
        }

        public Product SelectById (string id)
        {            
                //return products.FirstOrDefault(product => product.Id == id);
                //Data source
                IEnumerable<Product> query = from p in products
                                             where p.Id == id
                                             select p;
                return query.FirstOrDefault();            
        }

        public bool Create(Product product)
        {
            //Set can't store duplicates. Need to override Equals and GetHashCode
            bool added = products.Add(product);
            if(serializer != null)
                serializer.WriteProducts(products);
            return added;
        }

        public ICollection<Product> SelectByName(string partOfName)
        {
            return (from p in products
                    where p.Name.Contains(partOfName)
                    select p).ToList();
        }

        public bool Update(Product product)
        {
            bool removed = products.Remove(product);//requires Equals and GetHashcode to be overidden
            if (!removed)
                return false;
            return products.Add(product);
        }

        public bool Delete(string id)
        {
            Product product = products.FirstOrDefault(p => p.Id == id);
            return products.Remove(product);
        }
    }
}
