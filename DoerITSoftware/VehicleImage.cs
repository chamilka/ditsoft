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
    
    public partial class VehicleImage
    {
        public string Id { get; set; }
        public byte[] Image { get; set; }
        public string Side { get; set; }
        public Nullable<System.DateTime> InsertDatetime { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> UpdateDatetime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string Remark { get; set; }
        public string VehicleId { get; set; }
    
        public virtual Vehicle Vehicle { get; set; }
    }
}
