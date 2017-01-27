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
using System.Net;
using Ustamdan.Models.MailerLite;

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
        [Authorize(Roles = "Admin")]
        public ActionResult PendingPosts()
        {
            List<PostViewModel> model;
            using (var db = new ApplicationDbContext())
            {
                model = db.Posts
                    .Where(x => x.Status == PostStatus.Published && !x.IsPublished)
                    .OrderByDescending(x => x.DateCreated).ToList()
                    .Select(x => new PostViewModel(x)).ToList();
            }
            return View(model);
        }
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public ActionResult ApprovePost(int id)
        {
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(id);
                if (post == null)
                    return Json(1);
                post.IsPublished = true;
                post.PublishDate = DateTime.Now;
                db.SaveChanges();
            }
            return RedirectToAction("PendingPosts");
        }

        public ActionResult NewPost()
        {
            using (var db = new ApplicationDbContext())
            {
                ViewBag.Categories = db.Categories.ToList();
                ViewBag.Areas = db.Areas.ToList();
                ViewBag.Tags = db.Tags.ToList();
                ViewData["MediaModel"] = GetMediaModel();
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
                if (!User.IsInRole("Admin") && post.Author.Id != User.Identity.GetUserId())
                    return new HttpUnauthorizedResult();
                postVM = new PostViewModel(post);
                ViewBag.Areas = db.Areas.ToList();
                ViewBag.Categories = db.Categories.ToList();
                ViewBag.Tags = db.Tags.ToList();
                ViewData["MediaModel"] = GetMediaModel();
            }
            return View(postVM);
        }

        [HttpPost]
        public ActionResult RemovePost(int id)
        {
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(id);
                if (post == null)
                    return HttpNotFound();
                if (!User.IsInRole("Admin") && post.Author.Id != User.Identity.GetUserId())
                    return new HttpUnauthorizedResult();
                db.PostMedias.RemoveRange(post.CarouselMedia);
                db.Posts.Remove(post);
                db.SaveChanges();
            }
            return RedirectToAction("Posts");
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
                    temp.CarouselMedia.Clear();
                }
                if (!User.IsInRole("Admin"))
                    temp.IsPublished = false;
                temp.AuthorName = post.AuthorName;
                temp.Description = post.Description;
                temp.PostContent = post.PostContent;
                temp.PostQuote = post.PostQuote;
                temp.PostContentPartTwo = post.PostContentPartTwo;

                temp.Title = post.Title;
                temp.Language = post.Language.GetStringValue();
                temp.MediaURL = post.MediaURL;
                temp.Type = post.PostType;
                temp.Status = post.PostStatus;
                temp.HasLocation = post.HasLocation;
                temp.Latitude = post.Latitude;
                temp.Longitude = post.Longitude;
                temp.Categories = new List<Category>();
                temp.CarouselMedia = new List<PostMedia>();
                temp.Tags = new List<Tag>();
                temp.AreaId = post.AreaId;
                try
                {
                    if (post.Categories != null && post.Categories.Count() > 0)
                        temp.Categories.AddRange(db.Categories.Where(x => post.Categories.Contains(x.Id)));
                    if (post.PostMedia != null && post.PostMedia.Count > 0)
                        temp.CarouselMedia.AddRange(post.PostMedia);
                    temp.Tags.AddRange(getTags(db, post.TagNames));
                }
                catch
                {

                }
                db.SaveChanges();
                return Json(temp.Id);
            }
        }
        private List<Tag> getTags(ApplicationDbContext db, string[] tags)
        {
            List<Tag> tagIds = new List<Tag>();
            foreach (string tag in tags)
            {
                Tag tg = db.Tags.FirstOrDefault(x => x.Name.ToLower() == tag.Trim().ToLower());
                if (tg == null)
                {
                    tg = new Tag(tag);
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
            return View(GetMediaModel());
        }
        public List<FileInfo> GetMediaModel()
        {
            string mediaDirectory = HttpContext.Server.MapPath("~/Content/Media/");
            DirectoryInfo dirInfo = new DirectoryInfo(mediaDirectory);
            List<FileInfo> files = dirInfo.GetFiles().ToList();
            string[] imageExtensions = { ".jpg", ".jpeg", ".png", ".gif" };
            files = files.Where(x => imageExtensions.Contains(x.Extension.ToLower())).OrderByDescending(x => x.CreationTime).ToList();
            return files;
        }
        public string AddMedia(HttpPostedFileBase media)
        {
            if (media != null && media.ContentLength > 0)
            {
                var img = Path.GetFileName(media.FileName);
                string[] imageExtensions = { ".jpg", ".jpeg", ".png", ".gif" };
                var extension = Path.GetExtension(media.FileName);
                if (imageExtensions.Contains(extension.ToLower()))
                {
                    var path = Path.Combine(Server.MapPath("~/Content/Media/"),
                                           img);
                    media.SaveAs(path);
                }
                return media.FileName;
            }
            return "";
        }
        public void RemoveMedia(string mediaName)
        {
            string fullPath = Request.MapPath("~/Content/Media/" + mediaName);
            if (System.IO.File.Exists(fullPath))
            {
                System.IO.File.Delete(fullPath);
            }
        }
        #endregion

        #region User
        [Authorize(Roles = "Admin")]
        public ActionResult Users()
        {
            List<UserListViewModel> model;
            using (var db = new ApplicationDbContext())
            {
                model = db.Users.ToList().Select(x => new UserListViewModel(x)).Reverse().ToList();
            }
            return View(model);
        }
        [Authorize(Roles = "Admin")]
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
        [Authorize(Roles = "Admin")]
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
        public ActionResult Category()
        {
            using (var db = new ApplicationDbContext())
            {
                return View(db.Categories.ToList());
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult AddCategory(string categoryName, Language lang)
        {
            categoryName = categoryName.Trim();
            using (var db = new ApplicationDbContext())
            {
                Category category = db.Categories.FirstOrDefault(x => x.Name.ToLower() == categoryName.ToLower());
                if (category != null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Category already exist.");
                category = new Category(categoryName, lang.GetStringValue());
                db.Categories.Add(category);
                db.SaveChanges();
                return RedirectToAction("Category");
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult EditCategory(int categoryId, string categoryName, Language lang)
        {
            categoryName = categoryName.Trim();
            using (var db = new ApplicationDbContext())
            {
                Category category = db.Categories.FirstOrDefault(x => x.Id == categoryId);
                if (category == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Category not found.");
                category.Name = categoryName;
                category.Language = lang.GetStringValue();
                db.SaveChanges();
                return RedirectToAction("Category");
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult RemoveCategory(int categoryId)
        {
            using (var db = new ApplicationDbContext())
            {
                Category category = db.Categories.FirstOrDefault(x => x.Id == categoryId);
                if (category == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Category not found.");
                db.Categories.Remove(category);
                db.SaveChanges();
                return RedirectToAction("Category");
            }
        }

        #endregion


        public ActionResult Tag()
        {
            using (var db = new ApplicationDbContext())
            {
                return View(db.Tags.ToList());
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult AddTag(string tagName, Language lang)
        {
            tagName = tagName.Trim();
            using (var db = new ApplicationDbContext())
            {
                Tag tag = db.Tags.FirstOrDefault(x => x.Name.ToLower() == tagName.ToLower());
                if (tag != null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Tag already exist.");
                tag = new Tag(tagName, lang.GetStringValue());
                db.Tags.Add(tag);
                db.SaveChanges();
                return RedirectToAction("Tag");
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult EditTag(int tagId, string tagName, Language lang)
        {
            tagName = tagName.Trim();
            using (var db = new ApplicationDbContext())
            {
                Tag tag = db.Tags.FirstOrDefault(x => x.Id == tagId);
                if (tag == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Tag not found.");
                tag.Name = tagName;
                tag.Language = lang.GetStringValue();
                db.SaveChanges();
                return RedirectToAction("Tag");
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult RemoveTag(int tagId)
        {
            using (var db = new ApplicationDbContext())
            {
                Tag tag = db.Tags.FirstOrDefault(x => x.Id == tagId);
                if (tag == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Tag not found.");
                db.Tags.Remove(tag);
                db.SaveChanges();
                return RedirectToAction("Tag");
            }
        }
        #region Area

        public ActionResult Area()
        {
            using (var db = new ApplicationDbContext())
            {
                return View(db.Areas.ToList());
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult AddArea(string areaName, Language lang)
        {
            areaName = areaName.Trim();
            using (var db = new ApplicationDbContext())
            {
                Area area = db.Areas.FirstOrDefault(x => x.Name.ToLower() == areaName.ToLower());
                if (area != null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Area already exist.");
                area = new Area(areaName, lang.GetStringValue());
                db.Areas.Add(area);
                db.SaveChanges();
                return RedirectToAction("Area");
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult EditArea(int areaId, string areaName, Language lang)
        {
            areaName = areaName.Trim();
            using (var db = new ApplicationDbContext())
            {
                Area area = db.Areas.FirstOrDefault(x => x.Id == areaId);
                if (area == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Area not found.");
                area.Name = areaName;
                area.Language = lang.GetStringValue();
                db.SaveChanges();
                return RedirectToAction("Area");
            }
        }
        [Authorize(Roles = "Admin")]
        public ActionResult RemoveArea(int areaId)
        {
            using (var db = new ApplicationDbContext())
            {
                Area area = db.Areas.FirstOrDefault(x => x.Id == areaId);
                if (area == null)
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "This Area not found.");
                db.Areas.Remove(area);
                db.SaveChanges();
                return RedirectToAction("Area");
            }
        }
        #endregion


        #region MailerLite
        public ActionResult Mail()
        {
            using (var db = new ApplicationDbContext())
            {
                ViewBag.Posts = db.Posts.Where(x => x.IsPublished).OrderByDescending(x => x.Id).ToList();
            }
            return View(MailerLiteHelper.getGroups());
        }
        [HttpPost]
        public ActionResult SendMail(int[] groups, int postId, DateTime? schedule, bool fornewusers = false)
        {
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(postId);
                if (post == null || groups.Length == 0)
                    return HttpNotFound();
                string tmp = RenderViewToString(ControllerContext, "_MailTemplate", new MailTemplateViewModel(post, fornewusers));
                try
                {
                    MailerLiteHelper.SendMail(groups, "Ustamdan Havadis Var: " + post.Title, tmp, schedule);
                }
                catch (Exception ex)
                {
                    return new HttpStatusCodeResult(500, ex.Message);
                }
            }
            return RedirectToAction("Mail");
        }
        [HttpGet]
        public string GetMailTemplate(int postId,bool fornewusers = false)
        {
            using (var db = new ApplicationDbContext())
            {
                var post = db.Posts.Find(postId);
                if (post == null)
                    return null;
                return RenderViewToString(ControllerContext, "_MailTemplate", new MailTemplateViewModel(post,fornewusers));
            }
        }

        public static string RenderViewToString(ControllerContext context, string viewName, object model)
        {
            if (string.IsNullOrEmpty(viewName))
                viewName = context.RouteData.GetRequiredString("action");

            var viewData = new ViewDataDictionary(model);

            using (var sw = new StringWriter())
            {
                var viewResult = ViewEngines.Engines.FindPartialView(context, viewName);
                var viewContext = new ViewContext(context, viewResult.View, viewData, new TempDataDictionary(), sw);
                viewResult.View.Render(viewContext, sw);

                return sw.GetStringBuilder().ToString();
            }
        }

        #endregion
    }
}