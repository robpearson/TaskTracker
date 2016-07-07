using System.Collections.Generic;

namespace TaskTracker.Controllers.Repositories
{
    public interface IResourceRepository<T>
    {
        T Find(int id);
        List<T> GetAll();
        T Add(T resource);
        T Update(T resource);
        void Remove(T resource);
    }
}
