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
    
    public partial class warranty_details
    {
        public string ID { get; set; }
        public string SELLING_ITEM_ID { get; set; }
        public string WARRANTY_NO { get; set; }
        public string WARRANTY_PERIOD { get; set; }
        public Nullable<System.DateTime> EXPIRATION_DATE { get; set; }
        public string INSERT_USER { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string REMARK { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
    
        public virtual selling_item selling_item { get; set; }
    }
}
