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
    
    public partial class License
    {
        public string Id { get; set; }
        public string LicenseNumber { get; set; }
        public string ValidityPeriod { get; set; }
        public string Class { get; set; }
        public string OwnerName { get; set; }
        public Nullable<float> UnladenWeight { get; set; }
        public Nullable<int> Seats { get; set; }
        public Nullable<float> AnnualFee { get; set; }
        public Nullable<float> Arrears { get; set; }
        public Nullable<float> EnvControlLevy { get; set; }
        public Nullable<float> Total { get; set; }
        public Nullable<System.DateTime> ValidFrom { get; set; }
        public Nullable<System.DateTime> ValidTo { get; set; }
        public Nullable<System.DateTime> IssueDate { get; set; }
        public string Province { get; set; }
        public string EmissionTestNumber { get; set; }
        public byte[] EmissionTestImage { get; set; }
        public byte[] LicenseImage { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string VehicleId { get; set; }
    
        public virtual Vehicle Vehicle { get; set; }
    }
}