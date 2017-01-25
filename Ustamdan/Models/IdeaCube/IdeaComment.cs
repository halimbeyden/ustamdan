using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.IdeaCube
{
    public class IdeaComment
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public int? IdeaId { get; set; }
        public int? ParentId { get; set; }
        public string CreatedBy { get; set; }
        public bool Is_Deleted  { get; set; }
        public DateTime CreationDate { get; set; }

        [ForeignKey("CreatedBy")]
        public virtual ApplicationUser User { get; set; }
        [ForeignKey("ParentId")]
        public virtual IdeaComment Parent { get; set; }
        [ForeignKey("IdeaId")]
        public virtual Idea Idea { get; set; }

    }
}