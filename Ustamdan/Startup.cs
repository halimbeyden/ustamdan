using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ustamdan.Startup))]
namespace Ustamdan
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
