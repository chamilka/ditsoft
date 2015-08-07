using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface VehicleTire
    {
        public string TireId { get; }
        public string VehicleId { get; }
        public Nullable<System.DateTime> DateTime { get; }
        public string Reason { get; }
        public string Wheel { get; }
        public Nullable<int> Milage { get; }
        public virtual Tire Tire { get; }
        public virtual Vehicle Vehicle { get; }
    }
}
