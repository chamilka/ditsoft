using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IItemImage : IInventoryBaseEntity
    {
       string ReturnedDetailsId { get; }
       string BatchVsItemsId { get; }
       string ItemfileName { get; }
       string FileType { get; }
       Nullable<int> FileSize { get; }
       byte[] FileContent { get; }
       Nullable<bool> Save { get; }

       virtual BatchVsItems BatchVsItems { get; }
       virtual ReturnedDetails ReturnedDetails { get; }
    }


}
