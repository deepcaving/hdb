﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Pagine_di_prova_TempCode3" Codebehind="TempCode3.aspx.cs" %>
<%@ Register src="TempCode3ascx.ascx" tagname="TempCode3ascx" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script type="text/javascript" src="~/jquery YoxView/yoxview-init.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<!--<h2>A few pictures before and after the race</h2> <p>Thanks to Costel, who took his camera on the trip, we now have many pictures that help us remember this great experience. Here are only a few; the whole picture gallery is on my Facebook account: look for HD Biking on Facebook and join me! :) </p> <div class='yoxview'>    <table>         <tr>             <td valign='top'>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0359.JPG'>                     <asp:Image ID='Image1' runat='server' AlternateText='Oasa Lake' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0359.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>Oasa Lake</p>             </td>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0370.JPG'>                     <asp:Image ID='Image2' runat='server' AlternateText='Oasa Lake' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0370.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>Oasa Lake</p>             </td>         </tr>         <tr>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0438.JPG'>                     <asp:Image ID='Image3' runat='server' AlternateText='Near the highest point reached on asphalt' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0438.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>Near the highest point reached on asphalt</p>             </td>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0451.JPG'>                     <asp:Image ID='Image4' runat='server' AlternateText='The weather changes so fast here!!!' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0451.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>The weather changes so fast here!!!</p>             </td>         </tr>         <tr>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0516.JPG'>                     <asp:Image ID='Image5' runat='server' AlternateText='Dinner before sleeping in the tents' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0516.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>Dinner before sleeping in the tents</p>             </td>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0569.JPG'>                     <asp:Image ID='Image6' runat='server' AlternateText='A true shepherd' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0569.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>A true shepherd</p>             </td>         </tr>                 <tr>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0578.JPG'>                     <asp:Image ID='Image7' runat='server' AlternateText='Free horses' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0578.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>Free horses</p>             </td>             <td>                 <a href='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0602.JPG'>                     <asp:Image ID='Image8' runat='server' AlternateText='Lunch after competition' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0602.JPG' style='border-style: none;'/></a>                     <p style='font-family: Courier; margin-top: 0px; margin-left: 10px'>Lunch after competition</p>             </td>         </tr>     </table> </div>-->
<br/>
    <asp:Image ID="Imagedf" runat="server" ImageUrl="~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0516.jpg" Width="200"/>
    <asp:Image ID='Imageadf' runat='server' ImageUrl='~/Images/TransAlpin_Bike_2011/ExtraPictures/DSC_0516.jpg' Width='200'/>
    <uc1:TempCode3ascx ID="TempCode3ascx1" runat="server" />

    <br />
</asp:Content>

