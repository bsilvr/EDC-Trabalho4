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
           

            if (!IsPostBack)
            {

                XmlDocument xdoc = XmlDataSource2.GetXmlDocument();
                XmlNodeList noticias = xdoc.SelectNodes("//item");

                news.InnerHtml = "<div class='row'>";

                foreach (XmlNode i in noticias)
                {
                    Debug.WriteLine(i.Attributes["title"].Value);

                    news.InnerHtml += "" +
                        "< div class="col-lg-4">" +
		                    "<div class="panel-body">" +
			        <div class="panel panel-default">
				        <div class="panel-body">
					        <div class="row">
						        <div class="col-lg-4">
							        <div class="bs-container">
	    					            <div><p></p>
	    					            <p style = "font-size:13px" > aaa </ p >
                                        </ div >
                                    </ div >
                                </ div >
                                < div class="col-lg-8">
	    				            <div class="bs-container"><h4>aaa</h4>
	    				            <p><h5>aaa</h5></p>
	    				            <p style = "font-size:13px" >< i class="fa fa-phone"></i>aaa</p>
	    			            </div>
	    		            </div>
	    	            </div>
	                </div>
	            </div>
            </div>
        </div>
                    
                }
                news.InnerHtml += "</div></div>";

            }
           
        }
    }
}