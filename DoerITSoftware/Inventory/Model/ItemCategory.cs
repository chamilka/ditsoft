//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApplication1.Inventory.Model
{
    using DoerITSoftware.Core.Inventory.Interfaces;
    using System;
    using System.Collections.Generic;

    public partial class ItemCategory : IItemCategory
    {
        public ItemCategory()
        {
            this.BatchVsItems = new HashSet<BatchVsItems>();
            this.ItemSubCategory = new HashSet<ItemSubCategory>();
            this.SupplierHasItemCategory = new HashSet<SupplierHasItemCategory>();
        }
    
        public string Id { get; set; }
        public string ItemName { get; set; }
        public string ItemType { get; set; }
        public Nullable<int> IsPart { get; set; }
        public string InsertUser { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Description { get; set; }
        public string Remark { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public sbyte IsDeleted { get; set; }
    
        public virtual ICollection<BatchVsItems> BatchVsItems { get; set; }
        public virtual ICollection<ItemSubCategory> ItemSubCategory { get; set; }
        public virtual ICollection<SupplierHasItemCategory> SupplierHasItemCategory { get; set; }
    }
}
