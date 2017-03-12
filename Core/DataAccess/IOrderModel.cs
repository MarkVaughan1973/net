using Core.Entity;
using System.Collections.Generic;

namespace Core.DataAccess
{
    public interface IOrderModel
    {
        int Create(IOrder order);
        Order this[int id] { get; }
        ICollection<Order> Orders { get; }
    }
}