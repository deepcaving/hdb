<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionRadios.ascx.cs" Inherits="HDBiking.UserControls.NewPageTemplate.SectionRadios" %>
<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

<ajaxToolkit:ModalPopupExtender ID="mpePictures" runat="server" 
    TargetControlID="btnShowPopup" PopupControlID="pnlRadios" BackgroundCssClass="modalBackground" 
    DropShadow="true" >
</ajaxToolkit:ModalPopupExtender>
        
<asp:Panel runat="server" ID="pnlRadios" CssClass="modalPopup" DefaultButton="btnBack">
    <p>The radio panel is not yet editable.</p><asp:Button ID="btnBack" runat="server" Text="Back" />
</asp:Panel>