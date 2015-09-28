using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IInvoice : IInventoryBaseEntity
    {
        string StaffId { get; }
        string CustomerId { get; }
        string InvoiceNo { get; }
        Nullable<System.DateTime> InvoiceDate { get; }
        Nullable<int> Qty { get; }
        Nullable<double> SubTotal { get; }
        Nullable<double> Discount { get; }
        Nullable<double> NetTotal { get; }
        string Terms { get; }

        virtual Customer Customer { get; }
        virtual IStaff IStaff { get; }
        virtual ICollection<Payment> Payments { get; }
        virtual ICollection<SellingItem> SellingItem { get; }
    }
}
