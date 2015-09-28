using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.Inventory.Model;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface ISellingItem : IInventoryBaseEntity
    {
        string BatchVsItemsId { get; }
        string InvoiceId { get; }
        string QrCode { get; }
        string SerialNo { get; }
        Nullable<double> Price { get; }
        Nullable<double> Discount { get; }
        Nullable<double> SoldPrice { get; }
        Nullable<int> ReturnStatus { get; }
        string ReturnComment { get; }
    
        virtual BatchVsItems BatchVsItems { get; }
        virtual Invoice Invoice { get; }
        virtual ICollection<ReturnedDetails> ReturnedDetails { get; }
        virtual ICollection<WarrantyDetails> WarrantyDetails { get; }
    }
}
