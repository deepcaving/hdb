<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionPictures.ascx.cs" Inherits="HDBiking.UserControls.NewPageTemplate.SectionPictures" %>

<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

        <ajaxToolkit:ModalPopupExtender ID="mpePictures" runat="server" 
            TargetControlID="btnShowPopup" PopupControlID="Panel1" BackgroundCssClass="modalBackground" 
            DropShadow="true" >
        </ajaxToolkit:ModalPopupExtender>

        
<asp:Panel runat="server" ID="Panel1" CssClass="modalPopup" DefaultButton="btnUpload">
    <div class="contactInfo">
    <fieldset class="register">
        <legend>Choose track image</legend>
                <span class="failureNotification">
                    <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                </span>                
            <p><asp:Label ID="lblImage" runat="server" Text="Upload file:" 
                    style="font-weight: 700"></asp:Label>
                    <br />
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    <asp:FileUpload ID="FileUpload1" runat="server" OnLoad="FileUpload1_OnLoad"/>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </p>
            <p  class="submitButton">
                
                <asp:Label ID="lblErrorUrl" runat="server" Text="File location is invalid" Visible="False" ForeColor="red"></asp:Label>
                <asp:Label ID="lblOnlyLandscaptImgsPlease" runat="server" Text="Please choose only landscapes images" Visible="False" ForeColor="red"></asp:Label>
                <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                onclick="btnUpload_Click" ValidationGroup="vgUploadImage" />
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Back" />
            </p>
            <p><asp:Image ID="Image1" runat="server" GenerateEmptyAlternateText="True" /></p>            
    </fieldset>
</div>
</asp:Panel>

