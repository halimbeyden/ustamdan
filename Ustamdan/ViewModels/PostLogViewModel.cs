using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ustamdan.Models;
using Ustamdan.Models.Blog;

namespace Ustamdan.ViewModels
{
    public class PostLogViewModel
    {
        public List<Tuple<PostViewModel,int>> MostViewed10Posts { get; set; }
        public List<Tuple<PostViewModel,DateTime, int>> MostViewedPostsAccordingToMonth { get; set; }

        public PostLogViewModel(ApplicationDbContext db)
        {
            MostViewed10Posts = db.PostLogs
                .Include("Posts")
                .GroupBy(x => x.PostId)
                .OrderByDescending(x => x.Count())
                .Take(10)
                .ToList()
                .Select(x => Tuple.Create(new PostViewModel(x.First().Post), x.Count())).ToList();

            MostViewedPostsAccordingToMonth = db.PostLogs
                .Include("Posts")
                .GroupBy(x=> new {Year = x.Date.Year,Month = x.Date.Month,Post = x.PostId})
                .ToList()
                .Select(x=>Tuple.Create(new PostViewModel(x.First().Post),new DateTime(x.Key.Year,x.Key.Month,1),x.Count()))
                .ToList();
        }
        
    }
}