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
    
    public partial class Vehicle
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Vehicle()
        {
            this.Drive = new HashSet<Drive>();
            this.Expense = new HashSet<Expense>();
            this.Fuel = new HashSet<Fuel>();
            this.Insurance = new HashSet<Insurance>();
            this.License = new HashSet<License>();
            this.Maintenance = new HashSet<Maintenance>();
            this.Repair = new HashSet<Repair>();
            this.VehicleTire = new HashSet<VehicleTire>();
            this.VehicleImage = new HashSet<VehicleImage>();
        }
    
        public string Id { get; set; }
        public string RegistrationNumber { get; set; }
        public string Category { get; set; }
        public string Type { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public string FuelType { get; set; }
        public string EngineNumber { get; set; }
        public string ChassisNumber { get; set; }
        public string YearManufacture { get; set; }
        public string DateImport { get; set; }
        public string DateRegister { get; set; }
        public byte[] RegistrationCertificate { get; set; }
        public Nullable<sbyte> NumWheels { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Drive> Drive { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Expense> Expense { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Fuel> Fuel { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Insurance> Insurance { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<License> License { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Maintenance> Maintenance { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Repair> Repair { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VehicleTire> VehicleTire { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VehicleImage> VehicleImage { get; set; }
    }
}
