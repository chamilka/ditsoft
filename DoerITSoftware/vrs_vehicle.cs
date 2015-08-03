//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoerITSoftware
{
    using DoerITSoftware.Core.Fleet;
    using System;
    using System.Collections.Generic;
    
    public partial class vrs_vehicle:Vehicle
    {
        public vrs_vehicle()
        {
            this.vrs_drive = new HashSet<vrs_drive>();
            this.vrs_expense = new HashSet<vrs_expense>();
            this.vrs_fuel = new HashSet<vrs_fuel>();
            this.vrs_insurance = new HashSet<vrs_insurance>();
            this.vrs_license = new HashSet<vrs_license>();
            this.vrs_repair = new HashSet<vrs_repair>();
            this.vrs_service = new HashSet<vrs_service>();
            this.vrs_tire_has_vrs_vehicle = new HashSet<vrs_tire_has_vrs_vehicle>();
        }
    
        public string ID { get; set; }
        public string REGISTRATION_NUMBER { get; set; }
        public string CATEGORY { get; set; }
        public string TYPE { get; set; }
        public string MAKE { get; set; }
        public string MODEL { get; set; }
        public string FUEL_TYPE { get; set; }
        public string ENGINE_NUMBER { get; set; }
        public string CHASSIS_NUMBER { get; set; }
        public string YEAR_MANUFACTURE { get; set; }
        public string DATE_IMPORT { get; set; }
        public string DATE_REGISTER { get; set; }
        public byte[] REGISTRATION_CERTIFICATE { get; set; }
        public Nullable<sbyte> NUM_WHEELS { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
        public string INSERT_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string DESCRIPTION { get; set; }
    
        public virtual ICollection<vrs_drive> vrs_drive { get; set; }
        public virtual ICollection<vrs_expense> vrs_expense { get; set; }
        public virtual ICollection<vrs_fuel> vrs_fuel { get; set; }
        public virtual ICollection<vrs_insurance> vrs_insurance { get; set; }
        public virtual ICollection<vrs_license> vrs_license { get; set; }
        public virtual ICollection<vrs_repair> vrs_repair { get; set; }
        public virtual ICollection<vrs_service> vrs_service { get; set; }
        public virtual ICollection<vrs_tire_has_vrs_vehicle> vrs_tire_has_vrs_vehicle { get; set; }
    }
}
