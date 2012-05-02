<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="ContactForm_ContactFormLO" Codebehind="ContactFormLO.aspx.cs" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%--<%@ Register src="ContactFormLO.ascx" tagname="ContactFormLO1" tagprefix="uc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <h2>DO YOU WANT TO ASK US A QUESTION?</h2>
    <div class="contactInfo">
                <fieldset class="register">
                    <legend>Contact Form</legend>
                        <span class="failureNotification">
                            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                        </span>
                        <asp:ValidationSummary ID="vsSubmitContactFormLO" runat="server" CssClass="failureNotification" 
                            ValidationGroup="vgSubmitContactFormLO"/>
                    <p>
                        <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label>
                        <br /><asp:TextBox ID="txtName" runat="server" CssClass="textEntry"></asp:TextBox>
                        &nbsp;<asp:Label ID="lblOptional" runat="server" Text="(optional)"></asp:Label>
                    </p>
                    <p>
                        <asp:Label ID="lblEmail" runat="server" Text="Your Email"></asp:Label>
                        <br /><asp:TextBox ID="txtEmail" runat="server" CssClass="textEntry"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="RequiredFieldValidator" 
                            ValidationGroup="vgSubmitContactFormLO" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="lblQuestion" runat="server" Text="Enter your question here"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" Height="188px" 
                            Width="497px" ValidationGroup="vgSubmitContactFormLO"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvUserInfo" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ValidationGroup="vgSubmitContactInfo" ControlToValidate="txtQuestion">*</asp:RequiredFieldValidator>
                     &nbsp;</p>

                    <%--<uc1:ContactFormLO1 ID="ContactFormLO1" runat="server" />--%>

                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" /> 
                </p>
                    <!--<asp:Panel ID="panelContent" GroupingText="ContentPage Controls" runat="server">
        <asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
        <asp:Button ID="btnContent" runat="server" Text="Button" OnClientClick="Populate();" />
    </asp:Panel>-->
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" style="display:none">
                    <h2>Question Submission</h2>
                    <p>
                        Your question has been sent successfully.
                        <br />We will answer you shortly.
                    </p>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="okButton" runat="server" Text="OK" /></td>
                        </tr>
                    </table>
                </asp:Panel>
    <script type="text/javascript" language="javascript">
        function Populate() {
            {
                document.getElementById('<%=txtContent.ClientID%>').value = "Hi";
            }
        }
    </script>
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnSubmit" PopupControlID="Panel1" BackgroundCssClass="page" OkControlID="" CancelControlID="">
        </asp:ModalPopupExtender>

            </div>            
</asp:Content>



