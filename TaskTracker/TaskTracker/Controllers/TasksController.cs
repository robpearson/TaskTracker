using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Web.Http;
using TaskTracker.Controllers.Repositories;
using TaskTracker.Models;

namespace TaskTracker.Controllers
{
    public class TasksController : ApiController
    {
        private readonly TasksRepository _repository = new TasksRepository(ConfigurationManager.ConnectionStrings["TaskTracker"].ConnectionString);

        // GET: api/Tasks
        public List<Task> Get()
        {
            return _repository.GetAll();
        }

        // GET: api/Tasks/5
        public Task Get(int id)
        {
            return _repository.Find(id);
        }

        // POST: api/Tasks
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Tasks/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Tasks/5
        public void Delete(int id)
        {
        }
    }
}
