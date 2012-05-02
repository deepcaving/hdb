<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="About" Codebehind="About.aspx.cs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" src="jquery yoxview/yoxview-init.js"></script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        WHY HD BIKING
    </h2>
    <div class="yoxview">
        <p align="justify">
            <a href="Images for html/About/me.jpg"><img alt="" src="Images for html/About/me.jpg" align="right" width="500" style="margin-left: 50px; border-style: none;
                margin-bottom: 10px;" /></a>
            The idea to build this Internet site come to me while pushing on the pedals of my
            spin bike. The spin bike and the cyclette are great tools for training while outside
            it's raining or too cold or too hot. I didn't like doing indoor cycling while looking
            at a white wall: I soon get bored. So I put my laptop on the handlebars and searched
            for nice videos on YouTube and Vimeo. I hardly came across long, high quality videos;
            you know: a lot of crap, short videos, low quality, bad music, no stabilized videos
            etc.<br/>
             The purpose of this Internet site is to provide high quality videos for all of you who want to do indoor cycling having fun, feeling like on the trail. This site will
        help you to find the motivation to practice sport and push your limits ahead. Being better trained day by day, you will enjoy higher performance while riding your 
        bike.
        In addition to this, you are going to discover the Sibiu surroundings. Sibiu is a town placed in the middle of Transilvania, in Romania. Here there are a lot of
        long, wild, beautiful mountain tracks. They're good for mountain biking as well as for trakking and enduro motorcycles. Enduro lovers come here from all around
        the world (you can find many nice pics in 
        <a href="http://www.2y4t.com/8/viewtopic.php?p=715446" onclick="window.open('http://www.2y4t.com/8/viewtopic.php?p=715446', '_blank'); return false;">this forum</a>

        ).
        </p>
    </div>
    <p align="justify">
       </p>
        <%--prova a vedere iframe (http://www.w3schools.com/tags/tag_iframe.asp) insieme a jquery (http://www.yoxigen.com/yoxview/usage.aspx#iframes)--%>

    <div class="yoxview">   
         <a href="Images for html/About/CrossTheSky con hdbiking copyright 2.jpg" ><img src="Images for html/About/CrossTheSky con hdbiking copyright medium.jpg" alt="First" title="Cross the sky" style="border-style: none;" /></a>         
<%--        <asp:ImageButton ID="imgBtnCrossTheSky" runat="server" ImageUrl="~/Images for html/About/CrossTheSky con hdbiking copyright 2.jpg"
            Height="550" PostBackUrl="~/LargeImagePages/About_CrossTheSky.aspx" />--%>
    </div>
            <p style="font-family: Courier">Picture 1: a view of the Cindrel Mountains taken from a window of my apartment, in a very special day :) </p>
    
</asp:Content>
