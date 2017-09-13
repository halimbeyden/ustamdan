using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.Blog
{
    public class PostLog
    {
        public int Id { get; set; }
        public string Ip { get; set; }
        public string UserAgent { get; set; }
        public string Description { get; set; }
        public DateTime Date { get; set; }
        public float ElapsedTime { get; set; }
        public int? PostId { get; set; }

        [ForeignKey("PostId")]
        public virtual Post Post { get; set; }

        public PostLog()
        {

        }
        public PostLog(int postid,string ip,string useragent,string description)
        {
            Ip = ip;
            UserAgent = useragent;
            Description = description;
            PostId = postid;
            Date = DateTime.Now;
        }
    }
}