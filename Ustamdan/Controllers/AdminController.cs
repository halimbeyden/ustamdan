using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Ustamdan.Models;
using Ustamdan.Models.Blog;
using Ustamdan.ViewModels;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Ustamdan.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        #region Post

        public ActionResult Posts()
        {
            List<PostViewModel> model;
            using (var db = new ApplicationDbContext())
            {
                model = db.Posts.OrderByDescending(x => x.DateCreated).ToList().Select(x => new PostViewModel(x)).ToList();
            }
            return View(model);
        }

        public ActionResult NewPost()
        {
            using (var db = new ApplicationDbContext())
            {
                ViewBag.Categories = db.Categories.ToList();
                ViewBag.Tags = db.Tags.ToList();
            }
            return View();
        }
        public ActionResult EditPost(int id)
        {
            PostViewModel postVM;
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(id);
                if (post == null)
                    return HttpNotFound();
                postVM = new PostViewModel(post);
                ViewBag.Categories = db.Categories.ToList();
                ViewBag.Tags = db.Tags.ToList();
            }
            return View(postVM);
        }
        [HttpPost]
        public JsonResult SavePost(PostViewModel post)
        {
            using (var db = new ApplicationDbContext())
            {
                Post temp = db.Posts.Find(post.Id);
                if (temp == null) //new post
                {
                    temp = new Post();
                    temp.AuthorId = User.Identity.GetUserId();
                    temp.DateCreated = DateTime.Now;
                    temp.DateModified = DateTime.Now;
                    db.Posts.Add(temp);
                }
                else //modify post
                {
                    temp.DateModified = DateTime.Now;
                    temp.Categories.Clear();
                    temp.Tags.Clear();
                }
                temp.Title = post.Title;
                temp.PostContent = post.Body;
                temp.Description = post.Description;
                temp.Language = post.Language.GetStringValue();
                temp.MediaURL = post.MediaURL;
                temp.Type = post.PostType;
                temp.Status = post.PostStatus;
                temp.Categories = new List<Category>();
                temp.Tags = new List<Tag>();
                try
                {
                    temp.Categories.AddRange(db.Categories.Where(x => post.Categories.Contains(x.Id)));
                    temp.Tags.AddRange(getTags(db, post.TagNames));
                }
                catch
                {

                }
                db.SaveChanges();
                return Json(temp.Id);
            }
        }
        private List<Tag> getTags(ApplicationDbContext db,string []tags)
        {
            List<Tag> tagIds = new List<Tag>();
            foreach (string tag in tags)
            {
                Tag tg = db.Tags.FirstOrDefault(x => x.Name.ToLower() == tag.Trim().ToLower());
                if(tg == null)
                {
                    tg = new Tag();
                    tg.Name = tag;
                    db.Tags.Add(tg);
                    db.SaveChanges();
                }
                tagIds.Add(tg);
            }
            return tagIds;
        }
        #endregion

        #region Media
        public ActionResult Media()
        {
            string mediaDirectory = HttpContext.Server.MapPath("~/Content/Media/");
            DirectoryInfo dirInfo = new DirectoryInfo(mediaDirectory);
            List<FileInfo> files = dirInfo.GetFiles().ToList();
            string[] imageExtensions = { ".jpg", ".jpeg", ".png", ".gif" };
            files = files.Where(x => imageExtensions.Contains(x.Extension)).OrderByDescending(x => x.CreationTime).ToList();
            return View(files);
        }
        public ActionResult AddMedia(HttpPostedFileBase media)
        {
            if (media != null && media.ContentLength > 0)
            {
                var img = Path.GetFileName(media.FileName);
                string[] imageExtensions = { ".jpg", ".jpeg", ".png", ".gif" };
                var extension = Path.GetExtension(media.FileName);
                if (imageExtensions.Contains(extension))
                {
                    var path = Path.Combine(Server.MapPath("~/Content/Media/"),
                                           img);
                    media.SaveAs(path);
                }
            }
            return RedirectToAction("Media");
        }
        public ActionResult RemoveMedia(string mediaName)
        {
            string fullPath = Request.MapPath("~/Content/Media/" + mediaName);
            if (System.IO.File.Exists(fullPath))
            {
                System.IO.File.Delete(fullPath);
            }
            return RedirectToAction("Media");
        }
        #endregion

        #region User

        public ActionResult Users()
        {
            List<UserListViewModel> model;
            using (var db = new ApplicationDbContext())
            {
                model = db.Users.ToList().Select(x => new UserListViewModel(x)).Reverse().ToList();
            }
            return View(model);
        }
        public ActionResult EditUser(string id)
        {
            UserListViewModel model;
            using (var db = new ApplicationDbContext())
            {
                var user = db.Users.Find(id);
                if (user == null)
                    return HttpNotFound();
                model = new UserListViewModel(user);
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult EditUser(RegisterViewModel model, string id)
        {
            using (var db = new ApplicationDbContext())
            {
                var user = db.Users.Find(id);
                if (user == null)
                    return HttpNotFound();
                user.Email = model.Email;
                user.Fullname = model.Fullname;
                if (user.Type != model.UserType)
                {
                    var manager = new ApplicationUserManager(new UserStore<ApplicationUser>(db));
                    manager.RemoveFromRole(user.Id, user.Type.ToString());
                    user.Type = model.UserType;
                    manager.AddToRole(user.Id, model.UserType.ToString());
                }
                if (model.Password != null)
                {
                    var hasher = new PasswordHasher();
                    user.PasswordHash = hasher.HashPassword(model.Password);
                }
                db.SaveChanges();
            }
            return RedirectToAction("Users");
        }
        #endregion
        #region Category
        public JsonResult AddCategory(string name)
        {
            name = name.Trim();
            if (String.IsNullOrEmpty(name))
                return Json(new { Id = -1, isNew = false });
            using (var db = new ApplicationDbContext())
            {
                Category cat = db.Categories.FirstOrDefault(x=>x.Name.ToLower() == name.ToLower());
                if(cat != null)
                    return Json(new { Id = cat.Id, isNew = false});
                cat = new Category(name);
                db.Categories.Add(cat);
                db.SaveChanges();
                return Json(new { Id = cat.Id, isNew = true });
            }
        }
        #endregion
    }
}