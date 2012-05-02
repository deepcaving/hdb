<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewTrackInfo.aspx.cs" Inherits="HDBiking.NewTrackInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <h2>Only registered users can add new pages to the site.</h2>
    <table>
        <tr><td style="height: 10px"></td></tr>
        <tr>
            <td style="vertical-align: top">
                <p>Yes, YOU can create new pages with the same layout of the others. After registering, log in and click 
                    the "Add a new track" menu item. You'll be redirected to the page shown in the picture on the right.</p>
                <p>Clicking the Edit icons, you'll be provided with popup windows asking you for the needed information.</p>
                <p><asp:HyperLink ID="hlkRegister" runat="server" NavigateUrl="~/Account/Register.aspx">Click here to register</asp:HyperLink></p>
            </td>
            <td>
                <asp:Image ID="imgNewPageTemplate" runat="server" ImageUrl="Images for html/NewPageTemplate/NewPageTemplate.jpg"/>
            </td>
        </tr>
    </table>
    
    

</asp:Content>
