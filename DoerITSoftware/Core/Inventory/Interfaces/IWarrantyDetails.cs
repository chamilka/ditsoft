using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IWarrantyDetails : IInventoryBaseEntity
    {
        string SellingItemId { get; }
        string WarrantyNo { get; }
        string WarrantyPeriod { get; }
        Nullable<System.DateTime> ExpirationDate { get; }
    
        virtual SellingItem SellingItem { get; }
    }
}
