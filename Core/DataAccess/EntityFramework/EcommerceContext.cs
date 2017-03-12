using Core.Entity;
using Core.Properties;
using System.Data.Entity;

namespace Core.DataAccess.EntityFramework
{
    public class EcommerceContext : DbContext
    {
        public EcommerceContext() : base(Settings.Default.sqlserver)
        {
            //Database.SetInitializer<EcommerceContext>(new CreateDatabaseIfNotExists<EcommerceContext>());
        }
        public DbSet<Product> Products { get; set; }
        public DbSet<Account> Accounts { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}
