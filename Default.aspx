<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="_Default" Codebehind="Default.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" src="jquery yoxview/yoxview-init.js"></script>
    <style type="text/css">
        .content1 {
            display: none;
        }
        .content2 {
            display: none;
        }
        .content3 
        {
            display:none;
        }        
        .content4 
        {
            display:none;
        }    
        .content5 
        {
            display:none;
        }            
        .content6
        {
            display:none;
        }
        .content7
        {
            display:none;
        }            
        .content8
        {
            display:none;
        }            
        .content9
        {
            display:none;
        }        
        .content10
        {
            display:none;
        }        
        
        
        #pic1 {
            display: block;
        }
        #pic2 {
            display: block;
        }
        #pic3 {
            display: block;
        }
        #pic4 {
            display: block;
        }
        #pic5 {
            display: block;
        }
        #pic6 {
            display: block;
        }
        #pic7 {
            display: block;
        }
        #pic8 {
            display: block;
        }   
        #pic9 {
            display: block;
        }
        #pic10 {
            display: block;
        }                             
    </style>

    <script type="text/javascript">

        function toggleVisibility1(selectedTab) {
            var content1 = document.getElementsByClassName('content1');
            for (var i = 0; i < content1.length; i++) {
                if (content1[i].id == selectedTab) {
                    content1[i].style.display = 'block';
                } else {
                    content1[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility2(selectedTab) {
            var content2 = document.getElementsByClassName('content2');
            for (var i = 0; i < content2.length; i++) {
                if (content2[i].id == selectedTab) {
                    content2[i].style.display = 'block';
                } else {
                    content2[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility3(selectedTab) {
            var content3 = document.getElementsByClassName('content3');
            for (var i = 0; i < content3.length; i++) {
                if (content3[i].id == selectedTab) {
                    content3[i].style.display = 'block';
                } else {
                    content3[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility4(selectedTab) {
            var content4 = document.getElementsByClassName('content4');
            for (var i = 0; i < content4.length; i++) {
                if (content4[i].id == selectedTab) {
                    content4[i].style.display = 'block';
                } else {
                    content4[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility5(selectedTab) {
            var content5 = document.getElementsByClassName('content5');
            for (var i = 0; i < content5.length; i++) {
                if (content5[i].id == selectedTab) {
                    content5[i].style.display = 'block';
                } else {
                    content5[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility6(selectedTab) {
            var content6 = document.getElementsByClassName('content6');
            for (var i = 0; i < content6.length; i++) {
                if (content6[i].id == selectedTab) {
                    content6[i].style.display = 'block';
                } else {
                    content6[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility7(selectedTab) {
            var content7 = document.getElementsByClassName('content7');
            for (var i = 0; i < content7.length; i++) {
                if (content7[i].id == selectedTab) {
                    content7[i].style.display = 'block';
                } else {
                    content7[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility8(selectedTab) {
            var content8 = document.getElementsByClassName('content8');
            for (var i = 0; i < content8.length; i++) {
                if (content8[i].id == selectedTab) {
                    content8[i].style.display = 'block';
                } else {
                    content8[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility9(selectedTab) {
            var content9 = document.getElementsByClassName('content9');
            for (var i = 0; i < content9.length; i++) {
                if (content9[i].id == selectedTab) {
                    content9[i].style.display = 'block';
                } else {
                    content9[i].style.display = 'none';
                }
            }
        }
        function toggleVisibility10(selectedTab) {
            var content10 = document.getElementsByClassName('content10');
            for (var i = 0; i < content10.length; i++) {
                if (content10[i].id == selectedTab) {
                    content10[i].style.display = 'block';
                } else {
                    content10[i].style.display = 'none';
                }
            }
        }
    </script>
    <script type="text/javascript" src="jquery yoxview/yoxview-init.js"></script>
    <script type="text/javascript">
        function showElevation() {
            if(navigator.appName=="Microsoft Internet Explorer") {
                document.write('');
            }
            else {
                document.write('<img alt="" id="imgZoom1" src="Images for html/Icons/zoom.jpg" onclick="" style="width: 30px; height: 30px; padding-left: 300px; padding-bottom: 10px; border-style: none;" />');
            }
        }
    </script>
</asp:Content>
   

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent" >
    <%--LUAN_ImplemDate:--%>
    
<div class="greenBack">
    <div style="margin-top:5px"></div>
        <table>
            <tr style="position:absolute;">
                <td style="width:370px;"></td>
                <!--<td>
                    <p style="font-family:Impact; font-size:2.2em; margin-top:0; padding-left:11px; padding-top:11px; color:#B0212B">HD VIDEOS for your home training</p>
                </td>-->
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images for html/MasterPage/biker on transalpina.jpg" width="900" Height="150" Style="margin-top: -15px;"/>
                </td>
            </tr>
        </table>
    <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td style="vertical-align: top">
                <asp:GridView ID="gvTracks" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="TRAN_ID" DataSourceID="gvDS" AllowPaging="True" PageSize="7"
                    HeaderStyle-Wrap="false" ShowHeader="False" GridLines="None">
                    <Columns>
                        <asp:TemplateField HeaderText="TRAN_GetDate" SortExpression="TRAN_GetDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TRAN_GetDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                                <ItemTemplate>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; ">
                                    <tr>
                                        <td align="left">
                                            <script type="text/javascript">
                                                function redirectPage() {
                                                    window.location = "TrackPage.aspx?Name=" + '<%# Eval("TRAN_Name") %>';
                                                }
                                            </script>
                                            <asp:ImageButton ID="imgBtnDefaultImgBmp" runat="server"  width="200px" height="112px" 
                                                ImageUrl='<%# "~/Images/" + Eval("TRAN_ID") + "/Thumb/1.BMP" %>' 
                                                PostBackUrl='<%# "~/TrackPage.aspx?Name=" + Eval("TRAN_Name") %>' />
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <asp:Panel ID="Panel2" runat="server">
                                                <ul style="list-style: none; padding-left: 0;">
                                                    <li>
                                                        <table border="0" cellpadding="0" cellspacing="0" style="position: absolute">
                                                            <tr>
                                                                <td style="width: 55px;">
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        <a class="trackTitleDefaultPage" style="color: #17335A;" href='<%# "TrackPage.aspx?Name=" + Eval("TRAN_Name") %>'>
                                                                            <%# Eval("TRAN_Name") %></a>
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img id="<%# Eval("TRAN_Category")%>" alt="" src="Images for html/Icons/<%# Eval("TRAN_Category")%>.png"
                                                                        width="45" height="45" style="padding-left: 4px; padding-top: 17px;" />
                                                                </td>
                                                                <td>
                                                                    <div class="yoxview">
                                                                        <a href='<%#  "http://www.gpsies.com/" + Eval("TRAN_BikemapNr")%>'>
                                                                            <script type="text/javascript">                                                                                showElevation()</script>
                                                                        </a>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </li>
                                                    <li>
                                                        <div class="yoxview">
                                                            <a href='<%#  "http://www.gpsies.com/" + Eval("TRAN_BikemapNr")%>'>
                                                                <img name="Elevation1" id="Img2" alt="" src='<%#  "http://www.gpsies.com/" + Eval("TRAN_BikemapNr")%>' width="400"
                                                                    height="112" style="border-style: none;" /></a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr align="left">
                                        <td align="left">
                                            <hr class="hr" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>

            <td valign="top" style="padding-top: 0px;">
            <p><b>LAST UPDATES</b></p>
                <asp:DataList ID="DataList2" runat="server" DataSourceID="dlLastUpdatesDS">
                    <ItemTemplate>
                        <%--LUAN_ImplemDate:--%>
                        <asp:Label ID="LUAN_ImplemDateLabel" runat="server" 
                            Text='<%# Eval("LUAN_ImplemDate") %>' />
                        <br />
                        <%--LUAN_Title:--%>
                        <asp:Label ID="LUAN_TitleLabel" runat="server" 
                            Text='<%# Eval("LUAN_Title") %>' />
                        <br />
                        <%--LUAN_Text:--%>
                        <asp:Label ID="LUAN_TextLabel" runat="server" Text='<%# Eval("LUAN_Text") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
                    
                    SelectCommand="select top 3 LUAN_Title, LUAN_Text, CONVERT(VARCHAR(11), LUAN_ImplemDate, 106) AS LUAN_ImplemDate   FROM deepcavi_fra.LU_Anag ORDER BY LUAN_GetDate DESC">
                </asp:SqlDataSource>
                <%--LUAN_Title:--%><%--LUAN_Text:--%>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>                 
            <td valign="top" style="padding-top:7px;">
                <asp:SqlDataSource ID="dlLastUpdatesDS" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
                    
                    SelectCommand="select top 3 LUAN_Title, LUAN_Text, CONVERT(VARCHAR(11), LUAN_ImplemDate, 106) AS LUAN_ImplemDate   FROM deepcavi_fra.LU_Anag ORDER BY LUAN_GetDate DESC">
                </asp:SqlDataSource>
                
                <asp:SqlDataSource ID="gvDS" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
                    SelectCommand="SELECT TRAN_GetDate, TRAN_ID, TRAN_Name, TRAN_Title, TRAN_Descr, TRAN_ShotDate, TRAN_BikemapUrl, TRAN_BikemapEmbedFullText, TRAN_BikemapNr, TRAN_Enabled, TRAN_DistanceKm, TRAN_DistanceMiles, TRAN_VerticalClimbM, TRAN_VerticalClimbFeet, TRAN_Category, TRAN_CodeAfterMap, TRAN_UserID, TRAN_txtExtraDetails, TRAN_Default_Pic, TRAN_Pic1, TRAN_Pic2, TRAN_Pic3, TRAN_Pic4, TRAN_Pic5, TRAN_Pic6, TRAN_Pic7, TRAN_Pic8, TRAN_Pic9, TRAN_Pic10, TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE (TRAN_Enabled = 'True') ORDER BY TRAN_GetDate DESC">
                </asp:SqlDataSource>
<%--                <asp:ImageButton ID="TransAlpinBike" runat="server" ImageUrl="~/Images for html/Temp Images/geiger.png" Width="236" Height="100"  
                />
                <a href="http://ciclism.ro/maraton/" onclick="window.open('http://ciclism.ro/maraton/', '_blank'); return false;" >
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images for html/Temp Images/geiger.png" Width="250" Height="106"/></a>
--%><%--    <asp:SqlDataSource ID="videoListDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:deepcavi_hdb1 %>" 
        SelectCommand="SELECT DISTINCT (SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1) AS RowID,
	
	o.TRAN_ShotDate,
	
	'slideShow' + CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) AS slideShow,
	
	'toggleVisibility' + CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) AS toggleVisibility,
		
	'content' + CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) AS content,
	
	'pic' + CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) AS pic,
	
	'imgPic' + CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) AS imgPic,
		
	'Image' + CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) AS Image,
	
	
	'Image'+ CONVERT(VARCHAR,(SELECT COUNT(i.TRAN_ID)
	FROM deepcavi_fra.TR_Anag i
	WHERE i.TRAN_ID >= o.TRAN_ID AND i.TRAN_Enabled=1)) + '_Click' AS Image_Click,
	
		
	'nothing' AS getSlides,
	
			
	'Images/'+ p.TRLP_TRAN_Name + '/Thumb/' + p.TRLP_PicName1 AS defaultPicName,
	
o.TRAN_ID, p.TRLP_ID, p.TRLP_Nr, 
p.TRLP_TRAN_Name, 'http://www.gpsies.com/' + o.TRAN_BikemapNr AS BikemapNr,
 
'VideoPages/' + p.TRLP_TRAN_Name + '.aspx' AS strTrackRedirect, 
'~/VideoPages/' + p.TRLP_TRAN_Name + '.aspx' AS PostBackUrl, 

'Images/' + p.TRLP_TRAN_Name + '/Thumb/' + p.TRLP_PicName1 AS defaultPic,
 
REPLACE(p.TRLP_TRAN_Name, '_', ' ') AS TRAN_Name_Title, o.TRAN_Category, 
p.TRLP_PicName1, p.TRLP_PicName2, p.TRLP_PicName3, 
p.TRLP_PicName4, p.TRLP_PicName5, p.TRLP_PicName6, 
p.TRLP_PicName7, p.TRLP_PicName8, p.TRLP_PicName9, 
p.TRLP_PicName10, o.TRAN_BikemapNr, 
o.TRAN_DistanceKm, o.TRAN_DistanceMiles, o.TRAN_VerticalClimbM, 
o.TRAN_VerticalClimbFeet, o.TRAN_Category AS category 
FROM deepcavi_fra.TR_ListPic p INNER JOIN deepcavi_fra.TR_Anag o
ON p.TRLP_TRAN_Name = o.TRAN_Name 
WHERE (o.TRAN_Enabled = '1')
ORDER BY TRAN_ShotDate desc" >
    </asp:SqlDataSource>--%>
            </td>
        </tr>
    </table>


<%--                <p style="margin-bottom:0px"><b>COMING UP TODAY</b></p>
                <p style="margin-top:0px"><font color="red"><b>Geiger</b><br/>Mountain Bike Challenge</font></p>
                <p style="margin-bottom:0px; margin-top:0px"></p>--%>
<%--                <asp:ImageButton ID="TransAlpinBike" runat="server" ImageUrl="~/Images for html/Temp Images/geiger.png" Width="236" Height="100"  
                />
                <a href="http://ciclism.ro/maraton/" onclick="window.open('http://ciclism.ro/maraton/', '_blank'); return false;" >
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images for html/Temp Images/geiger.png" Width="250" Height="106"/></a>
--%>
        <!--<p style="color: red; font-size: x-large; margin-top: 0; margin-bottom:200px;">
            More videos are coming in the next days. Be ready for the ride!<br />
        </p>-->
        
<table>
    <tr>
        <td align="left" style="width: 250px"><a href="http://www.arvixe.com/asp_net_web_hosting" target="_blank">ASP.NET Web Hosting</a>
By Arvixe </td>
        <td align="right"  style="width: 700px"><a href="https://wikimediafoundation.org/wiki/Support_Wikipedia/en"><img border="0" alt="Support Wikipedia" src="//upload.wikimedia.org/wikipedia/commons/4/40/Fundraising_2009-micro-thanks-en.png" /></a></td>
    </tr>
</table>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
</div>
  <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
  <script type="text/javascript" src="Scripts/FlagDiv.js"></script>
</asp:Content>
