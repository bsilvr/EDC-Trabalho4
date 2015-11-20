using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC_Trabalho4
{
    public partial class manageFeed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {
            String name = ((Label)FormView1.Row.Cells[0].FindControl("nameFeed")).Text;
            String url = ((Label)FormView1.Row.Cells[0].FindControl("urlFeed")).Text;
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            XmlElement feeds = xdoc.SelectSingleNode("feed") as XmlElement;
            XmlElement feed = xdoc.SelectSingleNode("feed/link[@name='" + name + "'][@url = '" + url + "']") as XmlElement;
            feeds.RemoveChild(feed);

            XmlDataSource1.Save();

            e.Cancel = true;

            FormView1.DataBind();
        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
            XmlElement feed = xdoc.SelectSingleNode("feed/link[@name='" + e.OldValues[0].ToString() + "'][@url='" + e.OldValues[1].ToString() + "']") as XmlElement;
            feed.Attributes["url"].Value = e.NewValues["url"].ToString();

            XmlDataSource1.Save();
            XmlDataSource1.DataBind();

            e.Cancel = true;
            FormView1.ChangeMode(FormViewMode.ReadOnly);
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            XmlElement feeds = xdoc.SelectSingleNode("feed") as XmlElement;
            XmlElement feed = xdoc.CreateElement("link");

            XmlAttribute name = xdoc.CreateAttribute("name");
            XmlAttribute url = xdoc.CreateAttribute("url");

            name.InnerText = ((TextBox)FormView1.Row.Cells[0].FindControl("nameInsert")).Text;
            url.InnerText = ((TextBox)FormView1.Row.Cells[0].FindControl("urlInsert")).Text;

            feeds.AppendChild(feed);
            feed.Attributes.Append(name);
            feed.Attributes.Append(url);

            XmlDataSource1.Save();
            XmlDataSource1.DataBind();

            FormView1.DataBind();
            FormView1.ChangeMode(FormViewMode.ReadOnly);
            e.Cancel = true;
        }
    }
}