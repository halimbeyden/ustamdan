using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Ustamdan.Models;

namespace Ustamdan
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapRoute(
                "Blog", 
                "{lang}/{weekly}", 
                new { controller = "Home", action = "Blog" }, 
                new { lang = "(tr)|(en)", weekly = "(yazihane)|(weekly)" }
                );
            routes.MapRoute(
                "About",
                "{lang}/{aboutus}",
                new { controller = "Home", action = "About" },
                new { lang = "(tr)|(en)", aboutus = "(hakkimizda)|(aboutus)" }
                );
            routes.MapRoute(
               "Contact",
               "{lang}/{contact}",
               new { controller = "Home", action = "Contact" },
               new { lang = "(tr)|(en)", contact = "(iletisim)|(contact)" }
               );
            routes.MapRoute(
               "Search",
               "{lang}/{search}",
               new { controller = "Home", action = "Search" },
               new { lang = "(tr)|(en)", search = "(ara)|(search)" }
               );
            routes.MapRoute(
              "Post",
              "{lang}/{weekly}/{id}/{title}",
              new { controller = "Home", action = "Post" ,title = UrlParameter.Optional},
              new { lang = "(tr)|(en)", weekly = "(yazihane)|(weekly)"}
              );
            routes.MapRoute(
                name: "Language",
                url: "{lang}/{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                constraints: new { lang = @"tr|en" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional, lang = AppData.DefaultLanguage }
            );
            routes.MapMvcAttributeRoutes();
            AreaRegistration.RegisterAllAreas();
        }
    }
}
