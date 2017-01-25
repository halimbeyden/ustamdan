using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Ustamdan.Models;
using Ustamdan.Models.IdeaCube;
using Microsoft.AspNet.Identity;
using System.Data.Entity;

namespace Ustamdan.Controllers
{
    [Authorize]
    public class IdeaCubeController : Controller
    {
        // GET: IdeaCube
        public ActionResult Index()
        {
            using (var db  = new ApplicationDbContext())
            {
                var model = db.Ideas
                    .Include(x=>x.CreatedBy)
                    .Where(x => x.Status != IdeaStatus.Deleted)
                    .OrderBy(x=>x.CreationDate)
                    .ToList();
                return View(model);
            }
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Idea idea)
        {
            using (var db = new ApplicationDbContext())
            {
                idea.CreatedById = User.Identity.GetUserId();
                idea.CreationDate = DateTime.Now;
                db.Ideas.Add(idea);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }
        public ActionResult Detail(int id)
        {
            using (var db = new ApplicationDbContext())
            {
                var model = db.Ideas
                    .Include(x=>x.CreatedBy)
                    .Include(x => x.IdeaComments)
                    .Include(x => x.IdeaEmoticons)
                    .FirstOrDefault(x=>x.Id == id);
                if (model == null)
                    return HttpNotFound();
                return View(model);
            }
        }
        [ValidateAntiForgeryToken()]
        public ActionResult Comment(int idea,string content)
        {
            using (var db = new ApplicationDbContext())
            {
                var model = db.Ideas.Find(idea);
                if (model == null)
                    return HttpNotFound();
                model.IdeaComments.Add(new IdeaComment() {
                    Content = content,
                    CreationDate = DateTime.Now,
                    CreatedBy = User.Identity.GetUserId()
                });
                db.SaveChanges();
                return RedirectToAction("Detail",new { id = idea});
            }
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            using (var db = new ApplicationDbContext())
            {
                var model = db.Ideas.Find(id);
                if (model == null)
                    return HttpNotFound();
                db.Ideas.Remove(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
        }
        [HttpPost]
        public ActionResult DeleteComment(int idea,int comment)
        {
            using (var db = new ApplicationDbContext())
            {
                var model = db.IdeaComments.Find(comment);
                if (model == null)
                    return HttpNotFound();
                db.IdeaComments.Remove(model);
                db.SaveChanges();
                return RedirectToAction("Detail", new { id = idea });
            }
        }
    }
}