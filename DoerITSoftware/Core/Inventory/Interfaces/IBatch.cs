using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IBatch : IInventoryBaseEntity
    {
        string SUPPLIER_ID { get; }
        string BATCH_NAME { get; }
        Nullable<long> NO_TYPE { get; }
        Nullable<double> TOTAL_AMOUNT { get; }
        Nullable<sbyte> PAYMENT_STATUS { get; }
    
        virtual Supplier Supplier { get; }
        virtual ICollection<BatchVsItems> batch_vs_items { get; }
        virtual ICollection<SupplierPayment> supplier_payment { get; }
    }
}
