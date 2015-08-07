using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Supplier
    {
        public string Name { get; }
        public string Address { get; }
        public string Telephone1 { get; }
        public string Telephone2 { get; }
        public Nullable<sbyte> Status { get; }
        public string Remark { get; }
        public virtual ICollection<SupplierSparePart> SupplierSparePart { get; }
        public virtual ICollection<SupplierTire> SupplierTire { get; }
    }
}
