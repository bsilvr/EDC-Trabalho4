<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="feed.aspx.cs" Inherits="EDC_Trabalho4.feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" TransformFile="~/App_Data/channel.xsl" EnableCaching="false"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" TransformFile="~/App_Data/noticias.xsl" EnableCaching="false"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/App_Data/feedLinks.xml"></asp:XmlDataSource>
    <h1><i class="fa fa-rss"></i> My Feed Reader</h1>
    <hr />
    <div runat="server" class="row">
        <div class="col-lg-8">
            <asp:DropDownList CssClass="form-control" AutoPostBack="True" ID="DropDownList1" runat="server" DataSourceID="XmlDataSource3" DataTextField="name" DataValueField="url"></asp:DropDownList>
        </div>
        <div class="col-lg-2"></div>
        <div class="col-lg-2">
            <asp:LinkButton CssClass="btn btn-primary" PostBackUrl="~/manageFeed.aspx" ID="LinkButton1" runat="server"><i class="fa fa-rss"></i> Manage Feeds</asp:LinkButton>
        </div>
    </div>
    <div runat="server" class="row">
        <div class="col-lg-8">
            <h3>Feed Info</h3>
            <asp:DetailsView CssClass="table table-bordered" ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" AutoGenerateRows="False" >
                <Fields>
                    <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                    <asp:BoundField DataField="link" HeaderText="Link" SortExpression="link" />
                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                    <asp:BoundField DataField="language" HeaderText="Language" SortExpression="language" />
                    <asp:BoundField DataField="managingEditor" HeaderText="Managing Editor" SortExpression="managingEditor" />
                    <asp:BoundField DataField="webMaster" HeaderText="Web Master" SortExpression="webMaster" />
                    <asp:BoundField DataField="lastBuildDate" HeaderText="Last Build Date" SortExpression="lastBuildDate" />
                    <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />   
                </Fields>
            </asp:DetailsView>
        </div>
        <div class="col-lg-4">
            <h3>Feed Image</h3>
            <div id="image" runat="server">
            </div>
        </div>
    </div> 
    <div>
        <h3 id="counter" runat="server"></h3>
        <div id="news" runat="server" class="row">
            
       </div>
    </div>
   

</asp:Content>
