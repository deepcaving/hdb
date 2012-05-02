<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPageTemplate.aspx.cs" Inherits="HDBiking.Account.NewPageTemplate" %>
<%@ Register src="../UserControls/NewPageTemplate/SectionTitleDescr.ascx" tagname="SectionTitleDescr" tagprefix="uc1" %>
<%@ Register src="../UserControls/NewPageTemplate/SectionDescription.ascx" tagname="SectionDescription" tagprefix="uc2" %>
<%@ Register src="../UserControls/NewPageTemplate/SectionVideos.ascx" tagname="SectionVideos" tagprefix="uc3" %>
<%@ Register src="../UserControls/NewPageTemplate/SectionPictures.ascx" tagname="SectionPictures" tagprefix="uc4" %>
<%@ Register src="../UserControls/NewPageTemplate/InputWinVideos.ascx" tagname="InputWinVideos" tagprefix="uc5" %>
<%@ Register src="../UserControls/NewPageTemplate/SectionMap.ascx" tagname="SectionMap" tagprefix="uc6" %>

<%@ Register TagPrefix="uc7" Namespace="HDBiking.UserControls.NewPageTemplate" Assembly="HDBiking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- http://deepumi.wordpress.com/2010/03/20/asp-net-3-5-ajax-modal-popup-extender-with-user-control-event-bubbling/ -->
    <style type="text/css">
    .modalBackground
    {
    background-color: Gray;
    filter: alpha(opacity=70);
    opacity: 0.7;
    }
    .modalPopup
    {
    background-color: White;
    height: 100%;
    width: 100%;
    text-align:left;
    }
    .tdGray
    {
        background-color: lightgray;
        color: black;
    }
    .tdWhite
    {
        background-color: White;
        color: black;
    }
    .tdRedBorder 
    {
        border: solid;
        border-color: red;
        border-width: 2px;    
    }
    .tdNoBorder 
    {
        border: solid;
        border-color: red;
        border-width: 2px;             
    }
    </style>
    <script type="text/javascript" src="../jquery YoxView/yoxview-init.js"></script>
    <script type="text/javascript">
        var category;
        function ShowBorder(category) {
            var myTd = document.getElementById(category);
            myTd.style.border = "solid";
            myTd.style.borderColor = "red";
            myTd.style.borderWidth = "2px";
        }
    </script>
    <script type="text/javascript">
        var category;

        function HideBorder(category) {
            var myTd = document.getElementById(category);
            myTd.style.border = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1>Custom page generator</h1>
    <asp:LoginView ID="LoginView1" runat="server">
    <LoggedInTemplate>
        
    </LoggedInTemplate>
    <AnonymousTemplate></AnonymousTemplate>
    </asp:LoginView>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table  style="border-top: 1px dashed #A3FF5B; border-collapse: collapse" ><!--rules="all"-->
                <tr>                    
                    <td id="tdTitle" class="tdGray" runat="server" style="border-top: 1px dashed #A3FF5B;">
                            <p style="color: black;" >
                                <asp:Label ID="lblTitle" runat="server" Text="Here goes the title"></asp:Label></p>
                    </td>
                    <td id="tdTitleDx" class="tdGray" runat="server" style="border-top: 1px dashed #A3FF5B;">
                        <asp:ImageButton ID="imgBtnEditSectionTitle" runat="server" 
                            ImageUrl="../Images for html/Icons/Edit.png" ToolTip="Edit title" 
                            onclick="imgBtnEditSectionTitle_Click" />
                        <uc1:SectionTitleDescr ID="SectionTitle1" runat="server" 
                                OnCompletedStatus="SectionTitle_Completed" Visible="false" />
                    </td>                    
                </tr>
                <tr>
                    <td class="hr">
                        <tr>
                            <td id="tdDescription" class="tdGray" runat="server" style="width: 100%;">
                                <p style="color: black">
                                    <asp:Label ID="lblDescription" runat="server" 
                                        Text="Add a comprehensive description of the track"></asp:Label>
                                </p>
                            </td>
                            <td id="tdDescriptionDx" runat="server" class="tdGray" style="border-top: 1px dashed #A3FF5B;">
                                <asp:ImageButton ID="imgBtnEditSectionDescription" runat="server" 
                                    ImageUrl="../Images for html/Icons/Edit.png" 
                                    onclick="imgBtnEditSectionDescription_Click" ToolTip="Edit description" />
                                <uc2:SectionDescription ID="SectionDescription1" runat="server" 
                                    OnCompletedStatus="SectionDescription_Completed" Visible="false" />
                            </td>
                        </tr>
					</td>
				</tr>
                <tr>
                    <td class="hr">
                        <tr>
                            <td colspan="2" ID="tdPictures" runat="server" class="tdGray" style="width: 1px; vertical-align: top; border-bottom: 1px dashed #A3FF5B; border-width: 2px;">
                                <div style="float: left;">
                                    <uc3:SectionVideos ID="SectionVideos1" runat="server" 
                                        OnCompletedStatus="SectionVideos_Completed" Visible="false" />
                                                <table id="tblPics" runat="server">
                                                    <tr>
														<td rowspan="2" style="padding-right: 20px; color: black">
															<asp:MultiView ID="MultiViewVideos" runat="server">
																<asp:View ID="ViewGray" runat="server">
																	<asp:ImageButton ID="imgEditSectionVideosGray" runat="server" 
																		ImageUrl="~/Images for html/NewPageTemplate/go to videos - NewPageTemplate Gray.png" onclick="imgBtnEditSectionVideos_Click" />
																</asp:View>
																<asp:View ID="ViewWhite" runat="server">
																	<uc5:InputWinVideos ID="InputWinVideos1" runat="server" />
																		<asp:ImageButton ID="imgEditSectionVideosWhite" 
                                                                        src="../Images for html/Temp Images/go to videos.png" alt="" title="Part 1" 
                                                                        width="247px" height="190"  runat="server" 
                                                                        onclick="imgBtnEditSectionVideosWhite_Click"/>
																</asp:View>
															</asp:MultiView>
														</td>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic1" runat="server">
                                                                <asp:View ID="ViewPic1empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg1" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic1filled" runat="server">
                                                                    <asp:ImageButton ID="Img1" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                        <td>
                                                        <asp:MultiView ID="MultiViewPic2" runat="server">
                                                                <asp:View ID="ViewPic2empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg2" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />
                                                                </asp:View>
                                                                <asp:View ID="ViewPic2filled" runat="server">
                                                                    <asp:ImageButton ID="Img2" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic3" runat="server">
                                                                <asp:View ID="ViewPic3empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg3" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic3filled" runat="server">
                                                                    <asp:ImageButton ID="Img3" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>                                                                    
                                                        </td>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic4" runat="server">
                                                                <asp:View ID="ViewPic4empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg4" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic4filled" runat="server">
                                                                    <asp:ImageButton ID="Img4" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic5" runat="server">
                                                                <asp:View ID="ViewPic5empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg5" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic5filled" runat="server">
                                                                    <asp:ImageButton ID="Img5" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic6" runat="server">
                                                                <asp:View ID="ViewPic6empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg6" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic6filled" runat="server">
                                                                    <asp:ImageButton ID="Img6" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic7" runat="server">
                                                                <asp:View ID="ViewPic7empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg7" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic7filled" runat="server">
                                                                    <asp:ImageButton ID="Img7" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                        <td>
                                                            <asp:MultiView ID="MultiViewPic8" runat="server">
                                                                <asp:View ID="ViewPic8empty" runat="server">
                                                                    <asp:ImageButton ID="demoImg8" runat="server" Height="90" Width="160" ImageUrl="~/Images for html/NewPageTemplate/demoPicForEmptyContent.bmp" onclick="demoImg_Click" />    
                                                                </asp:View>
                                                                <asp:View ID="ViewPic8filled" runat="server">
                                                                    <asp:ImageButton ID="Img8" runat="server" Height="90" Width="160" onclick="demoImg_Click" />
                                                                </asp:View>
                                                            </asp:MultiView>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <uc4:SectionPictures ID="SectionPictures1" runat="server" 
                                                    OnCompletedStatus="SectionPictures_Completed" Visible="False"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Image ID="imgRadioPlayer" runat="server" 
                                    ImageUrl="../Images for html/NewPageTemplate/radio player Large.jpg" 
                                    ToolTip="Edit radios" />
                                <asp:ImageButton ID="imgBtnRadioPlayer" runat="server" ImageAlign="Right"
                                    ImageUrl="../Images for html/Icons/Edit.png" 
                                    Style="position: relative; right: 240px; top: -120px;" ToolTip="Edit radios" Visible="False"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:MultiView ID="MultiViewMap" runat="server">
                                    <asp:View ID="ViewEmptyMap" runat="server">
                                        <asp:ImageButton ID="imgBtnMap" runat="server" 
                                    ImageUrl="../Images for html/NewPageTemplate/mapGray Large.jpg" 
                                    ToolTip="Edit map" onclick="imgBtnMap_Click" />
                                    </asp:View>
                                    <asp:View ID="ViewFilledMap" runat="server">
                                        <asp:UpdatePanel ID="UpdatePanelMap" runat="server">
                                            <ContentTemplate>
                                                <% =pGeneratecode %>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>
                                </asp:MultiView>
                                    <asp:ImageButton ID="imgBtnEditSectionMap" runat="server" 
                                    ImageUrl="../Images for html/Icons/Edit.png" ImageAlign="Right"
                                    Style="position: relative; right: 9px; top: -263px;" ToolTip="Edit map" 
                                    onclick="imgBtnMap_Click" />
                                <uc6:SectionMap ID="SectionMap1" runat="server" 
                                OnCompletedStatus="SectionMap_Completed" Visible="False"/>
                            </td>
                        </tr>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <fieldset class="register" style="width: 400px">
                            <legend>Choose the track type</legend>
                            <asp:UpdatePanel runat="server" ID="updatePanelCategory">
                            <ContentTemplate>
                            <table>
                                <tr>
                                    <td><p>Trail</p></td>
                                    <td></td>
                                    <td><p>Asphalt</p></td>
                                </tr>                       
                                <tr>
                                    <td id="tdTrail">
                                            <asp:ImageButton ID="imbTrail" runat="server" 
                                                ImageUrl="../Images for html/Icons/Trail.png" onclick="imbTrail_Click" />
                                    </td>
                                    <td style="width:50px">
                                    </td>
                                        <td id="tdAsphalt">
                                                <asp:ImageButton ID="imbAsphalt" runat="server" 
                                                    ImageUrl="../Images for html/Icons/Asphalt.png" onclick="imbAsphalt_Click" />
                                    </td>
                                </tr>
                            </table>
                            <p>Please click the chosen icon twice</p>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                        </fieldset>
                    </td>
                    <td style="width: 50px;"></td>
                    <td>
                        <fieldset class="register" style="width: 400px">
                        <legend>Publish info</legend>
                            <asp:Button ID="btnMakePublic" runat="server" Text="Make public" 
                                Font-Bold="True" ForeColor="green" Enabled="False" 
                                onclick="btnMakePublic_Click"/>
                                &nbsp;
                            <asp:Button ID="btnMakePrivate" runat="server" Text="Make private" 
                                Font-Bold="True" ForeColor="red"
                                onclick="btnMakePrivate_Click"/>
                            <p>What if missing before publishing:<br/>
                            <asp:Label ID="lblWhatIsMissing" runat="server" Text=""></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="lblLinkToYourPage" runat="server" 
                                    Text="Link to this page on the web:"></asp:Label>
                            </p>
                            <p>
                                <a href="<% =pCreatePageUrl %>">
                                <asp:Label ID="lblSeeYourNewPageOnline" runat="server" BackColor="yellow" 
                                    Text="See your new page online at this link:" Visible="False"></asp:Label>
                                <% =pCreatePageUrl %></a>
                            </p>
                            </fieldset>
                    </td>
                </tr>
            </table>
        </ContentTemplate>       
    </asp:UpdatePanel>
    <br/>
</asp:Content>
