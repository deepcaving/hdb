<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="ContactForm_ContactFormLI" Codebehind="ContactFormLI.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>DO YOU WANT TO ASK US A QUESTION?</h2>
    <div class="contactInfo">
                <fieldset class="register">
                    <legend>Contact Form</legend><span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="vsSubmitContactFormLO" runat="server" CssClass="failureNotification"
                        ValidationGroup="vgSubmitContactFormLO" />
                    <p>
                        <asp:Label ID="lblQuestion" runat="server" Text="Enter your question here"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" Height="188px"
                            Width="497px" ValidationGroup="vgSubmitContactFormLO"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserInfo" runat="server" ErrorMessage="RequiredFieldValidator"
                            ValidationGroup="vgSubmitContactInfo" ControlToValidate="txtQuestion">*</asp:RequiredFieldValidator>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" /> 
                </p>
            </div>
  
</asp:Content>



