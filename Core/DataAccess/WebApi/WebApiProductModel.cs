using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Core.Entity;
using System.Net.Http;
using System.Net;

namespace Core.DataAccess.WebApi
{
    public class WebApiProductModel : IProductModel, IAsyncProductModel
    {
        //private string uri = "http://www.sdineen.uk/api/productService/";
        private string uri = "http://localhost:55301/api/productService/";

        public ICollection<Product> Products
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public ICollection<Product> SelectByName(string name)
        {
            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = client.GetAsync(uri + name).Result;
                IEnumerable<Product> products =
                     response.Content.ReadAsAsync<IEnumerable<Product>>().Result;
                return products.ToList();
            }
        }

        public bool Create(Product product)
        {
            using (HttpClient client = new HttpClient())
            {
                //Send the product, encoded as JSON, in a POST request to the specified Uri 
                HttpResponseMessage response = client.PostAsJsonAsync(uri, product).Result;
                return response.StatusCode == HttpStatusCode.Created;
            }
        }

        /*****************async methods*********/
        public async Task<ICollection<Product>> SelectByNameAsync(string name)
        {
            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync(uri + name);
                IEnumerable<Product> products = 
                    await response.Content.ReadAsAsync<IEnumerable<Product>>();
                return products.ToList();
            }
        }

        public async Task<bool> CreateAsync(Product product)
        {
            using (HttpClient client = new HttpClient())
            {
                //Send the product, encoded as JSON, in a POST request to the specified Uri 
                HttpResponseMessage response = await client.PostAsJsonAsync(uri, product);
                return response.StatusCode == HttpStatusCode.Created;
            }
        }

        public Product SelectById(string id)
        {
            throw new NotImplementedException();
        }

        public bool Update(Product product)
        {
            throw new NotImplementedException();
        }

        public bool Delete(string id)
        {
            throw new NotImplementedException();
        }

        public async Task<Product> SelectByIdAsync(string id)
        {
            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync(uri + "id" + id);
                return await response.Content.ReadAsAsync<Product>();
            }
        }

        public async Task<bool> UpdateAsync(Product product)
        {
            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.PutAsJsonAsync(uri +
product.Id, product);
                return response.StatusCode == HttpStatusCode.OK;
            }
        }

        public async Task<bool> DeleteAsync(string id)
        {
            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.DeleteAsync(uri + id);
                return response.StatusCode == HttpStatusCode.OK;
            }
        }

    }
}
