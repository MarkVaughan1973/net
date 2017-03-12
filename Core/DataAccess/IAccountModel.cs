using Core.Entity;
using System.Collections.Generic;

namespace Core.DataAccess
{
    public interface IAccountModel
    {
        ICollection<Account> Accounts { get; }
        Account this[string id] { get; }
        ICollection<Account> SelectByName(string partOfName);
        bool Create(Account account);
        bool Delete(string id);
        bool Update(Account account);
    }
}
