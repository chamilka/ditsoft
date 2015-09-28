using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface ICustomer : IInventoryBaseEntity
    {
        string Fname { get;}
        string Nname { get;}
        string Lname { get;}
        string Address { get;}
        string Email { get;}
        string Telephone { get;}

        virtual ICollection<Invoice> Invoices { get;}
        virtual ICollection<Order> Orders { get;}
    }
}
