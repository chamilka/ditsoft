﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoerITSoftware
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class vehicledbEntities : DbContext
    {
        public vehicledbEntities()
            : base("name=vehicledbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<vrs_drive> vrs_drive { get; set; }
        public DbSet<vrs_driver> vrs_driver { get; set; }
        public DbSet<vrs_expense> vrs_expense { get; set; }
        public DbSet<vrs_fuel> vrs_fuel { get; set; }
        public DbSet<vrs_insurance> vrs_insurance { get; set; }
        public DbSet<vrs_license> vrs_license { get; set; }
        public DbSet<vrs_place> vrs_place { get; set; }
        public DbSet<vrs_repair> vrs_repair { get; set; }
        public DbSet<vrs_service> vrs_service { get; set; }
        public DbSet<vrs_service_task> vrs_service_task { get; set; }
        public DbSet<vrs_spare_part> vrs_spare_part { get; set; }
        public DbSet<vrs_supplier> vrs_supplier { get; set; }
        public DbSet<vrs_supplier_has_vrs_spare_part> vrs_supplier_has_vrs_spare_part { get; set; }
        public DbSet<vrs_supplier_has_vrs_tire> vrs_supplier_has_vrs_tire { get; set; }
        public DbSet<vrs_tire> vrs_tire { get; set; }
        public DbSet<vrs_tire_has_vrs_vehicle> vrs_tire_has_vrs_vehicle { get; set; }
        public DbSet<vrs_vehicle> vrs_vehicle { get; set; }
    }
}
