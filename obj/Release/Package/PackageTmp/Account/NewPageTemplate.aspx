<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPageTemplate.aspx.cs" Inherits="HDBiking.Account.NewPageTemplate" %>
<%@ Register src="../UserControls/NewPageTemplate/SectionTitleDescr.ascx" tagname="SectionTitleDescr" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<!-- http://deepumi.wordpress.com/2010/03/20/asp-net-3-5-ajax-modal-popup-extender-with-user-control-event-bubbling/ -->
    <style type="text/css">
    .modalBackground
    {
    background-color: Gray;
    filter: alpha(opacity=70);
    opacity: 0.7;
    }
    .modalPopup
    {
    background-color: White;
    height: 100%;
    width: 100%;
    text-align:left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

<h1>Custom page creator</h1>
    <asp:LoginView ID="LoginView1" runat="server">
    <LoggedInTemplate>
        
    </LoggedInTemplate>
    <AnonymousTemplate></AnonymousTemplate>
    </asp:LoginView>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table border="1" style="border-style: solid; border-width: 1px;" ><!--rules="all"-->
                <tr>
                    <td id="tdTitle" style="width: 100%; background-color: lightgray;"><h2 style="color: black;">Here goes the title</h2></td>
                    <td><asp:ImageButton ID="imgBtnEditSectionTitle" runat="server" 
                        ImageUrl="../Images for html/Icons/Edit.jpg" ToolTip="Edit title" 
                            onclick="imgBtnEditSectionTitle_Click" />
                            <uc1:SectionTitleDescr ID="SectionTitle1" runat="server" Visible="false"/>
                    </td>                    
                </tr>
                <tr>
                    <td id="tdDescription" style="width: 100%; background-color: lightgray;"><h2 style="color: black">Add a comprehensive description of the track</h2></td>
                    <td><asp:ImageButton ID="imgBtnEditSectionDescription" runat="server" 
                    ImageUrl="../Images for html/Icons/Edit.jpg" ToolTip="Edit description"/></td>
                </tr>
                <tr>                    
                    <td id="tdPictures" style="width: 1px; background-color: lightgray; vertical-align: top;">
                    <div style="float: left;"><asp:ImageButton ID="imgBtnEditSectionVideos" runat="server" 
                        ImageUrl="../Images for html/NewPageTemplate/go to videos - NewPageTemplate Gray.png" ToolTip="Edit videos"/>
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../Images for html/NewPageTemplate/anyImageIconGray.png" 
                            Style="margin-bottom: 30px; margin-left: 180px;" ToolTip="Edit pictures"/>
                    </div>
                        </td>                    
                        <td><asp:ImageButton ID="imgBtnEditSectionImagesCollection" runat="server" 
                            ImageUrl="../Images for html/Icons/Edit.jpg" ToolTip="Edit pictures"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="imgBtnRadioPlayer" runat="server" 
                            ImageUrl="../Images for html/NewPageTemplate/radio player Large.jpg" ToolTip="Edit radios"/></td>
                    <td><asp:ImageButton ID="imgBtnEditSectionRadioPlayer" runat="server" 
                            ImageUrl="../Images for html/Icons/Edit.jpg" ToolTip="Edit radios"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="imgBtnMap" runat="server" 
                            ImageUrl="../Images for html/NewPageTemplate/mapGray Large.jpg" ToolTip="Edit map"/></td>
                    <td><asp:ImageButton ID="imgBtnEditSectionMap" runat="server" 
                        ImageUrl="../Images for html/Icons/Edit.jpg" ToolTip="Edit map"/></td>
                </tr>
            </table>
        </ContentTemplate>       
    </asp:UpdatePanel>


        


            <br/>

</asp:Content>
