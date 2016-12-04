using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.Blog
{
    public class PostMedia
    {
        public int Id { get; set; }
        public string MediaUrl { get; set; }
        public PostType Type { get; set; }
        public string Description { get; set; }
        public PostMedia()
        {

        }
        public PostMedia(string mediaUrl,PostType type)
        {
            MediaUrl = mediaUrl;
            Type = type;
        }
    }
}