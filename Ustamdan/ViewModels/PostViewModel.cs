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
        public string MediaURL { get; set; }
        public PostType PostType { get; set; }
        public PostStatus PostStatus { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
        public string Body { get; set; }
        public Language Language { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public int[] Categories { get; set; }
        public int[] Tags { get; set; }
        public string[] TagNames { get; set; }

        public PostViewModel()
        {

        }
        public PostViewModel(Post post)
        {
            this.Id = post.Id;
            this.Title = post.Title;
            this.Description = post.Description;
            this.Body = post.PostContent;
            this.Language = post.Language;
            this.PostType = post.Type;
            this.PostStatus = post.Status;
            this.MediaURL = post.MediaURL;
            try
            {
                this.Categories = post.Categories.Select(x => x.Id).ToArray();
                this.Tags = post.Tags.Select(x => x.Id).ToArray();
                this.TagNames = post.Tags.Select(x => x.Name).ToArray();
                this.DateCreated = post.DateCreated;
                this.DateModified = post.DateModified;
                this.Author = post.Author.UserName;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}