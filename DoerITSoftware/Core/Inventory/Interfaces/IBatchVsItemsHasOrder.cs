using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IBatchVsItemsHasOrder : IInventoryBaseEntity
    {
        string BatchVsItemsId { get; }
        string OrderId { get; }
    
        virtual BatchVsItems BatchVsItems { get; }
        virtual Order Order { get; }
    }
}
