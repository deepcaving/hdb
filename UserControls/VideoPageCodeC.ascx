<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_VideoPageCodeC" Codebehind="VideoPageCodeC.ascx.cs" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 31px;
        }
    </style>   
    <p align="center"><b>
        <asp:Label ID="Label2" runat="server" Text="Comments" style="text-align:left"></asp:Label></b>                        
    </p>
    <hr style="width: 736px; margin-left: 0px" />
    <asp:GridView ID="gvCoLevel0" runat="server" AutoGenerateColumns="False" 
        DataSourceID="dsGvCoLevel0"
        BorderStyle="None" BorderWidth="0px" BorderColor="White"
        HeaderStyle-Wrap="false" ShowHeader="True" Width="736px" >
        <Columns>
            <asp:TemplateField HeaderText="COAN_TEXT" SortExpression="COAN_TEXT" 
                ItemStyle-BorderStyle="None" HeaderStyle-BorderStyle="None" 
                InsertVisible="False" ShowHeader="True">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <table>
                    <tr>
                        <td rowspan="2"  valign="top">
                            <asp:Image ID="Image1" runat="server" 
                                ImageUrl='<%# Bind("imgPath") %>' 
                                Width="70px" BorderStyle="Solid" BorderColor="GrayText" BorderWidth="1px"/>
                        </td>
                        <td style="padding-left:15px; color:Teal; font-weight:bolder;" valign="top">
                            <asp:Label ID="lblUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text=', ' ForeColor="Black"></asp:Label>
                            <asp:Label ID="lblTimeGone" runat="server" Text='<%# Bind("daysGone") %>' ForeColor="Black"></asp:Label>
                            <asp:Label ID="lblTime1" runat="server" Text=' days, ' ForeColor="Black"></asp:Label>
                            <asp:Label ID="lblHoursGone" runat="server" Text='<%# Bind("hoursGone") %>' ForeColor="Black"></asp:Label>
                            <asp:Label ID="lblTime2" runat="server" Text=' hours, ' ForeColor="Black"></asp:Label>
                            <asp:Label ID="lblMinutesGone" runat="server" Text='<%# Bind("minutesGone") %>' ForeColor="Black"></asp:Label>
                            <asp:Label ID="lblTime3" runat="server" Text=' minutes ago' ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:15px;">
                            <asp:TextBox ID="txtOutputCoLevel0" runat="server" Width="500" Enabled="False" 
                                TextMode="MultiLine" Visible="false" BorderStyle="None"></asp:TextBox>
                            <asp:Label ID="lblCoText" runat="server" Text='<%# Bind("COAN_TEXT") %>'></asp:Label>                    
                        </td>
                    </tr>
                </table>                    
                    <hr />
                    <asp:HtmlEditorExtender ID="txtOutputCoLevel0_HtmlEditorExtender" runat="server" Enabled="true"
                        TargetControlID="txtOutputCoLevel0">
                        <Toolbar>
                            <asp:Bold />
                            <asp:BackgroundColorSelector />                                            
                        </Toolbar>
                    </asp:HtmlEditorExtender>
                </ItemTemplate>
                <EditItemTemplate>
                </EditItemTemplate>

<HeaderStyle BorderStyle="None"></HeaderStyle>

<ItemStyle BorderStyle="None"></ItemStyle>
            </asp:TemplateField>
        </Columns>

