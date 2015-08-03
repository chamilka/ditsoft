using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DoerITSoftware.Core.Fleet.Service
{
    interface GenericService<T,K>
    {
        protected List<T> findAll();
        protected List<T> findAllEnabled();
        protected List<T> findAllDisabled();
        protected T findById(K id);
        protected byte save(T entity);
        protected byte update(T entity);
        protected byte delete(T entity);
        protected byte delteById(K id);
        protected byte save(T entity, K userId);
        protected byte update(T entity, K userId);
        protected byte delete(T entity, K userId);
    }
}
