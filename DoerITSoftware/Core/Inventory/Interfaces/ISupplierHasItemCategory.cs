using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface ISupplierHasItemCategory : IInventoryBaseEntity
    {
       string SupplierId { get; }
       string ItemCategoryId { get; }
 
       virtual ItemCategory ItemCategory { get; }
       virtual Supplier Supplier { get; }




    }
}
