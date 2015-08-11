//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoerITSoftware
{
    using System;
    using System.Collections.Generic;
    
    public partial class BatchVsItems
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public VsItems()
        {
            this.SellingItem = new HashSet<SellingItem>();
            this.ItemImage = new HashSet<ItemImage>();
            this.Orders = new HashSet<Order>();
        }
    
        public string Id { get; set; }
        public string BatchId { get; set; }
        public string ItemCategoryId { get; set; }
        public string Manufacturer { get; set; }
        public string Country { get; set; }
        public string Model { get; set; }
        public Nullable<int> Qty { get; set; }
        public string Unit { get; set; }
        public Nullable<double> UnitCost { get; set; }
        public Nullable<double> UnitPrice { get; set; }
        public string Type { get; set; }
        public string Defects { get; set; }
        public string Description { get; set; }
        public string WarrantyPeriod { get; set; }
        public string InsertUser { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Remark { get; set; }
        public Nullable<sbyte> Status { get; set; }
    
        public virtual Batch Batch { get; set; }
        public virtual ItemCategory ItemCategory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SellingItem> SellingItem { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ItemImage> ItemImage { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
