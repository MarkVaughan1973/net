using System;
using System.Collections.Generic;
using Core.DataAccess;
using Core.Entity;
using System.Data.SqlClient;
using Core.Properties;
using System.Diagnostics;
using System.Data;

namespace Core.DataAccess.SQL
{
    public class SqlAccountModel : IAccountModel
    {
        private string connectionString = Settings.Default.sqlserver;

        public Account this[string id]
        {
            get
            {
                using (SqlConnection connection =
                          new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "select * from accounts where id = @id";
                    SqlCommand cmd = new SqlCommand(sql, connection);
                    cmd.Parameters.AddWithValue("id", id);
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {
                        if (dataReader.Read())
                        {
                            return new Account
                            {
                                Id = (string)dataReader["id"],
                                Name = (string)dataReader["name"]
                            };
                        }
                    }
                    return null;
                }
            }
        }

        public ICollection<Account> Accounts
        {
            get
            {
                using (SqlConnection connection =
                          new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "select * from accounts";
                    SqlCommand cmd = new SqlCommand(sql, connection);

                    ISet<Account> accounts = new HashSet<Account>();
                    using (SqlDataReader dataReader = cmd.ExecuteReader())
                    {

                        while (dataReader.Read())
                        {
                            accounts.Add(
                                new Account
                                {
                                    Id = (string)dataReader["id"],
                                    Name = (string)dataReader["name"]
                                });
                        }
                    }
                    return accounts;
                }
            }
        }

        public bool Create(Account account)
        {
            using (SqlConnection connection =
                                  new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into Accounts (id, name) values (@id, @name)";
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("id", account.Id);
                    cmd.Parameters.AddWithValue("name", account.Name);
                    try
                    {
                        return cmd.ExecuteNonQuery() == 1;
                    }
                    catch (Exception)
                    {
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
                    cmd.CommandText = "delete from accounts where id = @id";
                    cmd.Parameters.AddWithValue("id", id);
                    cmd.Connection = connection;
                    return cmd.ExecuteNonQuery() == 1;
                }
            }
        }

        public ICollection<Account> SelectByName(string partOfName)
        {
            using (SqlConnection connection =
                      new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "select * from accounts where name like @name";
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.Parameters.AddWithValue("name", "%" + partOfName + "%");
                ISet<Account> accounts = new HashSet<Account>();
                using (SqlDataReader dataReader = cmd.ExecuteReader())
                {
                    while (dataReader.Read())
                    {
                        accounts.Add(
                            new Account
                            {
                                Id = (string)dataReader["id"],
                                Name = (string)dataReader["name"]
                            });
                    }
                }
                return accounts;
            }
        }

        public bool Update(Account account)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    try
                    {
                        cmd.CommandText = "update accounts set name = @name where id = @id";
                        cmd.Connection = connection as SqlConnection;
                        cmd.Parameters.AddWithValue("id", account.Id);
                        cmd.Parameters.AddWithValue("name", account.Name);
                        int rowsUpdated = cmd.ExecuteNonQuery();
                        return rowsUpdated == 1;
                    }
                    catch (Exception)
                    {
                        return false;
                    }
                }
            }
        }
    }
}