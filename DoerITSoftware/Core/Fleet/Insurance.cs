using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Insurance:BaseEntity
    {
        public string PolicyNumber { get; }
        public string Company { get; }
        public Nullable<System.DateTime> FromDate { get; }
        public Nullable<System.DateTime> ToDate { get; }
        public Nullable<System.DateTime> IssueDate { get; }
        public byte[] Image { get; }
        public virtual Vehicle Vehicle { get; }
    }
}
