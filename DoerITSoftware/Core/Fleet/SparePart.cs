using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface SparePart
    {
        public string PartNumber { get; }
        public string SerialNumber { get; }
        public string PartName { get; }
        public string Description { get; }
        public Nullable<sbyte> Status { get; }
        public Nullable<float> Price { get; }
        public string Unit { get; }
        public Nullable<float> Stock { get; }
        public virtual ICollection<SupplierSparePart> SupplierSparePart { get; }
        public virtual ICollection<Repair> Repair { get; }
        public virtual ICollection<Task> Task { get; }
    }
}
