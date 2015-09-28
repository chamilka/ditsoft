using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IBatchVsItems : IInventoryBaseEntity
    {
        string ID { get; }
        string BATCH_ID { get; }
        string ITEM_CATEGORY_ID { get; }
        string ITEM_SUB_CATEGORY_ID { get; }
        string MANUFACTURER { get; }
        string COUNTRY { get; }
        string MODEL { get; }
        Nullable<int> QTY { get; }
        string UNIT { get; }
        Nullable<double> UNIT_COST { get; }
        Nullable<double> UNIT_PRICE { get; }
        string TYPE { get; }
        string DEFECTS { get; }
        string WARRANTY_PERIOD { get; }
        string batch_vs_items_ID { get; }

        virtual Batch batch { get; }
        virtual ICollection<BatchVsItemsHasOrder> BatchVsItemsHasOrder { get; }
        virtual ItemCategory ItemCategory { get; }
        virtual ItemSubCategory ItemSubCategory { get; }
        virtual ICollection<SellingItem> SellingItem { get; }
        virtual ICollection<ItemImage> ItemImage { get; }
    }
    }
}
