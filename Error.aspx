<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Error" Codebehind="Error.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel runat="server" BorderWidth="50" BorderStyle="Solid" BorderColor="white">
        <h1>
            BAD URL! Page not found</h1>
        <p style="color: blue">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">&#60;&#60; Back to homepage</asp:HyperLink></p>
    </asp:Panel>
</asp:Content>

