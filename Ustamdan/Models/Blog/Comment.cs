using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.Blog
{

    public enum CommentStatus
    {
        Pending,
        Approved,
        Rejected
    }
    public class Comment
    {
        public int Id { get; set; }
        public string UserFullName { get; set; }
        public string UserEmail { get; set; }
        public CommentStatus Status { get; set; }
        public string Content { get; set; }
        public DateTime PostedDate { get; set; }

       public int? PostId { get; set; }
       public string UserId { get; set; }

        //private int? ParentId { get; set; }

        [ForeignKey("PostId")]
        public virtual Post Post { get; set; }
        [ForeignKey("UserId")]
        public virtual ApplicationUser User { get; set; }
    }
}