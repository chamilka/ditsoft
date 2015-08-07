using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface License:BaseEntity
    {
        public string LicenseNumber { get; }
        public string ValidityPeriod { get; }
        public string Class { get; }
        public Nullable<float> Total { get; }
        public Nullable<System.DateTime> ValidFrom { get; }
        public Nullable<System.DateTime> ValidTo { get; }
        public Nullable<System.DateTime> IssueDate { get; }
        public string Province { get; }
        public string VehicleId { get; }
        public virtual Vehicle Vehicle { get; }
    }
}
