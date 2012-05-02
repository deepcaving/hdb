<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionTitleDescr.ascx.cs" Inherits="HDBiking.UserControls.NewPageTemplate.SectionTitle" %>
<script type="text/javascript">
    function updateTxtTrackName() {
        document.getElementById('txtTrackName').value = document.getElementById('txtTitleName').value;
    }
</script>

<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

            <ajaxToolkit:ModalPopupExtender ID="mpeTitle" runat="server" 
                TargetControlID="btnShowPopup" PopupControlID="Panel1" BackgroundCssClass="modalBackground" 
                DropShadow="true" >
            </ajaxToolkit:ModalPopupExtender>

<asp:Panel runat="server" ID="Panel1" CssClass="modalPopup" DefaultButton="btnSave">
    <fieldset style="margin: 5px; width: 800px">
        <legend>Title section</legend>
        <h3>
            Enter your track's name here (spaces not allowed, see guidelines below)</h3>
        <asp:TextBox ID="txtTrackName" runat="server" Width="500" 
            EnableViewState="False" ViewStateMode="Disabled"></asp:TextBox>
        <asp:Label ID="lblRfvTrackName" runat="server" ForeColor="red" Text="" 
            Visible="true"></asp:Label>
        <hr />
        <h3>
            Extra details (Optional. Spaces allowed, 5 words maximum)</h3>
        <asp:TextBox ID="txtExtraDetails" runat="server" Width="500"></asp:TextBox>
        <asp:Label ID="lblRfvExtraDetails" runat="server" ForeColor="red" 
            Text="" Visible="true"></asp:Label>
        <hr />
        <h3>
            Guidelines:</h3>
        <p>
            The track name has to be in a specific format. Please see the examples below:
            <br />
            New_York-Middletown_2012
            <br />
            or
            <br />
            Arkansas_MTB_Championship_2012
            <br />
            And here is an example of extra detail: pedaling under the rain
        </p>
        <hr />
        <div align="right">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                onclick="btnCancel_Click" />
        </div>
    </fieldset>
</asp:Panel>
