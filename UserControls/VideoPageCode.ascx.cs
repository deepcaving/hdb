using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class UserControls_VideoPageCode : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string[] UploaderInfo()
    {
        string paramTrackName = HttpUtility.UrlEncode(Request.QueryString["Name"]);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        SqlParameter obParamTrackName = new SqlParameter("@TRAN_Name", SqlDbType.VarChar);
        obParamTrackName.Value = paramTrackName;
        cmd.Parameters.Add(obParamTrackName);
        cmd.CommandText =
            @"SELECT TRAN_ID, TRAN_BikemapUrl FROM deepcavi_fra.TR_Anag WHERE TRAN_Name = @TRAN_Name";
        string strTrackId = "";
        string strMapUrl = "";
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            strTrackId = dr["TRAN_ID"].ToString();
            strMapUrl = dr["TRAN_BikemapUrl"].ToString();
        }
        dr.Close(); dr.Dispose();
        cmd.CommandText = @"use deepcavi_hdb1
            SELECT               '~/Images/a_User_Avatars/' + CONVERT (VARCHAR(50),                
            dbo.aspnet_Users.UserId) + '/sAvatar_' + CONVERT (VARCHAR(50),               
            dbo.aspnet_Users.UserId) + '.bmp' AS imgPath,  CASE 
            WHEN deepcavi_fra.MB_UserDetails.MBUD_DisplayName = '' THEN dbo.aspnet_Users.UserName                    
            WHEN deepcavi_fra.MB_UserDetails.MBUD_DisplayName IS NULL THEN dbo.aspnet_Users.UserName                    
            ELSE deepcavi_fra.MB_UserDetails.MBUD_DisplayName END AS UserName,
            dbo.aspnet_Users.UserId               
            FROM dbo.aspnet_Users               
            JOIN deepcavi_fra.MB_UserDetails ON dbo.aspnet_Users.UserId = deepcavi_fra.MB_UserDetails.MBUD_Users_UserId
            JOIN deepcavi_fra.TR_Anag ON dbo.aspnet_Users.UserId = deepcavi_fra.TR_Anag.TRAN_UserID
        
            WHERE deepcavi_fra.TR_Anag.TRAN_ID = @TRAN_ID";
        Session["TRAN_ID"] = new Guid(strTrackId);
        SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
        obParamTrackId.Value = new Guid(strTrackId);
        cmd.Parameters.Add(obParamTrackId);
        string strUserName = "";
        string strUserImgPath = "";
        SqlDataReader dataReader = cmd.ExecuteReader();
        while (dataReader.Read())
        {
            strUserName = dataReader["UserName"].ToString();
            strUserImgPath = dataReader["imgPath"].ToString();
        }
        dataReader.Close(); dataReader.Dispose();
        con.Close();
        strUserImgPath = strUserImgPath.Replace("~", "..");
        //imgUserPicture.ImageUrl = strUserImgPath;
        //lblUploaderName.Text = strUserName;
        string[] returnSting = { strUserName, strUserImgPath };
        return returnSting;
    }

    protected string pStrUserName
    {
        get { return UploaderInfo()[0]; }
    }

    protected string pStrUserImgPath
    {
        get { return UploaderInfo()[1]; }
    }

    protected string GenerateCode()
    {
        string resultCode = "";
        string pageName = "";
        string pageId = "";
        string sPath = Server.HtmlEncode(Request.Url.ToString());

        Match match;
        try
        {
            match = Regex.Match(sPath, @"([A-Za-z0-9_\-]+)$", RegexOptions.IgnoreCase);
            pageName = match.Groups[1].Value;
            TR_AnagForDefaultPageTableAdapter adaptActualTranId = new TR_AnagForDefaultPageTableAdapter();
            //Main.TR_AnagForDefaultPageDataTable tableTR_AnagOnyActiveTr = new Main.TR_AnagForDefaultPageDataTable();

            pageId = adaptActualTranId.ScalarQueryGetTRAN_ID(pageName).ToString().ToUpper();
        }
        catch (Exception)
        {
            Response.Redirect("error.aspx");
        }
        

        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;

        try
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();

                TR_ArticTableAdapter adapt = new TR_ArticTableAdapter();
                Main.TR_ArticDataTable table = new Main.TR_ArticDataTable();
                table = adapt.GetDataByTRAN_NameReg(pageName);

                TR_AnagTableAdapter adaptTR_Anag = new TR_AnagTableAdapter();
                Main.TR_AnagDataTable tableTR_Anag = new Main.TR_AnagDataTable();
                tableTR_Anag = adaptTR_Anag.GetData();

                //TR_ListPicTableAdapter adaptListPic = new TR_ListPicTableAdapter();
                //Main.TR_ListPicDataTable tableListPic = new Main.TR_ListPicDataTable();
                //tableListPic = adaptListPic.GetData();

                TR_AnagOnlyEnabledTracksTableAdapter adaptTR_AnagOnlyActiveTr = new TR_AnagOnlyEnabledTracksTableAdapter();
                Main.TR_AnagOnlyEnabledTracksDataTable tableTR_AnagOnyActiveTr = new Main.TR_AnagOnlyEnabledTracksDataTable();
                tableTR_AnagOnyActiveTr = adaptTR_AnagOnlyActiveTr.GetData();

                DataSet ds = new DataSet();

                ds.Tables.Add(table);

                DataRow[] row1;
                row1 = table.Select("TRAR_PartNum = '1'");

                DataRow[] rowTR_Anag;
                string tempSelect = "TRAN_Name = '" + pageName + "'";
                rowTR_Anag = tableTR_Anag.Select(tempSelect);

                DataRow[] rowTR_AnagOnlyActiveTr; 
                tempSelect = "TRAN_Name = '" + pageName + "'";
                rowTR_AnagOnlyActiveTr = tableTR_AnagOnyActiveTr.Select(tempSelect);

                int nrOfVideos = 0;
                foreach (DataRow r in table)
                {
                    nrOfVideos++;
                }
                /*                        + rowTR_Anag[0]["TRAN_Title"] + @"</h1><div id='Container'><div id='FlagBlock'><div id='FlagContent'></div></div><p>"
                        + rowTR_Anag[0]["TRAN_Descr"]
                        + @"</p></div></div><asp:Panel ID='Panel1' runat='server' style='position:absolute'>*/
                if (row1[0]["TRAR_VideoHost"].ToString() == "v")
                {
                    resultCode += @"<div class='myPadding'><h1>"
                        + rowTR_Anag[0]["TRAN_Title"] + @"</h1>
                        <table><tr><td>
                          <div id='FlagContainer'>
                            <div id='FlagBlock'>
                                <img id='imgUserPicture' alt='' src='" + pStrUserImgPath + @"'width='100px' style='border: 1px solid grey'/><br />
                                By <label id='lblUploaderName'>" +pStrUserName+ @"</label>
                                <div id='FlagContent'></div>
                            </div><p>"
                            + rowTR_Anag[0]["TRAN_Descr"]
                            + @"</p></div>
                    </td></tr></table>
                    <asp:Panel ID='Panel1' runat='server' style='position:absolute'>
                    <div id='FlagContainer'>
                        <p style='padding-left:20px; padding-top:15px; width: 240px; position:absolute'>" + nrOfVideos + @" videos available</p>
                    </div>
                </asp:Panel>
                    <table border='0' cellpadding='0' cellspacing='0'>
                        <tr>
                            <td style='padding-right:4px; width:247px'>
                            <div class='yoxview' id='videos'>
                            <a href='" + "http://player.vimeo.com/video/" + row1[0]["TRAR_VideoID"] + "?wmode=opaque&byline=0&amp;portrait=0' target='yoxview' style='border-style:none;'>"
                                    + "<img src='Images for html/Temp Images/go to videos clear.png' alt='' title='Part 1' width='241px' height='185' border-style:none; />";
                }
                else
                {
                    resultCode += @"<div class='myPadding'><h1>"
                        + rowTR_Anag[0]["TRAN_Title"] + @"</h1>
                        <table><tr><td>
                        <div id='FlagContainer'>
                            <div id='FlagBlock'>
                                <img id='imgUserPicture' alt='' src='" + pStrUserImgPath + @"'width='100px' style='border: 1px solid grey'/><br />
                                By <label id='lblUploaderName'>" + pStrUserName + @"</label>
                                <div id='FlagContent'></div>
                            </div><p>"
                            + rowTR_Anag[0]["TRAN_Descr"]
                            + @"</p></div>
                      </td></tr></table>
                    <asp:Panel ID='Panel1' runat='server' style='position:absolute'>
                    <div id='FlagContainer'>                    
                        <p style='padding-left:20px; padding-top:15px; width: 240px; position:absolute'>" + nrOfVideos + @" videos available</p>
                    </div>
                </asp:Panel>
                    <table border='0' cellpadding='0' cellspacing='0'>
                        <tr>
                            <td style='padding-right:4px; width:247px'>
                            <div class='yoxview' id='videos'>
                            <a href='" + "http://www.youtube.com/embed/" + row1[0]["TRAR_VideoID"] + "?wmode=opaque&amp;rel=0&amp;showsearch=0&amp;fs=1' target='yoxview' style='border-style:none;'>"
                                    + "<img src='Images for html/Temp Images/go to videos clear.png' alt='' title='Part 1' width='241px' height='185' style='border-style:none;' />";
                }
                DataRow[] rowsFrom2;
                rowsFrom2 = table.Select("TRAR_PartNum > '1'");
                int count = 0;
                foreach (DataRow row in rowsFrom2)
                {
                    if (rowsFrom2[count]["TRAR_VideoHost"].ToString() == "v")
                    {
                        resultCode += @"<a href='" + "http://player.vimeo.com/video/" + rowsFrom2[count]["TRAR_VideoID"] + "?wmode=opaque&byline=0&amp;portrait=0' target='yoxview' style='border-style:none; visibility: hidden; height:0px; width:0px'>"
                            + "<img src='' alt='' title='Part " + (count + 1) + "' />";
                    }
                    else if (rowsFrom2[count]["TRAR_VideoHost"].ToString() == "y")
                    {
                        resultCode += @"<a href='" + "http://www.youtube.com/embed/" + rowsFrom2[count]["TRAR_VideoID"] + "?wmode=opaque&amp;rel=0&amp;showsearch=0&amp;fs=1' target='yoxview' style='border-style:none; visibility: hidden'; height:0px; width:0px>"
                            + "<img src='' alt='' title='Part " + (count + 1) + "' />";
                    }
                    count++;
                }

                resultCode += @"</a>
                                                </div>
                                                    </td>
                                                        <td valign='top'>
                                                            <div class='yoxview'>";

                string picName1 = "";
                picName1 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic1"]) == 1 ? "1.bmp": "";
                string picName2 = "";
                picName2 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic2"]) == 1 ? "2.bmp" : "";
                string picName3 = "";
                picName3 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic3"]) == 1 ? "3.bmp" : "";
                string picName4 = "";
                picName4 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic4"]) == 1 ? "4.bmp" : "";
                string picName5 = "";
                picName5 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic5"]) == 1 ? "5.bmp" : "";
                string picName6 = "";
                picName6 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic6"]) == 1 ? "6.bmp" : "";
                string picName7 = "";
                picName7 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic7"]) == 1 ? "7.bmp" : "";
                string picName8 = "";
                picName8 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic8"]) == 1 ? "8.bmp" : "";
                string picName9 = "";
                picName9 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic9"]) == 1 ? "9.bmp" : "";
                string picName10 = "";
                picName10 = Convert.ToInt16(rowTR_AnagOnlyActiveTr[0]["TRAN_Pic10"]) == 1 ? "10.bmp" : "";

                match = Regex.Match(picName1, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName1 = match.Groups[1].Value;
                match = Regex.Match(picName2, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName2 = match.Groups[1].Value;
                match = Regex.Match(picName3, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName3 = match.Groups[1].Value;
                match = Regex.Match(picName4, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName4 = match.Groups[1].Value;
                match = Regex.Match(picName5, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName5 = match.Groups[1].Value;
                match = Regex.Match(picName6, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName6 = match.Groups[1].Value;
                match = Regex.Match(picName7, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName7 = match.Groups[1].Value;
                match = Regex.Match(picName8, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName8 = match.Groups[1].Value;
                match = Regex.Match(picName9, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName9 = match.Groups[1].Value;
                match = Regex.Match(picName10, @"([A-Za-z0-9_\-]+)\.bmp$", RegexOptions.IgnoreCase);
                picName10 = match.Groups[1].Value;


                if (rowTR_AnagOnlyActiveTr[0]["TRAN_Pic5"].ToString() == "False")
                {
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName1 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName1 + @".bmp' alt='" + picName1 + @"' title='" + "Image " + picName1 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName2 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName2 + @".bmp' alt='" + picName2 + @"' title='" + "Image " + picName2 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a><br/>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName3 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName3 + @".bmp' alt='" + picName3 + @"' title='" + "Image " + picName3 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName4 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName4 + @".bmp' alt='" + picName4 + @"' title='" + "Image " + picName4 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                }

                else if (rowTR_AnagOnlyActiveTr[0]["TRAN_Pic7"].ToString() == "False")
                {
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName1 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName1 + @".bmp' alt='" + picName1 + @"' title='" + "Image " + picName1 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName2 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName2 + @".bmp' alt='" + picName2 + @"' title='" + "Image " + picName2 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName3 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName3 + @".bmp' alt='" + picName3 + @"' title='" + "Image " + picName3 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a><br/>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName4 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName4 + @".bmp' alt='" + picName4 + @"' title='" + "Image " + picName4 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName5 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName5 + @".bmp' alt='" + picName5 + @"' title='" + "Image " + picName5 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName6 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName6 + @".bmp' alt='" + picName6 + @"' title='" + "Image " + picName6 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                }
                else if (rowTR_AnagOnlyActiveTr[0]["TRAN_Pic9"].ToString() == "False")
                {
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName1 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName1 + @".bmp' alt='" + picName1 + @"' title='" + "Image " + picName1 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName2 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName2 + @".bmp' alt='" + picName2 + @"' title='" + "Image " + picName2 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName3 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName3 + @".bmp' alt='" + picName3 + @"' title='" + "Image " + picName3 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName4 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName4 + @".bmp' alt='" + picName4 + @"' title='" + "Image " + picName4 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a><br/>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName5 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName5 + @".bmp' alt='" + picName5 + @"' title='" + "Image " + picName5 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName6 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName6 + @".bmp' alt='" + picName6 + @"' title='" + "Image " + picName6 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName7 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName7 + @".bmp' alt='" + picName7 + @"' title='" + "Image " + picName7 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                    resultCode += @"<a href='Images/" + pageId + "/Large/" + picName8 + @".jpg'><img src='Images/" + pageId + "/Thumb/" + picName8 + @".bmp' alt='" + picName8 + @"' title='" + "Image " + picName8 + @"' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
                }

                //        resultCode = @"
                //                                    <a href='http://player.vimeo.com/video/27650420?byline=0&amp;portrait=0' target='yoxview' style='border-style:none;'>
                //                                        <img src='Images for html/Temp Images/go to videos.png' alt='' title='Part 1' />
                //                                    </a><a href='http://www.youtube.com/embed/HsM_EEmj7bw?wmode=opaque&amp;rel=0&amp;showsearch=0&amp;fs=1'
                //                                        target='yoxview' style='visibility: hidden'>
                //                                        <img src='' alt='' title='Part 2' />
                //                                    </a><a href='http://www.youtube.com/embed/iA0ROdGxJDA?wmode=opaque&amp;rel=0&amp;showsearch=0&amp;fs=1'
                //                                        target='yoxview' style='visibility: hidden'>
                //                                        <img src='' alt='' title='Part 3' />
                //                                    </a>
                //                                ";
                resultCode += @"                 
                    </div>
                </td>
            </tr>
        </table>";
                return resultCode; 
            }
        }
        catch (SqlException err)
        {
            return err.ToString();
        }
               
    }

    protected string pGenerateCode
    {
        get { return GenerateCode();}
    }
}