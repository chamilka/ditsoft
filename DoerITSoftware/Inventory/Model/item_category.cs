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
    
    public partial class item_category
    {
        public item_category()
        {
            this.batch_vs_items = new HashSet<batch_vs_items>();
            this.item_sub_category = new HashSet<item_sub_category>();
            this.supplier_has_item_category = new HashSet<supplier_has_item_category>();
        }
    
        public string ID { get; set; }
        public string ITEM_NAME { get; set; }
        public string ITEM_TYPE { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
        public string INSERT_USER { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string REMARK { get; set; }
        public Nullable<int> IS_PART { get; set; }
        public sbyte IS_DELETED { get; set; }
    
        public virtual ICollection<batch_vs_items> batch_vs_items { get; set; }
        public virtual ICollection<item_sub_category> item_sub_category { get; set; }
        public virtual ICollection<supplier_has_item_category> supplier_has_item_category { get; set; }
    }
}