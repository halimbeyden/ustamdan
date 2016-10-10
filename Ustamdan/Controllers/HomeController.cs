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
            var model = new HomeViewModel();
            using (var db = new ApplicationDbContext())
            {
                model.Posts = db.Posts.OrderByDescending(x => x.DateCreated).Take(4).ToList().Select(x => new PostViewModel(x)).ToList();
            }
            return View(model);
        }
        public ActionResult Blog(int? page)
        {
            page = page ?? 1;
            List<Post> posts;
            using (var db = new ApplicationDbContext())
            {
                posts = db.Posts.OrderByDescending(x => x.DateCreated).ToList();
            }
            return View(posts.ToPagedList(page.Value, 10));
        }
        public ActionResult Post(int id)
        {
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
                    .OrderByDescending(x => x.DateCreated).Take(4)
                    .ToList()
                    .Select(x => new PostViewModel(x));

                Random rand = new Random();
                ViewBag.RelatedPosts = db.Posts.Include("Categories")
                    .Include("Tags").ToList()
                    .OrderBy(c => rand.Next()).Take(4)
                    .ToList()
                    .Select(x => new PostViewModel(x));
            }
            return View(model);
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}