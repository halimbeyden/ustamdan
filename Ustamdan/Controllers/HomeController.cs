using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Ustamdan.Models;
using PagedList;
using Ustamdan.Models.Blog;
using Ustamdan.ViewModels;

namespace Ustamdan.Controllers
{
    [Localization("tr")]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            string lang = RouteData.Values["lang"].ToString();
            var model = new HomeViewModel();
            using (var db = new ApplicationDbContext())
            {
                model.Posts = db.Posts
                    .Where(x => x.IsPublished && x.Language == lang)
                    .OrderByDescending(x => x.DateCreated)
                    .Take(4).ToList()
                    .Select(x => new PostViewModel(x)).ToList();
            }
            return View(model);
        }
        public ActionResult Blog(int? page)
        {
            page = page ?? 1;
            List<PostViewModel> posts;
            string lang = RouteData.Values["lang"].ToString();
            using (var db = new ApplicationDbContext())
            {
                posts = db.Posts
                    .Include("Categories")
                    .Include("Tags")
                    .Where(x => x.IsPublished && x.Language == lang)
                    .OrderByDescending(x => x.DateCreated)
                    .ToList()
                    .Select(x => new PostViewModel(x))
                    .ToList();
                ViewBag.RecentPosts = db.Posts
                   .Include("Categories")
                   .Include("Tags")
                   .Where(x => x.IsPublished && x.Language == lang)
                   .OrderByDescending(x => x.DateCreated).Take(4)
                   .ToList()
                   .Select(x => new PostViewModel(x));
            }
            return View(posts.ToPagedList(page.Value, 10));
        }
        public ActionResult Post(int id)
        {
            string lang = RouteData.Values["lang"].ToString();
            PostViewModel model;
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(id);
                if (post == null)
                    return HttpNotFound();
                model = new PostViewModel(post);
                ViewBag.RecentPosts = db.Posts
                    .Include("Categories")
                    .Include("Tags")
                    .Where(x=> x.IsPublished && x.Language == lang)
                    .OrderByDescending(x => x.DateCreated).Take(4)
                    .ToList()
                    .Select(x => new PostViewModel(x));

                Random rand = new Random();
                ViewBag.RelatedPosts = db.Posts.Include("Categories")
                    .Include("Tags").ToList()
                    .Where(x=> x.IsPublished && x.Language == lang)
                    .OrderBy(c => rand.Next()).Take(4)
                    .ToList()
                    .Select(x => new PostViewModel(x));
            }
            return View(model);
        }
        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult Category()
        {
            return View();
        }
        public ActionResult Tag()
        {
            return View();
        }
        public ActionResult Search()
        {
            return View();
        }
    }
}