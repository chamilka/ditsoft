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
    
    public partial class SupplierSparePart
    {
        public string SupplierId { get; set; }
        public string SparePartId { get; set; }
        public Nullable<int> Quantity { get; set; }
        public byte[] Invoice { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public string InsertUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
    
        public virtual SparePart SparePart { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
