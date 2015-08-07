using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Expense:BaseEntity
    {
        public Nullable<float> Amount { get; }
        public Nullable<System.DateTime> DateTime { get; }
        public string Description { get; }
        public virtual Vehicle Vehicle { get; }
    }
}
