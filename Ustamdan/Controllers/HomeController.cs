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
                ViewBag.Areas = db.Areas.Where(x=>x.Language == lang).OrderByDescending(x=>x.Posts.Count).ToList();
                ViewBag.Categories = db.Categories.Where(x => x.Language == lang).OrderByDescending(x => x.Posts.Count).ToList();
            }
            ViewBag.AllPosts = posts.Where(x=>x.HasLocation).ToList();
            return View(posts.ToPagedList(page.Value, 9));
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
                    .Where(x => x.IsPublished && x.Language == lang)
                    .OrderByDescending(x => x.DateCreated).Take(4)
                    .ToList()
                    .Select(x => new PostViewModel(x));

                Random rand = new Random();
                ViewBag.RelatedPosts = post
                    .getRelatedPosts(db,3)
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
     
        public ActionResult Search(string q, int? a, int? c, int? t)
        {
            string lang = RouteData.Values["lang"].ToString();
            using (var db = new ApplicationDbContext())
            {
                var posts = db.Posts.Include("Categories")
                                    .Include("Tags")
                                    .Where(x => x.IsPublished && x.Language == lang)
                                    .OrderByDescending(x => x.DateCreated).ToList();

                if (a != null)
                {
                    Area area = db.Areas.Find(a);
                    if (area != null)
                    {
                        posts = posts.Where(x => x.Area.Id == a).ToList();
                    }
                }
                if (c != null)
                {
                    Category category = db.Categories.Find(c);
                    if (category != null)
                    {
                        posts = posts.Where(x => x.Categories.Any(y => y.Id == c)).ToList();
                    }
                }
                if (t != null)
                {
                    Tag tag = db.Tags.Find(t);
                    if (tag != null)
                    {
                        posts = posts.Where(x => x.Tags.Any(y => y.Id == t)).ToList();
                    }
                }
                if (!String.IsNullOrEmpty(q))
                {
                    posts = posts.Where(x => (x.Title + x.PostContent).ToLower().Contains(q.ToLower())).ToList();
                }
                return View(posts.ToList().Select(x=>new PostViewModel(x)).ToList());
            }
        }
    }
}