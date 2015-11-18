<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="feed.aspx.cs" Inherits="EDC_Trabalho4.feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   

    
    

   

    
    <asp:FormView ID="FormView1" runat="server">
    </asp:FormView>

   

    
    

   

    
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/blitz_feed.rss" TransformFile="~/App_Data/channel.xsl"></asp:XmlDataSource>

    
</asp:Content>
