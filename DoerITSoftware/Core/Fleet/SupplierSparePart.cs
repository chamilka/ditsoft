using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface SupplierSparePart
    {
        public string SupplierId { get; }
        public string SparePartId { get; }
        public Nullable<int> Quantity { get; }
        public byte[] Invoice { get; }
        public Nullable<sbyte> Status { get; }
        public virtual SparePart SparePart { get; }
        public virtual Supplier Supplier { get; }
    }
}
