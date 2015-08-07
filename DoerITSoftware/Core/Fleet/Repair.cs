using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Repair:BaseEntity
    {
        public Nullable<System.DateTime> DateTime { get; }
        public string GarageName { get; }
        public string RepairType { get; }
        public string Description { get; }
        public byte[] InvoiceImage { get; }
        public Nullable<sbyte> Status { get; }
        public string VehicleId { get; }
        public virtual Vehicle Vehicle { get; }
        public virtual ICollection<SparePart> SparePart { get; }
    }
}
