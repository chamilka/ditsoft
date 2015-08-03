using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoerITSoftware.Core.Fleet
{
    interface Vehicle:BaseEntity
    {
        protected void setRegistrationNumber(string registrationNumber);
        protected void setCategory(string category);
        protected void setType(string type);
        protected void setMake(string make);
        protected void setModel(string model);
        protected void setFuelType(string fuelType);
        protected void setEngineNumber(string engineNumber);
        protected void setChassisNumber(string chassisNumber);
        protected void setYearManufacture(string yearManufacture);
        protected void setDateImport(string dateImport);
        protected void setDateRegistered(string dateRegistered);
        protected void setRegistrationCertificate(byte[] registrationCertificate);
        protected void setNumWheels(Nullable<sbyte> numWheels);
        protected void setDescription(string description);
        protected string getRegistrationNumber();
        protected string getCategory();
        protected string getType();
        protected string getMake();
        protected string getModel();
        protected string getFuelType();
        protected string getEngineNumber();
        protected string getChassisNumber();
        protected string getYearManufacture();
        protected string getDateImport();
        protected string getDateRegistered();
        protected byte[] getRegistrationCertificate();
        protected Nullable<sbyte> getNumWheels();
        protected string getDescription(string description);
    }
}
