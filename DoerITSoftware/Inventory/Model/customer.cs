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
    
    public partial class customer
    {
        public customer()
        {
            this.invoices = new HashSet<invoice>();
            this.orders = new HashSet<order>();
        }
    
        public string ID { get; set; }
        public string FNAME { get; set; }
        public string NNAME { get; set; }
        public string LNAME { get; set; }
        public string ADDRESS { get; set; }
        public string EMAIL { get; set; }
        public string TELEPHONE { get; set; }
        public string INSERT_USER { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string REMARK { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
        public sbyte IS_DELETED { get; set; }
    
        public virtual ICollection<invoice> invoices { get; set; }
        public virtual ICollection<order> orders { get; set; }
    }
}