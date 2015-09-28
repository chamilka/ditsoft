using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IOrder : IInventoryBaseEntity
    {
        string CustomerId { get; }
        string OrderNo { get; }
        Nullable<System.DateTime> OrderDate { get; }
        Nullable<int> Qty { get; }
        Nullable<sbyte> OrderStatus { get; }

        virtual ICollection<BatchVsItemsHasOrder> BatchVsItemsHasOrder { get; }
        virtual Customer Customer { get; }
    }
}
