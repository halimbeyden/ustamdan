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
        public List<Tuple<PostViewModel,int,string>> MostViewed10Posts { get; set; }
        public List<Tuple<PostViewModel,DateTime, int>> MostViewedPostsAccordingToMonth { get; set; }

        private List<PostLog> AllPostLogs { get; set; }
        public List<Tuple<string,int>> UserAgents { get; set; }
        public List<Tuple<string, int>> Authors { get; set; }

        public List<Tuple<string,int,int>> MonthlyPostCounts { get; set; }

        public PostLogViewModel(ApplicationDbContext db)
        {
            AllPostLogs = db.PostLogs
                .Where(x => !x.UserAgent.Contains("http") && !x.UserAgent.Contains("bot")).ToList();
            MostViewed10Posts = AllPostLogs
                .GroupBy(x => x.PostId)
                .OrderByDescending(x => x.Count())
                .Take(10)
                .Select(x => Tuple.Create(new PostViewModel(x.First().Post), x.Count(),x.Sum(y=>y.ElapsedTime).ToString())).ToList();

            MostViewedPostsAccordingToMonth = AllPostLogs
                .GroupBy(x=> new {Year = x.Date.Year,Month = x.Date.Month,Post = x.PostId})
                .Select(x=>Tuple.Create(new PostViewModel(x.First().Post),new DateTime(x.Key.Year,x.Key.Month,1),x.Count()))
                .ToList();
            UserAgents = AllPostLogs.GroupBy(x => x.UserAgent).Select(x=>Tuple.Create(x.Key,x.Count())).ToList();
            Authors = AllPostLogs.GroupBy(x => x.Post.AuthorName).Select(x => Tuple.Create(x.Key,x.Count())).OrderBy(x=>x.Item2).ToList();
            MonthlyPostCounts = AllPostLogs
                .GroupBy(x=>new DateTime(x.Date.Year,x.Date.Month,1))
                .OrderBy(x=>x.Key)
                .Select(x=>
                    Tuple.Create(x.Key.ToString("MMMM yyyy"),
                                 x.Count(),
                                 x.Select(y=>y.Ip).Distinct().Count()))
                .ToList();
             //db.Database.SqlQuery<Contact>("Contact_Search @LastName, @FirstName")
        }
        
    }
}