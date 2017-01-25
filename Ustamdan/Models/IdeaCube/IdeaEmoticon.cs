using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.IdeaCube
{
    public enum EmotionType
    {
        Hate = -2,
        Unlike = -1,
        Like = 1,
        Love = 2,
    }
    public class IdeaEmoticon
    {
        public int Id { get; set; }
        public EmotionType Type { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }

        [ForeignKey("CreatedBy")]
        public virtual ApplicationUser User { get; set; }
    }
}