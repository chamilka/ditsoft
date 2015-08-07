using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface MaintenanceTask:BaseEntity
    {
        public string MaintenanceId { get; }
        public string TaskId { get; }
        public Nullable<sbyte> Status { get; }
    }
}
