using Core.Entity;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization;

namespace Core.DataAccess.Collection
{
    public class XmlProductSerializer : IProductSerializer
    {
        private string path = @"..\..\products.xml";

        public void WriteProducts(ICollection<Product> products)
        {
            var serializer = new NetDataContractSerializer();
            using (FileStream fs = new FileStream(path, FileMode.Create))
            {
                serializer.WriteObject(fs, products);
            }
        }

        public ICollection<Product> ReadProducts()
        {
            if (!File.Exists(path))
                return null;
            using (FileStream fs = new FileStream(path, FileMode.Open))
            {
                var serializer = new NetDataContractSerializer();
                return serializer.ReadObject(fs) as ISet<Product>;
            }
        }
    }
}