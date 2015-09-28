using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IPayment : IInventoryBaseEntity
    {
        string InvoiceId { get; }
        string PaymentNo { get; }
        Nullable<double> Amount { get; }
        Nullable<System.DateTime> PaymentDate { get; }
        string Method { get; }
        Nullable<sbyte> PaymentStatus { get; }

        virtual Invoice Invoice { get; }
    }
}
