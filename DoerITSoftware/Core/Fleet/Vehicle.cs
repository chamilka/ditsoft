using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Vehicle:BaseEntity
    {
        public string RegistrationNumber { get; }
        public string Make { get; }
        public string Model { get; }
        public string FuelType { get; }
        public string YearManufacture { get; }
        public string Description { get; }
        public virtual ICollection<Drive> Drive { get; }
        public virtual ICollection<Expense> Expense { get; }
        public virtual ICollection<Fuel> Fuel { get; }
        public virtual ICollection<Insurance> Insurance { get; }
        public virtual ICollection<License> License { get; }
        public virtual ICollection<Repair> Repair { get; }
        public virtual ICollection<VehicleImage> VehicleImage { get; }
        public virtual ICollection<VehicleTire> VehicleTire { get; }
    }
}
