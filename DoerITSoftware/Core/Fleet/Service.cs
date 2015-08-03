using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Service
    {
        protected string IDTest { get; set; }
        protected string METER_READING { get; set; }
        protected Nullable<System.DateTime> DATE { get; set; }
        protected string NEXT_METER_READING { get; set; }
        protected Nullable<System.DateTime> NEXT_DATE { get; set; }
        protected string DESCRIPTION { get; set; }
        protected byte[] INVOICE_IMAGE { get; set; }
        protected Nullable<sbyte> STATUS { get; set; }
        protected string INSERT_USER { get; set; }
        protected Nullable<System.DateTime> INSERT_DATE_TIME { get; set; }
        protected string UPDATE_USER { get; set; }
        protected Nullable<System.DateTime> UPDATE_DATE_TIME { get; set; }
        protected string vrs_vehicle_ID { get; set; }
    }
}
