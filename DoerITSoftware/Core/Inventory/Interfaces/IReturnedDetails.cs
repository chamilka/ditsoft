using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IReturnedDetails : IInventoryBaseEntity
    {
        string ItemId { get; }
        string ReturnNo { get; }
        Nullable<System.DateTime> ReturnedDate { get; }
    
        virtual ICollection<ItemImage> ItemImage { get; }
        virtual SellingItem SellingItem { get; }
    }
}
