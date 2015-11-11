using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EDC_Trabalho4.Startup))]
namespace EDC_Trabalho4
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
