//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApplication1.Fleet.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tire
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tire()
        {
            this.SupplierTire = new HashSet<SupplierTire>();
            this.VehicleTire = new HashSet<VehicleTire>();
        }
    
        public string Id { get; set; }
        public string Brand { get; set; }
        public Nullable<sbyte> RimSize { get; set; }
        public string SizeCode { get; set; }
        public string ManufactureDateCode { get; set; }
        public string Type { get; set; }
        public string Condition { get; set; }
        public Nullable<System.DateTime> InsertDatetime { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> UpdateDatetime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string Remark { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SupplierTire> SupplierTire { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VehicleTire> VehicleTire { get; set; }
    }
}
