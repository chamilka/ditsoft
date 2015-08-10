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
    
    public partial class batch_vs_items
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public batch_vs_items()
        {
            this.selling_item = new HashSet<selling_item>();
            this.item_image = new HashSet<item_image>();
            this.orders = new HashSet<order>();
        }
    
        public string ID { get; set; }
        public string BATCH_ID { get; set; }
        public string ITEM_CATEGORY_ID { get; set; }
        public string MANUFACTURER { get; set; }
        public string COUNTRY { get; set; }
        public string MODEL { get; set; }
        public Nullable<int> QTY { get; set; }
        public string UNIT { get; set; }
        public Nullable<double> UNIT_COST { get; set; }
        public Nullable<double> UNIT_PRICE { get; set; }
        public string TYPE { get; set; }
        public string DEFECTS { get; set; }
        public string DESCRIPTION { get; set; }
        public string WARRANTY_PERIOD { get; set; }
        public string INSERT_USER { get; set; }
        public string UPDATE_USER { get; set; }
        public Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        public Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        public string REMARK { get; set; }
        public Nullable<sbyte> STATUS { get; set; }
    
        public virtual batch batch { get; set; }
        public virtual item_category item_category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<selling_item> selling_item { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<item_image> item_image { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<order> orders { get; set; }
    }
}
