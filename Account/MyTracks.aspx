<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyTracks.aspx.cs" Inherits="HDBiking.Account.MyTracks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:Panel runat="server" ID="pnlAll" Height="550">
    <asp:GridView ID="gvMyTracks" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="TRAN_ID" DataSourceID="myTracksDS" 
        ForeColor="Black" GridLines="Vertical" 
        Style="font-size: 1.0em; font-family: Verdana;" 
        onselectedindexchanged="gvMyTracks_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Image" 
                SelectImageUrl="~/Images for html/Icons/edit_doc.png" ShowSelectButton="True" />
            <asp:BoundField DataField="TRAN_Name" HeaderText="Track name" 
                SortExpression="TRAN_Name" />
            <asp:BoundField DataField="TRAN_Default_Pic" HeaderText="Default pic." 
                SortExpression="TRAN_Default_Pic" Visible="False" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Published" SortExpression="TRAN_Enabled">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        Checked='<%# Bind("TRAN_Enabled") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TRAN_Enabled") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="TRAN_CompletionStr" HeaderText="What is missing" 
                SortExpression="TRAN_CompletionStr" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" Font-Size="Medium" Height="30px" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="myTracksDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
        DeleteCommand="DELETE FROM [TR_Anag] WHERE [TRAN_ID] = @TRAN_ID" 
        InsertCommand="INSERT INTO [TR_Anag] ([TRAN_GetDate], [TRAN_ID], [TRAN_Name], [TRAN_Title], [TRAN_Descr], [TRAN_ShotDate], [TRAN_BikemapUrl], [TRAN_BikemapEmbedFullText], [TRAN_BikemapNr], [TRAN_Enabled], [TRAN_DistanceKm], [TRAN_DistanceMiles], [TRAN_VerticalClimbM], [TRAN_VerticalClimbFeet], [TRAN_Category], [TRAN_CodeAfterMap], [TRAN_UserID], [TRAN_txtExtraDetails], [TRAN_Default_Pic], [TRAN_Pic1], [TRAN_Pic2], [TRAN_Pic3], [TRAN_Pic4], [TRAN_Pic5], [TRAN_Pic6], [TRAN_Pic7], [TRAN_Pic8], [TRAN_Pic9], [TRAN_Pic10]) VALUES (@TRAN_GetDate, @TRAN_ID, @TRAN_Name, @TRAN_Title, @TRAN_Descr, @TRAN_ShotDate, @TRAN_BikemapUrl, @TRAN_BikemapEmbedFullText, @TRAN_BikemapNr, @TRAN_Enabled, @TRAN_DistanceKm, @TRAN_DistanceMiles, @TRAN_VerticalClimbM, @TRAN_VerticalClimbFeet, @TRAN_Category, @TRAN_CodeAfterMap, @TRAN_UserID, @TRAN_txtExtraDetails, @TRAN_Default_Pic, @TRAN_Pic1, @TRAN_Pic2, @TRAN_Pic3, @TRAN_Pic4, @TRAN_Pic5, @TRAN_Pic6, @TRAN_Pic7, @TRAN_Pic8, @TRAN_Pic9, @TRAN_Pic10)" 
        SelectCommand="SELECT TRAN_GetDate, TRAN_ID, TRAN_Name, TRAN_Title, TRAN_Descr, TRAN_ShotDate, TRAN_BikemapUrl, TRAN_BikemapEmbedFullText, TRAN_BikemapNr, TRAN_Enabled, TRAN_DistanceKm, TRAN_DistanceMiles, TRAN_VerticalClimbM, TRAN_VerticalClimbFeet, TRAN_Category, TRAN_CodeAfterMap, TRAN_UserID, TRAN_txtExtraDetails, TRAN_Default_Pic, TRAN_Pic1, TRAN_Pic2, TRAN_Pic3, TRAN_Pic4, TRAN_Pic5, TRAN_Pic6, TRAN_Pic7, TRAN_Pic8, TRAN_Pic9, TRAN_Pic10, TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE (TRAN_UserID = @TRAN_UserID)" 
        
        
        UpdateCommand="UPDATE [TR_Anag] SET [TRAN_GetDate] = @TRAN_GetDate, [TRAN_Name] = @TRAN_Name, [TRAN_Title] = @TRAN_Title, [TRAN_Descr] = @TRAN_Descr, [TRAN_ShotDate] = @TRAN_ShotDate, [TRAN_BikemapUrl] = @TRAN_BikemapUrl, [TRAN_BikemapEmbedFullText] = @TRAN_BikemapEmbedFullText, [TRAN_BikemapNr] = @TRAN_BikemapNr, [TRAN_Enabled] = @TRAN_Enabled, [TRAN_DistanceKm] = @TRAN_DistanceKm, [TRAN_DistanceMiles] = @TRAN_DistanceMiles, [TRAN_VerticalClimbM] = @TRAN_VerticalClimbM, [TRAN_VerticalClimbFeet] = @TRAN_VerticalClimbFeet, [TRAN_Category] = @TRAN_Category, [TRAN_CodeAfterMap] = @TRAN_CodeAfterMap, [TRAN_UserID] = @TRAN_UserID, [TRAN_txtExtraDetails] = @TRAN_txtExtraDetails, [TRAN_Default_Pic] = @TRAN_Default_Pic, [TRAN_Pic1] = @TRAN_Pic1, [TRAN_Pic2] = @TRAN_Pic2, [TRAN_Pic3] = @TRAN_Pic3, [TRAN_Pic4] = @TRAN_Pic4, [TRAN_Pic5] = @TRAN_Pic5, [TRAN_Pic6] = @TRAN_Pic6, [TRAN_Pic7] = @TRAN_Pic7, [TRAN_Pic8] = @TRAN_Pic8, [TRAN_Pic9] = @TRAN_Pic9, [TRAN_Pic10] = @TRAN_Pic10 WHERE [TRAN_ID] = @TRAN_ID">
        <DeleteParameters>
            <asp:Parameter Name="TRAN_ID" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TRAN_GetDate" Type="DateTime" />
            <asp:Parameter Name="TRAN_ID" Type="Object" />
            <asp:Parameter Name="TRAN_Name" Type="String" />
            <asp:Parameter Name="TRAN_Title" Type="String" />
            <asp:Parameter Name="TRAN_Descr" Type="String" />
            <asp:Parameter Name="TRAN_ShotDate" Type="DateTime" />
            <asp:Parameter Name="TRAN_BikemapUrl" Type="String" />
            <asp:Parameter Name="TRAN_BikemapEmbedFullText" Type="String" />
            <asp:Parameter Name="TRAN_BikemapNr" Type="String" />
            <asp:Parameter Name="TRAN_Enabled" Type="Boolean" />
            <asp:Parameter Name="TRAN_DistanceKm" Type="Decimal" />
            <asp:Parameter Name="TRAN_DistanceMiles" Type="Decimal" />
            <asp:Parameter Name="TRAN_VerticalClimbM" Type="Int32" />
            <asp:Parameter Name="TRAN_VerticalClimbFeet" Type="Decimal" />
            <asp:Parameter Name="TRAN_Category" Type="String" />
            <asp:Parameter Name="TRAN_CodeAfterMap" Type="String" />
            <asp:Parameter Name="TRAN_UserID" Type="Object" />
            <asp:Parameter Name="TRAN_txtExtraDetails" Type="String" />
            <asp:Parameter Name="TRAN_Default_Pic" Type="Byte" />
            <asp:Parameter Name="TRAN_Pic1" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic2" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic3" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic4" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic5" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic6" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic7" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic8" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic9" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic10" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="TRAN_UserID" SessionField="CurrentUser" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TRAN_GetDate" Type="DateTime" />
            <asp:Parameter Name="TRAN_Name" Type="String" />
            <asp:Parameter Name="TRAN_Title" Type="String" />
            <asp:Parameter Name="TRAN_Descr" Type="String" />
            <asp:Parameter Name="TRAN_ShotDate" Type="DateTime" />
            <asp:Parameter Name="TRAN_BikemapUrl" Type="String" />
            <asp:Parameter Name="TRAN_BikemapEmbedFullText" Type="String" />
            <asp:Parameter Name="TRAN_BikemapNr" Type="String" />
            <asp:Parameter Name="TRAN_Enabled" Type="Boolean" />
            <asp:Parameter Name="TRAN_DistanceKm" Type="Decimal" />
            <asp:Parameter Name="TRAN_DistanceMiles" Type="Decimal" />
            <asp:Parameter Name="TRAN_VerticalClimbM" Type="Int32" />
            <asp:Parameter Name="TRAN_VerticalClimbFeet" Type="Decimal" />
            <asp:Parameter Name="TRAN_Category" Type="String" />
            <asp:Parameter Name="TRAN_CodeAfterMap" Type="String" />
            <asp:Parameter Name="TRAN_UserID" Type="Object" />
            <asp:Parameter Name="TRAN_txtExtraDetails" Type="String" />
            <asp:Parameter Name="TRAN_Default_Pic" Type="Byte" />
            <asp:Parameter Name="TRAN_Pic1" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic2" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic3" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic4" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic5" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic6" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic7" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic8" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic9" Type="Boolean" />
            <asp:Parameter Name="TRAN_Pic10" Type="Boolean" />
            <asp:Parameter Name="TRAN_ID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Panel>
</asp:Content>
