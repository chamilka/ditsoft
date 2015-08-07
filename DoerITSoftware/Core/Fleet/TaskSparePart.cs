using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface TaskSparePart
    {
        public string TaskId { get; }
        public string SparePartId { get; }
        public Nullable<sbyte> Status { get; }
    }
}
