using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Ustamdan.Models;

namespace Ustamdan
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AntiForgeryConfig.SuppressXFrameOptionsHeader = true;

            using (var context = new ApplicationDbContext())
            {
                context.Database.Initialize(false);
                RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
                var r = roleManager.Create(new IdentityRole("Admin"));
                r = roleManager.Create(new IdentityRole("Author"));
                r = roleManager.Create(new IdentityRole("Standard"));
                var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
                var usr = context.Users.FirstOrDefault(x => x.Email == "halimbeyden@gmail.com");
                if (usr == null)
                {
                    var user = new ApplicationUser { UserName = "halimbeyden@gmail.com", Email = "halimbeyden@gmail.com", Fullname = "Halim Beyden" };
                    var result = UserManager.Create(user, "123455");
                    UserManager.AddToRole(user.Id, "Admin");
                }
                else
                    UserManager.AddToRole(usr.Id, "Admin");
                
                //context.Posts.ToList().ForEach(x => x.IsPublished = true);
                //context.SaveChanges();
                //if (context.Posts.Count() < 100)
                //    Dummy.CreateData(context);
            }
        }
    }
}
