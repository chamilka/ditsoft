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
    
    public partial class Invstaff
    {
        public Invstaff()
        {
            this.Invoices = new HashSet<Invoice>();
        }
    
        public string Id { get; set; }
        public string EmployeeNo { get; set; }
        public string StaffFname { get; set; }
        public string StaffMname { get; set; }
        public string StaffLname { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
        public string Telephone { get; set; }
        public string Telephone2 { get; set; }
        public string Email { get; set; }
        public string InsertUser { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Remarks { get; set; }
        public Nullable<sbyte> Status { get; set; }
    
        public virtual ICollection<Invoice> Invoices { get; set; }
    }
}
