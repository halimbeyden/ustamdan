using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Ustamdan.Models;
using PagedList;
using Ustamdan.Models.Blog;

namespace Ustamdan.Controllers
{
    [Localization("tr")]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (var db = new ApplicationDbContext())
            {
                var posts = db.Posts.OrderByDescending(x => x.DateCreated).Take(4);
            }
            return View();
        }
        public ActionResult Blog(int? page)
        {
            page = page ?? 1;
            List<Post> posts;
            using (var db = new ApplicationDbContext())
            {
                posts = db.Posts.OrderByDescending(x => x.DateCreated).ToList();
            }
            return View(posts.ToPagedList(page.Value,10));
        }
        public ActionResult Post(int id)
        {
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(id);
                if (post == null)
                    return HttpNotFound();
                var recentPosts = db.Posts.OrderByDescending(x => x.DateCreated).Take(4);
                var cats = db.Posts.Where(x => post.Categories.Any(y => x.Categories.Contains(y)));
                var tags = db.Posts.Where(x => post.Tags.Any(y => x.Tags.Contains(y)));
                var list = cats.Union(tags).ToList() ;
                Random rand = new Random();
                var relatedPosts = list.OrderBy(c => rand.Next()).Take(4).ToList();
            }
            return View();
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