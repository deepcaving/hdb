<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Admin_VideoUpload" Codebehind="VideoUpload.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="contactInfo">
    <fieldset class="register">
        <legend>Choose video</legend>
                <span class="failureNotification">
                    <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                </span>                
         <p><asp:Label ID="lblImage" runat="server" Text="Upload file:" 
                    style="font-weight: 700"></asp:Label>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server"/>
                <asp:Label ID="lblMessage" runat="server"></asp:Label></p>
      </fieldset>
</asp:Content>

