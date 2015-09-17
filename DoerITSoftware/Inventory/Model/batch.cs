//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApplication1.Inventory.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class batch
    {
        public batch()
        {
            this.batch_vs_items = new HashSet<batch_vs_items>();
            this.supplier_payment = new HashSet<supplier_payment>();
        }
    
        public string ID { get; set; }
        public string SUPPLIER_ID { get; set; }
        public string BATCH_NAME { get; set; }
        public Nullable<long> NO_TYPE { get; set; }
        public Nullable<double> TOTAL_AMOUNT { get; set; }
        public Nullable<sbyte> PAYMENT_STATUS { get; set; }
        public string DESCRIPTION { get; set; }
        public string INSERT_USER { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string REMARK { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
    
        public virtual supplier supplier { get; set; }
        public virtual ICollection<batch_vs_items> batch_vs_items { get; set; }
        public virtual ICollection<supplier_payment> supplier_payment { get; set; }
    }
}
