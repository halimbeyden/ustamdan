using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.Blog
{
    public enum PostStatus
    {
        Draft,
        Published,
        Deleted
    }
    public enum PostType
    {
        Image,
        Video
    }
    public enum Language
    {
        [StringValue("en")]
        English,
        [StringValue("tr")]
        Turkish

    }
    /// <summary>
    /// This attribute is used to represent a string value
    /// for a value in an enum.
    /// </summary>
    public class StringValueAttribute : Attribute
    {

        #region Properties

        /// <summary>
        /// Holds the stringvalue for a value in an enum.
        /// </summary>
        public string StringValue { get; protected set; }

        #endregion

        #region Constructor

        /// <summary>
        /// Constructor used to init a StringValue Attribute
        /// </summary>
        /// <param name="value"></param>
        public StringValueAttribute(string value)
        {
            this.StringValue = value;
        }

        #endregion

    }
    public class Post
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string PostContent { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public string MediaURL { get; set; }
        public string AuthorId { get; set; }
        public PostType Type { get; set; }
        public bool IsPublished { get; set; }
        public bool IsCommentEnabled { get; set; }
        public bool IsSharingEnabled { get; set; }
        public string Language { get; set; }
        public PostStatus Status { get; set; }
        public bool HasLocation { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public int? AreaId { get; set; }


        [ForeignKey("AuthorId")]
        public virtual ApplicationUser Author { get; set; }

        [ForeignKey("AreaId")]
        public virtual Area Area { get; set; }
        public virtual List<Category> Categories { get; set; }
        public virtual List<Tag> Tags { get; set; }
    }
}