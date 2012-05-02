<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_RadioPlayerGuest" Codebehind="RadioPlayerGuest.ascx.cs" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Panel ID="pnlHeader" runat="server" Width="934px"  Height="54px" BackColor="#DEF5FF" BorderColor="#636DD8" >
    <table>
        <tr style="height:10px;">
            <td style="padding-left:100px;">
                <asp:Image ID="imgMusic" runat="server" ImageUrl="~/Images for html/Icons/musicIcon-blue.bmp" Width="40" Height="49"/>
            </td>
            <td style="width:300px; padding-left:30px;"><p><b>Radio player</b></p></td>
            <td style="width:70px; padding-left:220px;" align="right"><asp:Image ID="imgToggle" runat="server" 
                    ImageUrl="~/Images for html/Icons/collapse.jpg" Height="16px" /></td>
        </tr>
    </table>         
    </asp:Panel>
    <asp:RoundedCornersExtender ID="pnlHeader_RoundedCornersExtender" 
        runat="server" Enabled="True" TargetControlID="pnlHeader">
    </asp:RoundedCornersExtender>
    <asp:Panel runat="server" ID="pnlBorder" BackColor="#636DD8" Width="930" style="padding-left:5px;padding-top:5px; padding-bottom:5px;">
        <asp:Panel ID="pnlRadioPlayer" runat="server" Width="924px" BackColor="AliceBlue">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 200px;">
                                    <p>
                                        &nbsp Hip hop</p>
                                </td>
                                <td style="width: 180px; padding-top: 7px;">
                                    <div style="z-index:1; position:absolute;">
                                        <object id="myId" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" type="application/x-shockwave-flash"
                                            data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
                                            <param name="movie" value="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" />
                                            <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://streaming204.radionomy.com:80/Hit-s-My-Music-Power&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
                                        	<!--[if !IE]>-->
			                                <object type="application/x-shockwave-flash" data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
			                                <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://streaming204.radionomy.com:80/Hit-s-My-Music-Power&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
			                                <!--<![endif]-->
			                                <div>
				                                <h1>Alternative content</h1>
				                                <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
			                                </div>
			                                <!--[if !IE]>-->
			                                </object>
			                                <!--<![endif]-->
                                        </object>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 200px;">
                                    <p>
                                        &nbsp Classical music</p>
                                </td>
                                <td style="width: 180px; padding-top: 7px;">
                                    <div style="z-index:1; position:absolute;">
                                        <object id="Object1" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" type="application/x-shockwave-flash"
                                            data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
                                            <param name="movie" value="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" />
                                            <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://glb-stream11.streaming.init7.net:80/1/rsc_fr/mp3_128&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
                                        	<!--[if !IE]>-->
			                                <object type="application/x-shockwave-flash" data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
			                                <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://glb-stream11.streaming.init7.net:80/1/rsc_fr/mp3_128&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
			                                <!--<![endif]-->
			                                <div>
				                                <h1>Alternative content</h1>
				                                <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
			                                </div>
			                                <!--[if !IE]>-->
			                                </object>
			                                <!--<![endif]-->
                                        </object>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 200px;">
                                    <p>
                                        &nbsp Classic rock</p>
                                </td>
                                <td style="width: 180px; padding-top: 7px;">
                                    <div style="z-index:1; position:absolute;">
                                        <object id="Object2" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" type="application/x-shockwave-flash"
                                            data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
                                            <param name="movie" value="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" />
                                            <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://icecast.playlouder.com:80/totalrock&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
                                        	<!--[if !IE]>-->
			                                <object type="application/x-shockwave-flash" data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
			                                <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://icecast.playlouder.com:80/totalrock&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
			                                <!--<![endif]-->
			                                <div>
				                                <h1>Alternative content</h1>
				                                <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
			                                </div>
			                                <!--[if !IE]>-->
			                                </object>
			                                <!--<![endif]-->
                                        </object>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 150px;"></td>
                    <td>
                    <table border="0" cellpadding="0" cellspacing="0" style="padding-top:4px">
                            <tr>
                                <td style="width: 200px;">
                                    <p>
                                        &nbsp Relax</p>
                                </td>
                                <td style="width: 180px; padding-top: 7px;">
                                    <div style="z-index:1; position:absolute;">
                                        <object id="Object3" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" type="application/x-shockwave-flash"
                                            data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
                                            <param name="movie" value="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" />
                                            <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://streaming203.radionomy.com:80/Healing-Music-Radio&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
                                        	<!--[if !IE]>-->
			                                <object type="application/x-shockwave-flash" data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
			                                <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://streaming203.radionomy.com:80/Healing-Music-Radio&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
			                                <!--<![endif]-->
			                                <div>
				                                <h1>Alternative content</h1>
				                                <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
			                                </div>
			                                <!--[if !IE]>-->
			                                </object>
			                                <!--<![endif]-->
                                        </object>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 200px;">
                                    <p>
                                        &nbsp Pop</p>
                                </td>
                                <td style="width: 180px; padding-top: 7px;">
                                    <div style="z-index:1; position:absolute;">
                                        <object id="Object4" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" type="application/x-shockwave-flash"
                                            data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
                                            <param name="movie" value="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" />
                                            <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://zlz-stream12.streaming.init7.net:80/1/rsp/mp3_128&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
                                        	<!--[if !IE]>-->
			                                <object type="application/x-shockwave-flash" data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
			                                <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://zlz-stream12.streaming.init7.net:80/1/rsp/mp3_128&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
			                                <!--<![endif]-->
			                                <div>
				                                <h1>Alternative content</h1>
				                                <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
			                                </div>
			                                <!--[if !IE]>-->
			                                </object>
			                                <!--<![endif]-->
                                        </object>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 200px;">
                                    <p>
                                        &nbsp Jazz</p>
                                </td>
                                <td style="width: 180px; padding-top: 7px;">
                                    <div style="z-index:1; position:absolute;">
                                        <object id="Object5" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" type="application/x-shockwave-flash"
                                            data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
                                            <param name="movie" value="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" />
                                            <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://streaming204.radionomy.com:80/Abalone&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
                                        	<!--[if !IE]>-->
			                                <object type="application/x-shockwave-flash" data="http://flash-mp3-player.net/medias/player_mp3_maxi.swf" width="170" height="20">
			                                <param name="wmode" value="opaque" /><!--Set wmode to opaque-->
                                            <param name="bgcolor" value="#ffffff" />
                                            <param name="FlashVars" value="mp3=http://streaming204.radionomy.com:80/Abalone&amp;width=170&amp;volume=30&amp;showstop=1&amp;showvolume=1&amp;showslider=0&amp;volumewidth=100&amp;volumeheight=10" />
			                                <!--<![endif]-->
			                                <div>
				                                <h1>Alternative content</h1>
				                                <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
			                                </div>
			                                <!--[if !IE]>-->
			                                </object>
			                                <!--<![endif]-->
                                        </object>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:RoundedCornersExtender ID="pnlBorder_RoundedCornersExtender" 
        runat="server" Enabled="True" TargetControlID="pnlBorder">
    </asp:RoundedCornersExtender>
    <asp:RoundedCornersExtender ID="pnlRadioPlayer_RoundedCornersExtender" 
        runat="server" Enabled="True" TargetControlID="pnlRadioPlayer">
    </asp:RoundedCornersExtender>
    <asp:CollapsiblePanelExtender ID="pnllRadioPlayer_CollapsiblePanelExtender" 
        runat="server" Enabled="True" TargetControlID="pnlRadioPlayer" 
        CollapseControlID="pnlHeader" Collapsed="False" 
        CollapsedImage="~/Images for html/Icons/expand.jpg" 
        CollapsedText="Show details.." ExpandControlID="pnlHeader" 
        ExpandedImage="~/Images for html/Icons/collapse.jpg" 
        ExpandedText="Hide details..." ImageControlID="imgToggle" 
        SuppressPostBack="True">
    </asp:CollapsiblePanelExtender>
    
    
