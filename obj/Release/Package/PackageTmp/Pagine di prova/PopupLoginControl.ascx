<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PopupLoginControl.ascx.cs" Inherits="HDBiking.Pagine_di_prova.PopupLoginControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>

<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

<ajaxtoolkit:ModalPopupExtender BackgroundCssClass="modalBackground"
CancelControlID="btnClose" runat="server" PopupControlID="Panel1" ID="ModalPopupExtender1"
TargetControlID="btnShowPopup" />

<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" DefaultButton="btnOk">
    <table width="100%" border="0" cellpadding="2" cellspacing="5">
        <tr>
            <td style="width:35%;padding-top:50px;">
            </td>
            <td>
            <asp:Label id="labMsg" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="right" valign="middle">
                <strong>Email Id :</strong>
            </td>
            <td>
                &nbsp;<asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" valign="middle">
            <strong>Password :</strong>
            </td>
            <td>
            &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnOk" OnClick="Login" runat="server" Text="Sign In" />
                <asp:Button ID="btnClose" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Panel>