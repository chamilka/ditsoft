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
    using System;
    using System.Collections.Generic;
    
    public partial class vrs_service_task
    {
        public vrs_service_task()
        {
            this.vrs_service = new HashSet<vrs_service>();
            this.vrs_spare_part = new HashSet<vrs_spare_part>();
        }
    
        public string ID { get; set; }
        public string NAME { get; set; }
        public string DESCRIPTION { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
        public string INSERT_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
    
        public virtual ICollection<vrs_service> vrs_service { get; set; }
        public virtual ICollection<vrs_spare_part> vrs_spare_part { get; set; }
    }
}
