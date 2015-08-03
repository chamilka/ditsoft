using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet.Service
{
    interface VehicleService:GenericService<Vehicle,string>
    {
        protected Vehicle findByRegistrationNumber(string registrationNumber);
    }
}
