using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface ISupplierPayment : IInventoryBaseEntity
    {
        string BATCH_ID { get; }
        Nullable<double> AMOUNT { get; }
        Nullable<System.DateTime> SUP_PAYMNT_DATE { get; }
        string METHOD { get; }
        string COMMENT { get; }
        Nullable<System.DateTime> CHEQUE_DATE { get; }

        virtual Batch batch { get; }
    }
}
