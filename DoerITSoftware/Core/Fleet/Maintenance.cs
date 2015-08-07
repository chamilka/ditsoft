using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Maintenance:BaseEntity
    {
        public string MeterReading { get; }
        public Nullable<System.DateTime> Date { get; }
        public string NextMeterReading { get; }
        public Nullable<System.DateTime> NextDate { get; }
        public string Description { get; }
        public byte[] InvoiceImage { get; }
        public Nullable<sbyte> Status { get; }
        public string VehicleId { get; }
    }
}
