using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Drive:BaseEntity
    {
        public Nullable<System.DateTime> StartDateTime { get; }
        public Nullable<float> StartOdometer { get; }
        public Nullable<System.DateTime> EndDateTime { get; }
        public Nullable<float> EndOdometer { get; }
        public string From { get; }
        public string To { get; }
        public string IsSheduled { get; }
        public Nullable<sbyte> Status { get; }
        public string VehicleId { get; }
        public string DriverId { get; }
    }
}
