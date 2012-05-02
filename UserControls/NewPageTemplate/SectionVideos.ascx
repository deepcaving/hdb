<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionVideos.ascx.cs" Inherits="HDBiking.UserControls.NewPageTemplate.SectionVideos" %>
		<!--<link type="text/css" href="~/jquery/css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="~/jquery/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="~/jquery/js/jquery-ui-1.8.18.custom.min.js"></script>-->
<script type="text/javascript" src="~/jquery YoxView/yoxview-init.js"></script>
<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

        <ajaxToolkit:ModalPopupExtender ID="mpeVideo" runat="server" 
            TargetControlID="btnShowPopup" PopupControlID="Panel1" BackgroundCssClass="modalBackground" 
            DropShadow="true" >
        </ajaxToolkit:ModalPopupExtender>

<asp:Panel runat="server" ID="Panel1" CssClass="modalPopup" DefaultButton="btnAdd">
        <fieldset style="margin: 5px; width: 800px; height: 295px;" >
        <legend>Video list</legend>
        <h3>
            Add one or more video links (YouTube or Vimeo).</h3>
            <br />
            &nbsp;
            <table>
                <tr>
                    <td><asp:TextBox ID="txtVideoLink" runat="server" Height="24px" Width="482px" 
                ontextchanged="txtVideoLink_TextChanged"></asp:TextBox></td>
                    <td><asp:Button ID="btnAdd" runat="server" Text="Add" 
                                onclick="btnAdd_Click" UseSubmitBehavior="False"/>&nbsp
                              <asp:Button ID="btnCancel0" runat="server" OnClick="btnCancel_Click" 
                                Text="Back" />
                    </td>
                </tr>
                <tr><td style="height: 7px;"></td></tr>
                <tr>
                    <td><asp:Label ID="lblError" runat="server" Text="The url is invalid" 
                ForeColor="red" Visible="False" style="font-weight: 700"></asp:Label>
            <asp:Label ID="lblInvalidUrl" runat="server" Text="Url already used, please enter another"
            ForeColor="red" Visible="False" style="font-weight: 700"></asp:Label></td>
                </tr>
            </table>
            <asp:GridView ID="gvVideos" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="TRAR_ID" DataSourceID="VideosDS" 
                ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TRAR_ID" HeaderText="TRAR_ID" ReadOnly="True" 
                        SortExpression="TRAR_ID" Visible="False" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="lkbUpdate" runat="server" CausesValidation="True" 
                                CommandName="Update" onclick="lkbUpdate_Click" Text="Update"></asp:LinkButton>
                            &nbsp;| 
                            <asp:LinkButton ID="lkbDelete" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Delete row" onclick="lkbUpdate_Click"></asp:LinkButton>
                            &nbsp;|&nbsp;<asp:LinkButton ID="lkbCancel" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="lkbEdit" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit" onclick="lkbEdit_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="TRAR_PartNum" HeaderText="Part num." 
                        SortExpression="TRAR_PartNum" />
                    <asp:TemplateField HeaderText="Video url" SortExpression="TRAR_VideoUrl">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TRAR_VideoUrl") %>' 
                                Width="300px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TRAR_VideoUrl") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="350px" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="secondVideoDS" runat="server" 
                ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
                SelectCommand="SELECT TRAR_ID, TRAR_TRAN_ID, TRAR_Uploader_ID, TRAR_PartNum, TRAR_Title, TRAR_Plan, TRAR_VideoHost, TRAR_VideoID, TRAR_VideoUrl, TRAR_Length, TRAR_GetDate FROM deepcavi_fra.TR_Artic WHERE (TRAR_Uploader_ID = @TRAR_Uploader_ID) AND (TRAR_TRAN_ID = @TRAR_TRAN_ID) ORDER BY TRAR_PartNum">
                <SelectParameters>
                    <asp:SessionParameter Name="TRAR_Uploader_ID" SessionField="CurrentUser" />
                    <asp:SessionParameter Name="TRAR_TRAN_ID" SessionField="NewTrackId" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <hr />
        <div align="right">
        </div>
    </fieldset>
<asp:SqlDataSource ID="VideosDS" runat="server" 
    ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
    DeleteCommand="DELETE FROM deepcavi_fra.[TR_Artic] WHERE [TRAR_ID] = @TRAR_ID" 
    InsertCommand="INSERT INTO [TR_Artic] ([TRAR_ID], [TRAR_TRAN_ID], [TRAR_Uploader_ID], [TRAR_PartNum], [TRAR_Title], [TRAR_Plan], [TRAR_VideoHost], [TRAR_VideoID], [TRAR_Length], [TRAR_GetDate]) VALUES (@TRAR_ID, @TRAR_TRAN_ID, @TRAR_Uploader_ID, @TRAR_PartNum, @TRAR_Title, @TRAR_Plan, @TRAR_VideoHost, @TRAR_VideoID, @TRAR_Length, @TRAR_GetDate)" 
    SelectCommand="SELECT TRAR_ID, TRAR_TRAN_ID, TRAR_Uploader_ID, TRAR_PartNum, TRAR_Title, TRAR_Plan, TRAR_VideoHost, TRAR_VideoID, TRAR_VideoUrl, TRAR_Length, TRAR_GetDate FROM deepcavi_fra.TR_Artic WHERE (TRAR_Uploader_ID = @TRAR_Uploader_ID) AND (TRAR_TRAN_ID = @TRAR_TRAN_ID) ORDER BY TRAR_PartNum" 
    
            
            
            
            UpdateCommand="UPDATE  [deepcavi_hdb1].[deepcavi_fra].[TR_Artic] SET [TRAR_PartNum] = @TRAR_PartNum, [TRAR_VideoUrl] = @TRAR_VideoUrl WHERE [TRAR_ID] = @TRAR_ID">
    <DeleteParameters>
        <asp:Parameter Name="TRAR_ID" Type="Object" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TRAR_ID" Type="Object" />
        <asp:Parameter Name="TRAR_TRAN_ID" Type="Object" />
        <asp:Parameter Name="TRAR_Uploader_ID" Type="Object" />
        <asp:Parameter Name="TRAR_PartNum" Type="Int16" />
        <asp:Parameter Name="TRAR_Title" Type="String" />
        <asp:Parameter Name="TRAR_Plan" Type="String" />
        <asp:Parameter Name="TRAR_VideoHost" Type="String" />
        <asp:Parameter Name="TRAR_VideoID" Type="String" />
        <asp:Parameter DbType="Time" Name="TRAR_Length" />
        <asp:Parameter Name="TRAR_GetDate" Type="DateTime" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter DefaultValue="" Name="TRAR_Uploader_ID" 
            SessionField="CurrentUser" />
        <asp:SessionParameter Name="TRAR_TRAN_ID" SessionField="NewTrackId" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="TRAR_PartNum" />
        <asp:Parameter Name="TRAR_VideoUrl" />
        <asp:ControlParameter ControlID="gvVideos" Name="TRAR_ID" 
            PropertyName="SelectedValue" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Panel>


