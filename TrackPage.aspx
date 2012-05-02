<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="TrackPage" Codebehind="TrackPage.aspx.cs" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="UserControls/RadioPlayerGuest.ascx" tagname="RadioPlayerGuest" tagprefix="uc1" %>
<%@ Register src="UserControls/VideoPageCode.ascx" tagname="VideoPageCode" tagprefix="uc2" %>
<%@ Register src="UserControls/VideoPageCodeB.ascx" tagname="VideoPageCodeB" tagprefix="uc3" %>
<%@ Register src="ExtraContent1.ascx" tagname="ExtraContent1" tagprefix="uc5" %>
<%@ Register src="UserControls/VideoPageCodeC.ascx" tagname="VideoPageCodeC" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="jquery YoxView/yoxview-init.js"></script>
    		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<script type="text/javascript" src="Scripts/swfobject.js"></script>
		<script type="text/javascript">
		    swfobject.registerObject("myId", "9.0.0", "expressInstall.swf");
		</script>
        <script>            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) { return; }
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/it_IT/all.js#xfbml=1";
                fjs.parentNode.insertBefore(js, fjs);
            } (document, 'script', 'facebook-jssdk'));
        </script>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">        
            <uc2:VideoPageCode ID="VideoPageCode1" runat="server" />            
            <uc1:RadioPlayerGuest ID='RadioPlayerGuest1' runat='server' />
            <uc3:VideoPageCodeB ID="VideoPageCodeB1" runat="server" />
            <uc5:ExtraContent1 ID="ExtraContent11" runat="server" />            
            <uc4:VideoPageCodeC ID="VideoPageCodeC1" runat="server" />   
    
  <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
  <script type="text/javascript" src="Scripts/FlagDiv.js"></script>                                        
</asp:Content>

