<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Account_UserSettings" Codebehind="MyAccount.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>MY ACCOUNT</h2>
    <asp:ValidationSummary ID="AccountInfoValidationSummary" runat="server" CssClass="failureNotification" 
        ValidationGroup="ChangeUserPasswordValidationGroup"/>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width:580px;">
                <div class="accountInfo">
                    <fieldset class="register">
                        <legend>Basic account information</legend>
                        <table width="550">
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblFirstName" runat="server" Text="First name:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtFirstName" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtFirstName" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblLastName" runat="server" Text="Last name:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtLastName" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtLastName" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblFullName" runat="server" Text="Full name:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtFullName" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtFullName" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblDisplayName" runat="server" Text="Display name:" 
                                            ToolTip="The name that is going to be displayed in your public profile page and comments instead of the user name"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtDisplayName" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvDisplayName" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtDisplayName" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    <fieldset class="register">
                        <legend>Public information</legend>
                        <table width="550">
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblPublicEmail" runat="server" Text="Public email:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtPublicEmail" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPublicEmail" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtPublicEmail" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblAIM" runat="server" Text="AIM:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtAIM" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvAIM" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtAIM" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblGTalk" runat="server" Text="GTalk:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtGTalk" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvGTalk" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtGTalk" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblICQ" runat="server" Text="ICQ:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtICQ" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvICQ" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtICQ" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblLiveMessenger" runat="server" Text="Live Messenger:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtLiveMessenger" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvLiveMessenger" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtLiveMessenger" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblSkype" runat="server" Text="Skype:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtSkype" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvSkype" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtSkype" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblJabber" runat="server" Text="Jabber:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtJabber" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvJabber" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtJabber" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblYahoo" runat="server" Text="Yahoo!:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtYahoo" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvYahoo" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtYahoo" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblMobilePhone1" runat="server" Text="Mobile Phone 1:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtMobilePhone1" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMobilePhone1" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtMobilePhone1" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblMobileProvider1" runat="server" Text="Mobile Provider 1:" Style="margin-left: 20px;"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtMobileProvider1" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMobileProvider1" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtMobileProvider1" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblMobilePhone2" runat="server" Text="Mobile Phone 2:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtMobilePhone2" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMobilePhone2" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtMobilePhone2" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblMobileProvider2" runat="server" Text="Mobile Provider 2:" Style="margin-left: 20px;"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtMobileProvider2" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMobileProvider2" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtMobileProvider2" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblMobilePhone3" runat="server" Text="Mobile Phone 3:"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtMobilePhone3" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMobilePhone3" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtMobilePhone3" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblMobileProvider3" runat="server" Text="Mobile Provider 3:" Style="margin-left: 20px;"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtMobileProvider3" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMobileProvider3" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtMobileProvider3" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        <asp:Label ID="lblWorkPhone" runat="server" Text="Work phone"></asp:Label></p>
                                </td>
                                <td align="right">
                                    <p>
                                        <asp:TextBox ID="txtWorkPhone" runat="server" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvWorkPhone" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtWorkPhone" CssClass="failureNotification" ValidationGroup="AccountInfValidationSummary">*</asp:RequiredFieldValidator></p>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
            </td>
            <td style="width:300px; vertical-align:top;padding-left:5px;">
            <fieldset class="register" style="width:310px;">
                        <legend>Public image</legend>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images for html/Icons/emptyAvatarBig.jpg" 
                    BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"
                    style="padding-bottom:20px;"/>             
                        &nbsp                                    
                <asp:Panel runat="server" ID="pnlIcons" style="position:relative; vertical-align:middle; margin-top:-24px; margin-left:32px;" 
                    BorderColor="Gray" Width="60px" HorizontalAlign="Center" >
                    <asp:ImageButton ID="imgUpload" runat="server" ImageUrl="~/Images for html/Icons/reupload.png"
                        ToolTip="Upload" />&nbsp
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/Images for html/Icons/delete.png"
                        ToolTip="Delete" onclick="imgDelete_Click" />
                </asp:Panel>                           
                <asp:Panel ID="pnlChangeImage" runat="server">
                        <p>
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server"/>                            
                        </p>
                        <p>
                            <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                                Text="Upload" ValidationGroup="vgUploadImage" />
                        </p>
                </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="pnlChangeImage_CollapsiblePanelExtender" 
                            runat="server" Enabled="True" TargetControlID="pnlChangeImage" Collapsed="true"
                            ExpandControlID="imgUpload" CollapseControlID="imgUpload" SuppressPostBack="true">
                        </ajaxToolkit:CollapsiblePanelExtender>
                </fieldset>
                <fieldset class="register" style="width:310px;">
                    <legend>My tracks</legend>
                </fieldset>
                <asp:Panel runat="server" Style="margin-top: 30px; margin-left: 18px;">
                    <asp:Button ID="btnEditPublicProfilePage" runat="server" Text="Edit public profile page"
                        Height="30" PostBackUrl="~/Account/PublicProfilePageGenerator.aspx"/></asp:Panel>
                <asp:Panel runat="server" Style="margin-top: 30px; margin-left: 18px;">
                    <asp:Button ID="btnEditMyTracks" runat="server" Text="Edit my tracks"
                        Height="30" PostBackUrl="~/Account/MyTracks.aspx"/></asp:Panel>
   
            </td>
        </tr>
    </table>
    <div>
            <asp:Button ID="btnOk" runat="server" Text="OK" Width="70" Height="30" 
                style="margin-left:470px;" onclick="btnOk_Click"/>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    </div>
</asp:Content>

