using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Driver:BaseEntity
    {
        public string FullName { get; }
        public string FirstName { get; }
        public string LastName { get; }
        public string Address { get; }
        public string Telephone { get; }
        public string Mobile1 { get; }
        public string Mobile2 { get; }
        public byte[] Image { get; }
        public Nullable<System.DateTime> LicenseIssuedDate { get; }
        public Nullable<System.DateTime> LicenseExpiryDate { get; }
        public string JobType { get; }
        public Nullable<sbyte> Status { get; }
        public virtual ICollection<Drive> Drive { get; }
    }
}
