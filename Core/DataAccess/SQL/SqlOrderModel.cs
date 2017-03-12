using Core.DataAccess;
using Core.Properties;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using Core.Entity;
using System.Data;

namespace Core.DataAccess.SQL
{
    public class SqlOrderModel : IOrderModel
    {
        private string connectionString = Settings.Default.sqlserver;

        /// <summary>
        /// Adds a new order to the data store. Throws a InvalidOperationException
        /// if the account associated with the order hasn't been previously been
        /// added to the data store
        /// </summary>
        /// <param name="order"></param>
        /// <returns>a generated unique id for the order</returns>
        public int Create(IOrder order)
        {
            using (SqlConnection connection =
                      new SqlConnection(connectionString))
            {
                connection.Open();
                SqlTransaction transaction = null;
                try
                {
                    transaction = connection.BeginTransaction(IsolationLevel.Serializable);
                    //add a row to the Orders table
                    string sql = "insert into orders(date, orderStatus, account_id) values(@date, @orderStatus, @account_id) select scope_identity()";
                    using (SqlCommand cmd = new SqlCommand(sql, connection, transaction))
                    {
                        cmd.Parameters.AddWithValue("date", order.Date);
                        cmd.Parameters.AddWithValue("orderStatus", order.OrderStatus);
                        cmd.Parameters.AddWithValue("account_id", order.Account.Id);
                        int orderId = Convert.ToInt32(cmd.ExecuteScalar());

                        foreach (LineItem item in order.LineItems)
                        {
                            cmd.CommandText = "insert into LineItems (quantity, product_id, order_orderId) values (@quantity, @product_id, @order_orderId)";
                            cmd.Parameters.Clear();
                            cmd.Parameters.AddWithValue("quantity", item.Quantity);
                            cmd.Parameters.AddWithValue("product_id", item.Product.Id);
                            cmd.Parameters.AddWithValue("order_orderId", orderId);
                            cmd.ExecuteNonQuery();
                        }
                        transaction.Commit();
                        return orderId;
                    }
                }
                catch (Exception e)
                {
                    transaction.Rollback();
                    throw e;
                }
            }
        }

        /// <summary>
        /// Retrieves an Order and eagerly loads referenced entities. 
        /// With lazy loading, referenced objects can't be navigated to after the DbContext is closed
        /// </summary>
        /// <param name="id">the order's unique key</param>
        /// <returns></returns>
        public Order this[int id]
        {
            get
            {
                string sqlOrders = "select * from Orders where OrderId = @orderId";
                string sqlAccounts = "select id, name from Accounts inner join Orders on Orders.Account_Id = Accounts.Id where OrderId = @orderId";
                string sqlLineItems = "select LineItems.Id as LineItemId, LineItems.Quantity, Products.Id as ProductId, Products.Name, Products.CostPrice, Products.RetailPrice from Products inner join LineItems on LineItems.Product_Id = Products.Id where LineItems.Order_OrderId = @orderId";

                using (SqlConnection connection =
                          new SqlConnection(connectionString))
                {
                    //read from Orders table into Order object
                    Order order = new Order();
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(sqlOrders, connection);
                    cmd.Parameters.AddWithValue("orderId", id);
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        if (dataReader.Read())
                        {
                            order = new Order
                            {
                                OrderId = (int)dataReader["OrderId"],
                                Date = (DateTime)dataReader["Date"],
                                OrderStatus = (OrderStatus)dataReader["OrderStatus"]
                            };
                        }
                    }

                    //read from Accounts table into Account object
                    cmd.CommandText = sqlAccounts;
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        if (dataReader.Read())
                        {
                            Account account = new Account
                            {
                                Id = (string)dataReader["Id"],
                                Name = (string)dataReader["Name"]
                            };
                            //add reference from order to account
                            order.Account = account;
                        }
                    }

                    //read multiple rows from LineItems table into LineItem collection
                    order.LineItems = new List<LineItem>();
                    cmd.CommandText = sqlLineItems;
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        while (dataReader.Read())
                        {
                            LineItem lineItem = new LineItem
                            {
                                Id = (int)dataReader["LineItemId"],
                                Quantity = (int)dataReader["Quantity"],
                                Product = new Product
                                {
                                    Id = (string)dataReader["ProductId"],
                                    Name = (string)dataReader["Name"],
                                    RetailPrice = (double)dataReader["RetailPrice"],
                                    CostPrice = (double)dataReader["CostPrice"]
                                }

                            };
                            //add reference from order to LineItems
                            order.LineItems.Add(lineItem);
                        }
                    }
                    return order;
                }
            }
        }

        public ICollection<Order> Orders
        {
            get
            {
                string sqlOrders = "select * from Orders";
                string sqlAccounts = "select id, name from Accounts inner join Orders on Orders.Account_Id = Accounts.Id where OrderId = @orderId";
                string sqlLineItems = "select LineItems.Id as LineItemId, LineItems.Quantity, Products.Id as ProductId, Products.Name, Products.CostPrice, Products.RetailPrice from Products inner join LineItems on LineItems.Product_Id = Products.Id where LineItems.Order_OrderId = @orderId";
                ICollection<Order> orders = new List<Order>();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {                   
                    //read from Orders table into Order object
                    connection.Open();
                    //SqlTransaction transaction = connection.BeginTransaction(IsolationLevel.Serializable);
                    #region add orders to collection
                    SqlCommand cmd = new SqlCommand(sqlOrders, connection);
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        while (dataReader.Read())
                        {
                            orders.Add(new Order
                            {
                                OrderId = (int)dataReader["OrderId"],
                                Date = (DateTime)dataReader["Date"],
                                OrderStatus = (OrderStatus)dataReader["OrderStatus"]
                            });
                        }
                    }
                    #endregion
                    cmd.Parameters.Add(new SqlParameter { ParameterName = "orderId" });
                    foreach (Order order in orders)
                    {
                        //read from Accounts table into Account object
                        cmd.CommandText = sqlAccounts;
                        cmd.Parameters["orderId"].Value = order.OrderId;

                        #region add Account to order
                        using (SqlDataReader dataReader = cmd.ExecuteReader())
                        {
                            if (dataReader.Read())
                            {
                                Account account = new Account
                                {
                                    Id = (string)dataReader["Id"],
                                    Name = (string)dataReader["Name"]
                                };
                                //add reference from order to account
                                order.Account = account;
                            }
                        }
                        #endregion

                        #region add LineItems to order
                        //read multiple rows from LineItems table into LineItem collection
                        order.LineItems = new List<LineItem>();
                        cmd.CommandText = sqlLineItems;
                        using (SqlDataReader dataReader = cmd.ExecuteReader())
                        {
                            while (dataReader.Read())
                            {
                                LineItem lineItem = new LineItem
                                {
                                    Id = (int)dataReader["LineItemId"],
                                    Quantity = (int)dataReader["Quantity"],
                                    Product = new Product
                                    {
                                        Id = (string)dataReader["ProductId"],
                                        Name = (string)dataReader["Name"],
                                        RetailPrice = (double)dataReader["RetailPrice"],
                                        CostPrice = (double)dataReader["CostPrice"]
                                    }

                                };
                                //add reference from order to LineItems
                                order.LineItems.Add(lineItem);
                            }
                        }
                        #endregion

                    }
                    return orders;
                }
            }
        }

    }
}