<HeaderStyle Wrap="False"></HeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="dsGvCoLevel0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>"         
        
        SelectCommand="use deepcavi_hdb1
            SELECT deepcavi_fra.CO_An.COAN_ID, deepcavi_fra.CO_An.COAN_TEXT, deepcavi_fra.CO_An.COAN_TRAN_ID, 
            deepcavi_fra.CO_An.COAN_UserId, deepcavi_fra.CO_An.COAN_ID_FROM, deepcavi_fra.CO_An.COAN_GetDate, 
            getdate() as getDate,
            deepcavi_fra.CO_An.COAN_Level, '~/Images/a_User_Avatars/' + CONVERT (VARCHAR(50), 
            deepcavi_fra.CO_An.COAN_UserId) + '/sAvatar_' + CONVERT (VARCHAR(50), 
            deepcavi_fra.CO_An.COAN_UserId) + '.bmp' AS imgPath,           
            CASE            
				WHEN deepcavi_fra.MB_UserDetails.MBUD_DisplayName = '' THEN dbo.aspnet_Users.UserName
				WHEN deepcavi_fra.MB_UserDetails.MBUD_DisplayName IS NULL THEN dbo.aspnet_Users.UserName
				ELSE deepcavi_fra.MB_UserDetails.MBUD_DisplayName
			END
			AS UserName,
			dbo.aspnet_Users.UserName as usn,
            CAST(CONVERT(datetime,getdate()) as float) as getDateNum,
            CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float) as coDateNum,
            
            CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float) 
            AS timeGoneNum,
                                    
            CAST(CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float) AS INT) 
            AS daysGone,
            
            CAST((CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float)
            -FLOOR(CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float)))
            *24 AS INT)
            AS hoursGone,
                        
            CASE
            CAST(((CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float))*24 - CAST((CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float))*24 AS INT))*60 AS INT)
            WHEN 60 THEN 0
            ELSE CAST(((CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float))*24 - CAST((CAST(CONVERT(datetime,getdate()) as float) - CAST(CONVERT(datetime,deepcavi_fra.CO_An.COAN_GetDate) as float))*24 AS INT))*60 AS INT)
            END
            AS minutesGone
            
            FROM deepcavi_fra.CO_An             
            LEFT OUTER JOIN dbo.aspnet_Users ON deepcavi_fra.CO_An.COAN_UserId = dbo.aspnet_Users.UserId 
            LEFT OUTER JOIN deepcavi_fra.MB_UserDetails ON dbo.aspnet_Users.UserId = deepcavi_fra.MB_UserDetails.MBUD_Users_UserId
            WHERE (deepcavi_fra.CO_An.COAN_Level = 0) AND deepcavi_fra.CO_An.COAN_TRAN_ID = @COAN_TRAN_ID
            ORDER BY deepcavi_fra.CO_An.COAN_GetDate
">
        <SelectParameters>
            <asp:SessionParameter Name="COAN_TRAN_ID" SessionField="TranId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LoginView ID="CommentLoginView" runat="server" EnableViewState="false">
                    <AnonymousTemplate>
                        <asp:Image ID="imgPlease" runat="server" ImageUrl="~/Images for html/Icons/plsLogInToPostComment.bmp"/>                        
                        <br />
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <table border="0" cellpadding="0" cellspacing="0">
<%--                            <tr>
                                <td style="padding-bottom:3px;">
                                    <asp:Image ID="ImgNewCo" runat="server" ImageUrl="~/Images for html/Icons/Comments/comments_newmsg.gif" style="vertical-align:bottom;"/>
                                    <asp:Label ID="lblNewCo" runat="server" Text="Add a comment"></asp:Label>
                                </td>
                            </tr>--%>
                            <tr>
                                <td>                                
                                    <asp:TextBox ID="txtInputCo" runat="server" Width="500" Height="100"></asp:TextBox>
                                    <asp:HtmlEditorExtender ID="txtInputCo_HtmlEditorExtender" runat="server" Enabled="True"
                                        TargetControlID="txtInputCo">
                                        <Toolbar>
                                            <asp:Undo />
                                            <asp:Redo />
                                            <asp:Bold />
                                            <asp:Italic />
                                            <asp:Underline />
                                            <asp:InsertOrderedList />
                                            <asp:InsertUnorderedList  />
                                            <asp:CreateLink />
                                            <asp:UnLink />
                                            <asp:RemoveFormat />
                                            <asp:BackgroundColorSelector />  
                                            <asp:ForeColorSelector />                                                                                  
                                        </Toolbar>
                                    </asp:HtmlEditorExtender>
                                </td>
                            </tr>
                            <tr>
                                <td style='padding-top:15px'>
                                    <asp:Button ID="btnSumbitComment" runat="server" Text="Post comment" OnClick="BtnSumbitComment_Click" CausesValidation="True" />
                                </td>
                            </tr>
                        </table>
                        <hr />
                    </LoggedInTemplate>
                </asp:LoginView></div><!--this is the end of div myPadding from VideoPageCode-->
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
