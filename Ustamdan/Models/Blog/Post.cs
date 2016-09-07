using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.Blog
{
    public enum PostType
    {
        Image,
        Video
    }
    public enum Language
    {
        English,
        Turkish
    }
    public class Post
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string PostContent { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public string AuthorId { get; set; }
        public PostType Type { get; set; }
        public bool IsPublished { get; set; }
        public bool IsCommentEnabled { get; set; }
        public bool IsSharingEnabled { get; set; }
        public Language Language { get; set; }

        [ForeignKey("AuthorId")]
        public virtual ApplicationUser Author { get; set; }
        public virtual List<Category> Categories { get; set; }
        public virtual List<Tag> Tags { get; set; }
    }
}