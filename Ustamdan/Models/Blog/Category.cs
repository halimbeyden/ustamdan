using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.Blog
{
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public virtual List<Post> Posts { get; set; }
        public Category()
        {

        }
        public Category(string name)
        {
            Name = name;
        }
    }
}