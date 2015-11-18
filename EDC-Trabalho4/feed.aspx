<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="feed.aspx.cs" Inherits="EDC_Trabalho4.feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" AutoGenerateRows="False" >
        <Fields>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
            <asp:BoundField DataField="managingEditor" HeaderText="managingEditor" SortExpression="managingEditor" />
            <asp:BoundField DataField="webMaster" HeaderText="webMaster" SortExpression="webMaster" />
            <asp:BoundField DataField="lastBuildDate" HeaderText="lastBuildDate" SortExpression="lastBuildDate" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
        </Fields>
    </asp:DetailsView>

    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/blitz_feed.rss" TransformFile="~/App_Data/channel.xsl" XPath="/channel"></asp:XmlDataSource>

    
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/blitz_feed.rss" TransformFile="~/App_Data/noticias.xsl" XPath="/channel"></asp:XmlDataSource>

    <div id="news" runat="server">
        <div class="row">
            <div class="col-lg-4">
		        <div class="panel-body">
			        <div class="panel panel-default">
				        <div class="panel-body">
					        <div class="row">
						        <div class="col-lg-4">
							        <div class="bs-container">
	    					            <div><p></p>
	    					            <p style="font-size:13px">image</p>
	    					            </div>
	    				            </div>
	    			            </div>
	    			            <div class="col-lg-8">
	    				            <div class="bs-container"><h4>Title</h4>
	    				            <p><h5>Description</h5></p>
	    				            <p style="font-size:13px">Link</p>
	    			                </div>
	    		                </div>
	    	                </div>
	                    </div>
	                </div>
                </div>
            </div>
            <div class="col-lg-4">
		        <div class="panel-body">
			        <div class="panel panel-default">
				        <div class="panel-body">
					        <div class="row">
						        <div class="col-lg-4">
							        <div class="bs-container">
	    					            <div><p></p>
	    					            <p style="font-size:13px">aaa</p>
	    					            </div>
	    				            </div>
	    			            </div>
	    			            <div class="col-lg-8">
	    				            <div class="bs-container"><h4>aaa</h4>
	    				            <p><h5>aaa</h5></p>
	    				            <p style="font-size:13px"><i class="fa fa-phone"></i>aaa</p>
	    			            </div>
	    		            </div>
	    	            </div>
	                </div>
	            </div>
            </div>
        </div>
            <div class="col-lg-4">
		        <div class="panel-body">
			        <div class="panel panel-default">
				        <div class="panel-body">
					        <div class="row">
						        <div class="col-lg-4">
							        <div class="bs-container">
	    					            <div><p></p>
	    					            <p style="font-size:13px">aaa</p>
	    					            </div>
	    				            </div>
	    			            </div>
	    			            <div class="col-lg-8">
	    				            <div class="bs-container"><h4>aaa</h4>
	    				            <p><h5>aaa</h5></p>
	    				            <p style="font-size:13px"><i class="fa fa-phone"></i>aaa</p>
	    			            </div>
	    		            </div>
	    	            </div>
	                </div>
	            </div>
            </div>
        </div>
            <div class="col-lg-4">
		        <div class="panel-body">
			        <div class="panel panel-default">
				        <div class="panel-body">
					        <div class="row">
						        <div class="col-lg-4">
							        <div class="bs-container">
	    					            <div><p></p>
	    					            <p style="font-size:13px">aaa</p>
	    					            </div>
	    				            </div>
	    			            </div>
	    			            <div class="col-lg-8">
	    				            <div class="bs-container"><h4>aaa</h4>
	    				            <p><h5>aaa</h5></p>
	    				            <p style="font-size:13px"><i class="fa fa-phone"></i>aaa</p>
	    			            </div>
	    		            </div>
	    	            </div>
	                </div>
	            </div>
            </div>
        </div>
       </div>
    </div>
    
</asp:Content>
