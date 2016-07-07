using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using Dapper;
using TaskTracker.Models;

namespace TaskTracker.Controllers.Repositories
{
    public class TasksRepository : IResourceRepository<Task>
    {
        private const string SqlStringFindTasks = "Select * FROM Tasks";
        private const string SqlStringFindTaskById = "Select * FROM Tasks WHERE Id = @Id ";

        private readonly string connectionString;

        public TasksRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Task Find(int id)
        {
            using (var db = new SqlConnection(connectionString))
            {
                return db.Query<Task>(SqlStringFindTaskById, new { Id = id }).SingleOrDefault();
            }
        }

        public List<Task> GetAll()
        {
            using (var db = new SqlConnection(connectionString))
            {
               return db.Query<Task>(SqlStringFindTasks).ToList();
            }
        }

        public Task Add(Task resource)
        {
            // TODO: Implement
            throw new NotImplementedException();
        }

        public Task Update(Task resource)
        {
            // TODO: Implement
            throw new NotImplementedException();
        }

        public void Remove(Task resource)
        {
            // TODO: Implement
            throw new NotImplementedException();
        }
    }
}