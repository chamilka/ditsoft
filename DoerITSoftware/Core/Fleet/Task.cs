using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Task
    {
        public string Name { get; }
        public string Description { get; }
        public Nullable<sbyte> Status { get; }
        public virtual ICollection<SparePart> SparePart { get; }
    }
}
