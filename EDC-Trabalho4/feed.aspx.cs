using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC_Trabalho4
{
    public partial class feed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string url = "http://feeds.feedburner.com/PublicoRSS?format=xml";
                XmlReader reader = XmlReader.Create(url);
                XmlDocument doc = new XmlDocument();
                doc.Load(reader);
                reader.Close();

                //XmlDataSource1.Data = "~/App_data/blitz_fedd.rss";
                //XmlDataSource1.XPath = "rss/channel";
                //FormView1.DataSource = XmlDataSource1;
                //FormView1.DataBind();
            }
        }
    }
}