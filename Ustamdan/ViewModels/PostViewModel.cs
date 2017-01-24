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
        public string AuthorName { get; set; }
        public string Author { get; set; }
        public string AuthorUsername { get; set; }
        public string Description { get; set; }
        public string PostContent { get; set; }
        public string PostQuote { get; set; }
        public string PostContentPartTwo { get; set; }
        public Language Language { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public DateTime? PublishDate { get; set; }
        public bool HasLocation { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public int[] Categories { get; set; }
        public string[] CategoryNames { get; set; }
        public int[] Tags { get; set; }
        public string[] TagNames { get; set; }
        public int? AreaId { get; set; }
        public string Area { get; set; }
        public List<PostMedia> PostMedia { get; set; }
        public PostViewModel()
        {

        }
        public PostViewModel(Post post)
        {
            this.Id = post.Id;
            this.Title = post.Title;
            this.Description = post.Description;
            this.PostContent = post.PostContent;
            this.PostQuote = post.PostQuote;
            this.PostContentPartTwo = post.PostContentPartTwo;
            this.AuthorName = post.AuthorName;
            this.Language = LanguageHelper.getEnumValue(post.Language);
            this.PostType = post.Type;
            this.PostStatus = post.Status;
            this.MediaURL = post.MediaURL;
            this.HasLocation = post.HasLocation;
            this.Latitude = post.Latitude;
            this.Longitude = post.Longitude;
            this.PublishDate = post.PublishDate;
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
                this.PostMedia = post.CarouselMedia.ToList();
                if (post.Author != null)
                {
                    this.Author = post.Author.Fullname;
                    this.AuthorUsername = post.Author.UserName;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        public DateTime getDate()
        {
            return PublishDate.HasValue ? PublishDate.Value : DateCreated;
        }
    }
}