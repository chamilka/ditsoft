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
    
    public partial class Place
    {
        public string Id { get; set; }
        public Nullable<System.DateTime> ArrivalDateTime { get; set; }
        public Nullable<float> Odometer { get; set; }
        public Nullable<System.DateTime> DepartureDateTime { get; set; }
        public string JobDescription { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string DriveId { get; set; }
    
        public virtual Drive Drive { get; set; }
    }
}
