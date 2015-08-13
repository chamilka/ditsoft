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
    
    public partial class Batch
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Batch()
        {
            this.BatchVsItems = new HashSet<BatchVsItems>();
            this.SupplierPayment = new HashSet<SupplierPayment>();
        }
    
        public string Id { get; set; }
        public string SupplierId { get; set; }
        public string BatchName { get; set; }
        public Nullable<long> NoType { get; set; }
        public Nullable<double> TotalAmount { get; set; }
        public Nullable<sbyte> PaymentStatus { get; set; }
        public string Description { get; set; }
        public string InsertUser { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Remark { get; set; }
        public Nullable<sbyte> Status { get; set; }
    
        public virtual Supplier Supplier { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BatchVsItems> BatchVsItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SupplierPayment> SupplierPayment { get; set; }
    }
}
