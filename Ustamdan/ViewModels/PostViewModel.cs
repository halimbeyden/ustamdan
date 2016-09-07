using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ustamdan.Models.Blog;

namespace Ustamdan.ViewModels
{
    public class PostViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Body { get; set; }
        public Language Language { get; set; }
        public Category[] Categories { get; set; }
        public Tag[] Tags { get; set; }

        public PostViewModel(Post post)
        {
            this.Id = post.Id;
            this.Title = post.Title;
            this.Description = post.Description;
            this.Body = post.PostContent;
            this.Language = post.Language;
            this.Categories = post.Categories.ToArray();
            this.Tags = post.Tags.ToArray();
        }
    }
}