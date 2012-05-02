<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionDescription.ascx.cs" Inherits="HDBiking.UserControls.NewPageTemplate.SectionDescription" %>

<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

        <ajaxToolkit:ModalPopupExtender ID="mpeDescription" runat="server" 
            TargetControlID="btnShowPopup" PopupControlID="Panel1" BackgroundCssClass="modalBackground" 
            DropShadow="true" >
        </ajaxToolkit:ModalPopupExtender>

<asp:Panel runat="server" ID="Panel1" CssClass="modalPopup" DefaultButton="btnSave">
    <fieldset style="margin: 5px; width: 800px; height: 295px;" >
        <legend>Description section</legend>
        <h3>
            Write a comprehensive description</h3>
        <asp:TextBox ID="txtDescription" runat="server" Width="799px" 
            EnableViewState="False" ViewStateMode="Disabled" Height="201px" 
            TextMode="MultiLine" ontextchanged="txtDescription_TextChanged"></asp:TextBox>
        <br />
        <div align="right">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                onclick="btnCancel_Click" />
        </div>
        <div align="right">
            <asp:Label ID="lblRfvEmptyText" runat="server" Text="Please enter a description" ForeColor="red" Visible="False"></asp:Label>
        </div>
    </fieldset>
</asp:Panel>