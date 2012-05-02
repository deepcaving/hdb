<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="ImgUpload" Codebehind="ImgUpload.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:ValidationSummary ID="vsUploadImage" runat="server" CssClass="failureNotification" 
                    ValidationGroup="vgUploadImage"/>
<div class="contactInfo">
    <fieldset class="register">
        <legend>Choose track image</legend>
                <span class="failureNotification">
                    <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                </span>                
            <p><asp:Label ID="lblImage" runat="server" Text="Upload file:" 
                    style="font-weight: 700"></asp:Label>
                    <br />
                    <asp:FileUpload ID="fileupload1" runat="server"/>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
            <p><asp:Label ID="lblTitle" runat="server" Text="Title of image"></asp:Label>
            <br />
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitle" runat="server" 
                    ErrorMessage="Title is required" ControlToValidate="txtTitle" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
             <%--<asp:RequiredFieldValidator ID="rfvBrowse" runat="server" ErrorMessage="No image selected" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>--%>
            </p>
            <p><asp:Label ID="lblTrackId" runat="server" Text="Track ID"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlTrack" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="TrackDS" DataTextField="TRAN_Name" DataValueField="TRAN_ID">
                    <asp:ListItem>--- Choose a track---</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvTrackId" runat="server" ControlToValidate="ddlTrack"
                    ErrorMessage="Track is required" CssClass="failureNotification" Display="Dynamic" 
                    ValidationGroup="vgUploadImage" ToolTip="Track is required"
                    Enabled="True" InitialValue="--- Choose a track ---">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="TrackDS" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
                    
                    SelectCommand="SELECT TRAN_ID, TRAN_Name FROM deepcavi_fra.TR_Anag ORDER BY TRAN_Name">
                </asp:SqlDataSource>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </p>
            <p  class="submitButton">
                <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                onclick="btnUpload_Click" ValidationGroup="vgUploadImage" />
            </p>
            <p><asp:Image ID="Image1" runat="server" GenerateEmptyAlternateText="True" /></p>            
    </fieldset>
</div>
</asp:Content>

