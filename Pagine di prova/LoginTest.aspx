<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="HDBiking.Pagine_di_prova.LoginTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="PopupLoginControl.ascx" TagName="PopupLoginControl" TagPrefix="uc1" %>

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
height: 250px;
width:500px;
text-align:left;
}
</style>

<form id="form1" runat="server">

<asp:ScriptManager ID="Scriptmanager1" runat="server" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server">

    <ContentTemplate>

        <asp:LinkButton ID="lnkWriteMessage" runat="server" OnClick="ShowMessage">Write Comments</asp:LinkButton>

        <uc1:PopupLoginControl ID="PopupLoginControl1"  OnLoginStatus="PopupLoginCntl_Completed" 
        Visible="false" runat="server" />

        <asp:Panel ID="divComments" Visible="false" runat="server">

            <table width="50%">
                <tr>
                    <td>
                        <textarea id="txtComments" rows="10" cols="60"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button id="btnSave" runat="server" Text=" Save " onclick="btnSave_Click" />
                    </td>
                </tr>
            </table>

        </asp:Panel>

    </ContentTemplate>

</asp:UpdatePanel>

</form>
