using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Tire
    {
        public string Brand { get; }
        public Nullable<sbyte> RimSize { get; }
        public string SizeCode { get; }
        public string ManufactureDateCode { get; }
        public string Type { get; }
        public string Condition { get; }
        public Nullable<sbyte> Status { get; }
        public virtual ICollection<SupplierTire> SupplierTire { get; }
        public virtual ICollection<VehicleTire> VehicleTire { get; }
    }
}
