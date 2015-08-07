using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface SupplierTire
    {
        public string SupplierId { get; }
        public string TireId { get; }
        public byte[] Invoice { get; }
        public Nullable<int> Quantity { get; }
        public Nullable<sbyte> Status { get; }
        public virtual Supplier Supplier { get; }
        public virtual Tire Tire { get; }
    }
}
