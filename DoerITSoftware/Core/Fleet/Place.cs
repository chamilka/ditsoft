using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Place:BaseEntity
    {
        public string Id { get; }
        public Nullable<System.DateTime> ArrivalDateTime { get; }
        public Nullable<float> Odometer { get; }
        public Nullable<System.DateTime> DepartureDateTime { get; }
        public string JobDescription { get; }
        public Nullable<sbyte> Status { get; }
        public string DriveId { get; }
        public virtual Drive Drive { get; }
    }
}
