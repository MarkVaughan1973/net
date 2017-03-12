using Core.Entity;
using Core.Properties;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace Core.DataAccess.SQL
{
    public class SqlProductModel : IProductModel
    {
        private string connectionString = Settings.Default.sqlserver;

        /// <summary>
        /// retrieves a Product
        /// </summary>
        /// <param name="id">the product's unique key</param>
        /// <returns></returns>
        public Product SelectById(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "select * from products where id = @id";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.AddWithValue("id", id);
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        if (dataReader.Read())
                        {
                            return new Product
                            {
                                Id = (string)dataReader["id"],
                                Name = (string)dataReader["name"],
                                CostPrice = (double)dataReader["costPrice"],
                                RetailPrice = (double)dataReader["retailPrice"],
                                RowVersion = (byte[])dataReader["rowVersion"]
                            };
                        }
                        return null;
                    }
                }
            }
        }

        public ICollection<Product> SelectByName(string partOfName)
        {
            ICollection<Product> products = new List<Product>();
            using (SqlConnection connection =
                      new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "select * from products where name like @name";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.AddWithValue("name", $"%{partOfName}%");
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        while (dataReader.Read())
                        {
                            products.Add(
                                new Product
                                {
                                    Id = (string)dataReader["id"],
                                    Name = (string)dataReader["name"],
                                    CostPrice = (double)dataReader["costPrice"],
                                    RetailPrice = (double)dataReader["retailPrice"],
                                    RowVersion = (byte[])dataReader["rowVersion"]
                                }
                            );
                        }
                        return products;
                    }
                }
            }
        }

        public ICollection<Product> Products
        {
            get
            {
                ICollection<Product> products = new List<Product>();
                using (SqlConnection connection =
                          new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "select * from products";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader dataReader = cmd.ExecuteReader())
                        {
                            while (dataReader.Read())
                            {
                                products.Add(
                                    new Product
                                    {
                                        Id = (string)dataReader["id"],
                                        Name = (string)dataReader["name"],
                                        CostPrice = (double)dataReader["costPrice"],
                                        RetailPrice = (double)dataReader["retailPrice"],
                                        RowVersion = (byte[])dataReader["rowVersion"]
                                    }
                                );
                            }
                            return products;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Adds a new product to the data store
        /// </summary>
        /// <param name="product"></param>
        /// <returns>false if the product already exists</returns>
        public bool Create(Product product)
        {
            using (SqlConnection connection =
                                  new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "insert into Products (id, name, costPrice, retailPrice, discriminator) values (@id, @name, @costPrice, @retailPrice, @discriminator)";
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("id", product.Id);
                        cmd.Parameters.AddWithValue("name", product.Name);
                        cmd.Parameters.AddWithValue("costPrice", product.CostPrice);
                        cmd.Parameters.AddWithValue("retailPrice", product.RetailPrice);
                        cmd.Parameters.AddWithValue("discriminator", "Product");
                        return cmd.ExecuteNonQuery() == 1;
                    }
                }
                catch (SqlException e)
                {
                    Debug.WriteLine(e.Message);
                    return false;
                }
            }
        }

        public bool Update(Product product)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    SqlTransaction transaction = connection.BeginTransaction(IsolationLevel.Serializable);
                    cmd.Transaction = transaction;
                    cmd.CommandText = "update products set name = @name, costPrice = @costPrice, retailPrice = @retailPrice where id = @id and [RowVersion] = @rowVersion";
                    cmd.Connection = connection as SqlConnection;
                    cmd.Parameters.AddWithValue("id", product.Id);
                    cmd.Parameters.AddWithValue("name", product.Name);
                    cmd.Parameters.AddWithValue("costPrice", product.CostPrice);
                    cmd.Parameters.AddWithValue("retailPrice", product.RetailPrice);
                    cmd.Parameters.AddWithValue("rowVersion", product.RowVersion);
                    try
                    {
                        int rowsUpdated = cmd.ExecuteNonQuery();
                        transaction.Commit();
                        return rowsUpdated == 1;
                    }
                    catch (SqlException)
                    {
                        transaction.Rollback(); //can throw an Exception
                        return false;
                    }
                }
            }
        }

        public bool Delete(string id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "delete from products where id = @id";
                    cmd.Parameters.AddWithValue("id", id);
                    cmd.Connection = connection;
                    return cmd.ExecuteNonQuery() == 1;
                }
            }
        }
    }
}
