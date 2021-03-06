//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApplication1.Inventory.Model
{
    using DoerITSoftware.Core.Inventory.Interfaces;
    using System;
    using System.Collections.Generic;
    
    public partial class Order : IOrder
    {
        public Order()
        {
            this.BatchVsItemsHasOrder = new HashSet<BatchVsItemsHasOrder>();
        }
    
        public string Id { get; set; }
        public string CustomerId { get; set; }
        public string OrderNo { get; set; }
        public Nullable<System.DateTime> OrderDate { get; set; }
        public Nullable<int> Qty { get; set; }
        public Nullable<sbyte> OrderStatus { get; set; }
        public string InsertUser { get; set; }
        public string UpdateUser { get; set; }
        public Nullable<System.DateTime> InsertDateTime { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
        public string Description { get; set; }
        public string Remark { get; set; }
        public Nullable<sbyte> Status { get; set; }
        public sbyte IsDeleted { get; set; }
    
        public virtual ICollection<BatchVsItemsHasOrder> BatchVsItemsHasOrder { get; set; }
        public virtual Customer Customer { get; set; }
    }
}
