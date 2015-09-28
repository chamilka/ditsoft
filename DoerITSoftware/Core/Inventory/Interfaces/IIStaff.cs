using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IIStaff : IInventoryBaseEntity
    {
        string EmployeeNo { get; }
        string StaffFname { get; }
        string StaffMname { get; }
        string StaffLname { get; }
        string Password { get; }
        string Role { get; }
        string Telephone { get; }
        string Telephone2 { get; }
        string Email { get; }

        virtual ICollection<Invoice> Invoices { get; }
    }
}
