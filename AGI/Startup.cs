using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AGI.Startup))]
namespace AGI
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
