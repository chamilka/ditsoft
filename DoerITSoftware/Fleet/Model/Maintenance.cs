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
    
    public partial class Maintenance
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Maintenance()
        {
            this.MaintenanceTask = new HashSet<MaintenanceTask>();
        }
    
        public string Id { get; set; }
        public string MeterReading { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string NextMeterReading { get; set; }
        public Nullable<System.DateTime> NextDate { get; set; }
        public string Description { get; set; }
        public byte[] InvoiceImage { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string VehicleId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MaintenanceTask> MaintenanceTask { get; set; }
        public virtual Vehicle Vehicle { get; set; }
    }
}
