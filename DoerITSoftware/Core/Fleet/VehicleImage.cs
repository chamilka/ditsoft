using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface VehicleImage
    {
        public byte[] Image { get; }
        public string Side { get; }
        public string Remark { get; }
        public string VehicleId { get; }
        public virtual Vehicle Vehicle { get; }
    }
}
