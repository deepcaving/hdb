<%@ Control Language="C#" AutoEventWireup="true" Inherits="ExtraContent1" Codebehind="ExtraContent1.ascx.cs" %>

<% =PGenerateCode %>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
    
    SelectCommand="SELECT TRAN_CodeAfterMap FROM deepcavi_fra.TR_Anag WHERE (TRAN_Name = @TRAN_Name)">
    <SelectParameters>
        <asp:SessionParameter Name="TRAN_Name" SessionField="pageName" />
    </SelectParameters>
</asp:SqlDataSource>
