using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DoerITSoftware.Core.Fleet
{
    interface BaseEntity
    {
         void setId(string id);
         void setStatus(Nullable<sbyte> status);
         void setInsertUser(string insertUser);
         void setInsertDatetime(Nullable<System.DateTime> insertDatetime);
         void setUpdateUser(string updateUser);
         void setUpdateDateTime(Nullable<System.DateTime> updateDatetime);
         string getId();
         Nullable<sbyte> getStatus;
         string getInsertUser();
         Nullable<System.DateTime> getInsertDatetime();
         string getUpdateUser();
         Nullable<System.DateTime> getUpdateDateTime();
         string getDescription();
    }
}
