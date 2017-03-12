using System.Collections.Generic;
using Core.Entity;
using Newtonsoft.Json;
using System.IO;

//Requires Newtonsoft.Json.dll from NuGet
namespace Core.DataAccess.Collection
{
    public class JsonProductSerializer : IProductSerializer
    {
        private string path = @"..\..\products.json";

        public ICollection<Product> ReadProducts()
        {
            if (!File.Exists(path))
                return null;
            string json = File.ReadAllText(path);
            return JsonConvert.DeserializeObject<ICollection<Product>>(json);
        }

        public void WriteProducts(ICollection<Product> products)
        {
            string output = JsonConvert.SerializeObject(products);
            File.WriteAllText(path, output);
        }
    }
}
