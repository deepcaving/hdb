<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Admin_VideoInfo" Codebehind="VideoInfo.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="TRAR_ID" DataSourceID="dsGvVideoInfo" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TRAR_ID" HeaderText="TRAR_ID" ReadOnly="True" 
                SortExpression="TRAR_ID" />
            <asp:BoundField DataField="TRAR_TRAN_ID" HeaderText="TRAR_TRAN_ID" 
                SortExpression="TRAR_TRAN_ID" />
            <asp:BoundField DataField="TRAR_Part" HeaderText="TRAR_Part" 
                SortExpression="TRAR_Part" />
            <asp:BoundField DataField="TRAR_GetDate" HeaderText="TRAR_GetDate" 
                SortExpression="TRAR_GetDate" />
            <asp:BoundField DataField="TRAR_Plan" HeaderText="TRAR_Plan" 
                SortExpression="TRAR_Plan" />
            <asp:BoundField DataField="TRAR_VideoSource" HeaderText="TRAR_VideoSource" 
                SortExpression="TRAR_VideoSource" />
            <asp:BoundField DataField="TRAR_Url" HeaderText="TRAR_Url" 
                SortExpression="TRAR_Url" />
            <asp:BoundField DataField="TRAR_Length" HeaderText="TRAR_Length" 
                SortExpression="TRAR_Length" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsGvVideoInfo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
        InsertCommand="INSERT INTO deepcavi_fra.TR_Artic(TRAR_TRAN_ID, TRAR_Part, TRAR_Plan, TRAR_VideoSource, TRAR_Url, TRAR_Length) VALUES (@TRAR_TRAN_ID, @TRAR_Part, @TRAR_Plan, @TRAR_VideoSource, @TRAR_Url, @TRAR_Length)" 
        SelectCommand="SELECT TRAR_ID, TRAR_TRAN_ID, TRAR_Part, TRAR_GetDate, TRAR_Plan, TRAR_VideoSource, TRAR_Url, TRAR_Length FROM deepcavi_fra.TR_Artic ORDER BY TRAR_TRAN_ID, TRAR_GetDate">
    </asp:SqlDataSource>
</asp:Content>

