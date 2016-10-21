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
        public string AuthorUsername { get; set; }
        public string Body { get; set; }
        public Language Language { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public bool HasLocation { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public int[] Categories { get; set; }
        public string[] CategoryNames { get; set; }
        public int[] Tags { get; set; }
        public string[] TagNames { get; set; }
        public int? AreaId { get; set; }
        public string Area { get; set; }

        public PostViewModel()
        {

        }
        public PostViewModel(Post post)
        {
            this.Id = post.Id;
            this.Title = post.Title;
            this.Description = post.Description;
            this.Body = post.PostContent;
            this.Language = LanguageHelper.getEnumValue(post.Language);
            this.PostType = post.Type;
            this.PostStatus = post.Status;
            this.MediaURL = post.MediaURL;
            this.HasLocation = post.HasLocation;
            this.Latitude = post.Latitude;
            this.Longitude = post.Longitude;
            try
            {
                this.Area = post.AreaId.HasValue?post.Area.Name:"";
                this.AreaId = post.AreaId;
                this.Categories = post.Categories.Select(x => x.Id).ToArray();
                this.CategoryNames = post.Categories.Select(x => x.Name).ToArray();
                this.Tags = post.Tags.Select(x => x.Id).ToArray();
                this.TagNames = post.Tags.Select(x => x.Name).ToArray();
                this.DateCreated = post.DateCreated;
                this.DateModified = post.DateModified;
                this.Author = post.Author.Fullname;
                this.AuthorUsername = post.Author.UserName;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}