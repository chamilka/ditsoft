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
    
    public partial class vrs_expense
    {
        public string ID { get; set; }
        public Nullable<float> AMOUNT { get; set; }
        public Nullable<System.DateTime> DATE_TIME { get; set; }
        public string DESCRIPTION { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
        public string INSERT_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string vrs_vehicle_ID { get; set; }
    
        public virtual vrs_vehicle vrs_vehicle { get; set; }
    }
}
