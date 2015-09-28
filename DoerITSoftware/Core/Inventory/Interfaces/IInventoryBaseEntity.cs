using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DoerITSoftware.Core.Inventory.Interfaces
{
    interface IInventoryBaseEntity
    {
         string ID { get; }

         string INSERT_USER { get; }
         string UPDATE_USER { get; }
         Nullable<System.DateTime> INSERT_DATE_TIME { get; }
         Nullable<System.DateTime> UPDATE_DATE_TIME { get; }
         string DESCRIPTION { get; } 
         string REMARK { get; }
         Nullable<sbyte> STATUS { get; }
         sbyte IS_DELETED { get; }
    }
}
