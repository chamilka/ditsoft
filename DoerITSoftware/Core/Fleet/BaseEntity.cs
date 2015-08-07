using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DoerITSoftware.Core.Fleet
{
    interface BaseEntity
    {
        public Nullable<sbyte> Status { get; }
        public string InsertUser { get; }
        public Nullable<System.DateTime> InsertDateTime { get; }
        public string UpdateUser { get; }
        public Nullable<System.DateTime> UpdateDateTime { get; }
    }
}
