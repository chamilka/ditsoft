using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Fuel:BaseEntity
    {
        public string Id { get; }
        public Nullable<float> Amount { get; }
        public Nullable<float> Volume { get; }
        public Nullable<float> Odometer { get; }
        public Nullable<System.DateTime> DateTime { get; }
        public string Description { get; }
        public Nullable<sbyte> Status { get; }
        public string VehicleId { get; }

        public virtual Vehicle Vehicle { get; }
    }
}
