using System.Collections.Generic;
using System.Threading.Tasks;
using Core.Entity;

namespace Core.DataAccess.WebApi
{
    public interface IAsyncProductModel
    {
        Task<bool> CreateAsync(Product product);
        Task<ICollection<Product>> SelectByNameAsync(string name);
    }
}