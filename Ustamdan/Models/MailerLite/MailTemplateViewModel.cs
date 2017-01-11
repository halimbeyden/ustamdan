using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ustamdan.Models.Blog;

namespace Ustamdan.Models.MailerLite
{
    public class MailTemplateViewModel
    {
        public string Title { get; set; }
        public string Content { get; set; }
        public string Description { get; set; }
        public string Quote { get; set; }
        public string ContentPartTwo { get; set; }
        public string Link { get; set; }
        public string MediaLink { get; set; }
        public string Author { get; set; }
        public string Language { get; set; }
        public bool ForNewUsers { get; set; }

        public MailTemplateViewModel(Post post,bool fornewusers = false)
        {
            ForNewUsers = fornewusers;
            Title = post.Title;
            Content = post.PostContent;
            Description = post.Description;
            Quote = post.PostQuote;
            ContentPartTwo = post.PostContentPartTwo;
            Author = post.AuthorName;
            Language = post.Language;
            Link = "http://www.ustamdan.com/"
                    + post.Language + "/"
                    + (post.Language == "tr" ? "yazihane/" : "weekly/")
                    + (post.Id) + "/"
                    + (post.Title.Replace(" ", "-").Replace(":", ""));
            PostMedia pm = post.CarouselMedia.FirstOrDefault(x => x.Type == PostType.Image);
            if (pm != null)
                MediaLink = "http://www.ustamdan.com" + pm.MediaUrl;
        }

    }
}