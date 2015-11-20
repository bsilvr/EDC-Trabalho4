<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageFeed.aspx.cs" Inherits="EDC_Trabalho4.manageFeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><i class="fa fa-rss"></i> Gestão de Feeds</h1>
    <hr />
    <asp:FormView CssClass="table table-bordered" PagerStyle-CssClass="pagination-ys" AllowPaging="true" ID="FormView1" OnItemUpdating="FormView1_ItemUpdating" OnItemDeleting="FormView1_ItemDeleting" OnItemInserting="FormView1_ItemInserting" runat="server" DataSourceID="XmlDataSource1">
        <EditItemTemplate >
            <table class="table table-bordered" border="0">
                <tr>
                    <td class="col-xs-1">Nome:</td>
                    <td class="col-xs-11">
                        <asp:Label runat="server" ID="nameFeed" Text='<%# Bind("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>URL:</td>
                    <td>
                        <asp:TextBox runat="server" ID="url" CssClass="form-control"  Text='<%# Bind("url") %>'></asp:TextBox>
                    </td>
                </tr>
            </table>
           <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="Update"><i class="fa fa-floppy-o"></i></asp:LinkButton>
           <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="Cancel"><i class="fa fa-times"></i></asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
           <table class="table table-bordered" border="0">
                <tr>
                    <td class="col-xs-1">Nome:</td>
                    <td class="col-xs-11">
                        <asp:TextBox runat="server" ID="nameInsert" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>URL:</td>
                    <td>
                        <asp:TextBox runat="server" ID="urlInsert" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="Insert"><i class="fa fa-floppy-o"></i></asp:LinkButton>
            <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="Cancel"><i class="fa fa-times"></i></asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table table-bordered">
                <tr>
                    <td class="col-xs-1">Nome:</td>
                    <td class="col-xs-11">
                        <asp:Label runat="server" ID="nameFeed" Text='<%# Bind("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>URL:</td>
                    <td>
                        <asp:Label runat="server" ID="urlFeed" Text='<%# Bind("url") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="Edit"><i class="fa fa-pencil-square-o"></i></asp:LinkButton>
            <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
            <asp:LinkButton runat="server" CssClass="btn btn-default" CommandName="New"><i class="fa fa-star-o"></i></asp:LinkButton>

        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
        <PagerStyle CssClass="pagination-ys" />
    </asp:FormView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/feedLinks.xml"></asp:XmlDataSource>
    <asp:LinkButton ID="feed" PostBackUrl="~/feed.aspx" runat="server" CssClass="btn btn-primary"><i class="fa fa-rss"></i> Leitor de Feeds</asp:LinkButton>
</asp:Content>
