using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Ustamdan.Models;

namespace Ustamdan.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }


        #region Post

        public ActionResult PostList()
        {
            return View();
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
        #endregion
    }
}