using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DoerITSoftware.Core.Fleet
{
    interface BaseEntity
    {
        protected void setId(string id);
        protected void setStatus(Nullable<sbyte> status);
        protected void setInsertUser(string insertUser);
        protected void setInsertDatetime(Nullable<System.DateTime> insertDatetime);
        protected void setUpdateUser(string updateUser);
        protected void setUpdateDateTime(Nullable<System.DateTime> updateDatetime);
        protected string getId();
        protected Nullable<sbyte> getStatus;
        protected string getInsertUser();
        protected Nullable<System.DateTime> getInsertDatetime();
        protected string getUpdateUser();
        protected Nullable<System.DateTime> getUpdateDateTime();
        protected string getDescription();
    }
}
