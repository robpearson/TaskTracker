using System.Collections.Generic;

namespace TaskTracker.Models
{
    public class Task
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Project Project { get; set; } // The relationship seems more like Task to Project. This may evolve as time goes on.
        public IList<Tag> Tags { get; set; } 
    }
}