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
    
    public partial class Invsupplier
    {
        public Invsupplier()
        {
            this.Batches = new HashSet<Batch>();
            this.ItemCategory = new HashSet<ItemCategory>();
        }
    
        public string Id { get; set; }
        public string SupplierName { get; set; }
        public string Address { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public string InsertUser { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Remark { get; set; }
        public Nullable<sbyte> Status { get; set; }
    
        public virtual ICollection<Batch> Batches { get; set; }
        public virtual ICollection<ItemCategory> ItemCategory { get; set; }
    }
}
