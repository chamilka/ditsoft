using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface ISupplier : IInventoryBaseEntity
    {
        string SUPPLIER_NAME { get; }
        string ADDRESS { get; }
        string TELEPHONE { get; }
        string EMAIL { get; }

        virtual ICollection<Batch> batches { get; }
        virtual ICollection<SupplierHasItemCategory> supplier_has_item_category { get; }
    }
}
