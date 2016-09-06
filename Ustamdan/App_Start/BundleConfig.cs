using System.Web;
using System.Web.Optimization;

namespace Ustamdan
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));




            bundles.Add(new ScriptBundle("~/Script/Admin").Include(
                    "~/Scripts/jquery-{version}.js",
                    "~/Scripts/jquery.validate*",
                    "~/Scripts/bootstrap.js",
                    "~/Scripts/respond.js",
                    "~/Scripts/Admin/fastclick.js",
                    "~/Scripts/Admin/icheck.min.js",
                    "~/Scripts/Admin/custom.js"
                    ));

            bundles.Add(new StyleBundle("~/Css/Admin").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/Admin/font-awesome.min.css",
                      "~/Content/Admin/animate.min.css",
                      "~/Content/Admin/flat/green.css",
                      "~/Content/Admin/custom.css"));
        }
    }
}
