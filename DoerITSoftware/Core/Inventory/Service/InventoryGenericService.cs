using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DoerITSoftware.Core.Inventory.Service
{
    interface InventoryGenericService<T,K>
    {
         List<T> findAll();
         List<T> findAllEnabled();
         List<T> findAllDisabled();
         T findById(K id);
         byte save(T entity);
         byte update(T entity);
         byte delete(T entity);
         byte delteById(K id);
         byte save(T entity, K userId);
         byte update(T entity, K userId);
         byte delete(T entity, K userId);
    }
}
