using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IItemSubCategory : IInventoryBaseEntity
    {
        string ItemCategoryId { get; }
        string ItemName { get; }
        string ItemType { get; }
        Nullable<int> IsPart { get; }

        virtual ICollection<BatchVsItems> BatchVsItems { get; }
        virtual ItemCategory ItemCategory { get; }
    }
}
