//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoerITSoftware.Fleet.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class MaintenanceTask
    {
        public string MaintenanceId { get; set; }
        public string TaskId { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
    
        public virtual Maintenance Maintenance { get; set; }
        public virtual Task Task { get; set; }
    }
}
