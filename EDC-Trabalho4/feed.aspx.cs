using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            string link = DropDownList1.SelectedValue;
            if (link.Length == 0)
            {
                link = "http://feeds.feedburner.com/PublicoRSS?format=xml";
            }

            XmlReader reader = XmlReader.Create(link);
            XmlDocument doc = new XmlDocument();
            doc.Load(reader);
            reader.Close();

            XmlDataSource1.Data = doc.OuterXml;
            XmlDataSource1.DataBind();
            XmlDataSource1.XPath = "/rss/channel";

            XmlDataSource2.Data = doc.OuterXml;
            XmlDataSource2.DataBind();
            XmlDataSource2.XPath = "/channel";

            XmlDocument xdoc1 = XmlDataSource1.GetXmlDocument();
            XmlDocument xdoc2 = XmlDataSource2.GetXmlDocument();
            XmlNodeList channel = xdoc1.SelectNodes("//channel");
            XmlNode info = channel[0];
            XmlNodeList noticias = xdoc2.SelectNodes("//item");
            DetailsView1.DataBind();

            image.InnerHtml = "<img border=\"0\" alt=\""+ info.Attributes["title"].Value + "\" src=\""+ info.Attributes["imageLink"].Value +"\">";
            news.InnerHtml = "";
            counter.InnerHtml = "Feed News ["+ noticias.Count +"]";

            foreach (XmlNode i in noticias)
            {
                Debug.WriteLine(i.Attributes["title"].Value);

                news.InnerHtml += "" +
                    "<div class=\"col-xs-12 col-md-6 col-lg-4\">" +
                        "<div class=\"well\" style=\"min-height: 300px\">" +
                            "<div class=\"media\">" +
                                "<div class=\"media-body\">" +
                                    "<h4 class=\"media-heading\"><a target =\"_blank\" href=\"" + i.Attributes["link"].Value + "\">" + i.Attributes["title"].Value + "</a></h4>" +
                                    "<p> </p>"+
                                    "<p><i class=\"fa fa-calendar\"></i> " + i.Attributes["pubDate"].Value + "</p>" +
                                    "<p><i class=\"fa fa-tag\"></i> " + i.Attributes["category"].Value + "</p>" +
                                    "<p> </p>" +
                                    "<p>" + i.Attributes["description"].Value + "</p>" +
                                "</div>" +
                            "</div>" +
                        "</div>" +
                    "</div>";
	        }
        }
    }
}