using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using HDBiking.MainTableAdapters;
using Image = System.Web.UI.WebControls.Image;

namespace HDBiking.Account
{
    public partial class NewPageTemplate : System.Web.UI.Page
    {
        static string prevPage = String.Empty;

        protected void Page_Init(object sender, EventArgs e)
        {
            Button btnCancel = (Button)SectionTitle1.FindControl("btnCancel") as Button;
        }

        protected void InitializeAll()
        {
            if (Session["NewTrackId"] == null)
            {
                Session["NewTrackId"] = "00000000-0000-0000-0000-000000000000";
            }
            string selectedTrackName = Session["NewTrackId"].ToString();
            if (GetCompletionString().Length<2)
            {
                btnMakePublic.Enabled = true;
            }
            if (selectedTrackName.Length>0)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
                obParamTrackId.Value = new Guid(selectedTrackName);
                cmd.Parameters.Add(obParamTrackId);
                cmd.CommandText =
                    @"SELECT TRAN_GetDate, TRAN_ID, TRAN_Name, TRAN_Title, TRAN_Descr, TRAN_ShotDate, TRAN_BikemapUrl, 
                TRAN_BikemapEmbedFullText, TRAN_BikemapNr, TRAN_Enabled, TRAN_DistanceKm, TRAN_DistanceMiles, 
                TRAN_VerticalClimbM, TRAN_VerticalClimbFeet, TRAN_Category, TRAN_CodeAfterMap, TRAN_UserID, TRAN_txtExtraDetails, 
                TRAN_Default_Pic, TRAN_Pic1, TRAN_Pic2, TRAN_Pic3, TRAN_Pic4, TRAN_Pic5, TRAN_Pic6, TRAN_Pic7, TRAN_Pic8, 
                TRAN_Pic9, TRAN_Pic10, TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE (TRAN_ID = @TRAN_ID)";
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblTitle.Text = dr["TRAN_Name"].ToString();
                    tdTitle.Attributes.Add("class", ".tdWhite");
                    tdTitleDx.Attributes.Add("class", ".tdWhite");

                    lblDescription.Text = dr["TRAN_Descr"].ToString();
                    tdDescription.Attributes.Add("class", ".tdWhite");
                    tdDescriptionDx.Attributes.Add("class", ".tdWhite");

                    List<Image> imgList = new List<Image>();
                    imgList.Add(Img1); imgList.Add(Img2); imgList.Add(Img3); imgList.Add(Img4);
                    imgList.Add(Img5); imgList.Add(Img6); imgList.Add(Img7); imgList.Add(Img8);
                    int counter = 0;
                    foreach (Image img in imgList)
                    {
                        string strImgName = img.ID;
                        string strImgNr = strImgName.Substring(strImgName.Length - 1, 1);
                        if (dr["TRAN_Pic" + strImgNr].ToString() == "True")
                        {
                            counter++;
                            img.ImageUrl = "~/Images/" + Session["NewTrackId"] + "/Thumb/" + strImgNr + ".BMP";
                        }
                    }
                    if (counter == 8)
                    {
                        tdPictures.Attributes.Add("class", ".tdWhite");
                    }
                    if (dr["TRAN_BikemapUrl"] != null && dr["TRAN_BikemapUrl"].ToString().Length > 0)
                    {
                        MultiViewMap.ActiveViewIndex = 1;
                    }
                }
                dr.Close();
                dr.Dispose();
                con.Close();
                SqlParameter obParamTrackID = new SqlParameter("@TRAR_TRAN_ID", SqlDbType.UniqueIdentifier);
                obParamTrackID.Value = new Guid(selectedTrackName);
                cmd.Parameters.Add(obParamTrackID);
                cmd.CommandText = "SELECT TOP(1) TRAR_VideoID FROM deepcavi_fra.TR_Artic WHERE TRAR_TRAN_ID = @TRAR_TRAN_ID";
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                MultiViewVideos.ActiveViewIndex = 0;
                while (reader.Read())
                {
                    string result = reader[0].ToString();
                    // Vimeo has video IDs with a length of 8 characters
                    if (result != null && result.Length > 0)
                    {
                        MultiViewVideos.ActiveViewIndex = 1;
                    }
                }
                reader.Close();
                reader.Dispose();
                con.Close(); 
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Track_id"] == null)
            {
                lblWhatIsMissing.Text = "description, videoUrl, picture(s), map, track type";
            }
            lblTitle.ForeColor = Color.Black;
            if (!Page.IsPostBack)
            {
                if (Request.UrlReferrer != null)
                {
                    prevPage = Request.UrlReferrer.ToString();
                    if (prevPage != String.Empty)
                    {
                        InitializeAll();
                    }
                }
            }
            if (Page.IsPostBack)
            {
                ViewState["templatePageID"] = string.Empty;
                /*if (Session["NewVideosAdded"] == "false")
                {
                    MultiViewVideos.ActiveViewIndex = 0;
                }
                if (Session["NewVideosAdded"] == "true")
                {
                    MultiViewVideos.ActiveViewIndex = 1;
                }*/
            }
            
            imgBtnEditSectionMap.Visible = MultiViewMap.ActiveViewIndex > -1;
            if (MultiViewMap.ActiveViewIndex >-1)
            {
                imgBtnEditSectionMap.Visible = true;
            }
            else
            {
                imgBtnEditSectionMap.Visible = false;
            }

            string sPath = Server.HtmlEncode(Request.Url.ToString());
            Match match = Regex.Match(sPath, @"[A-Za-z0-9_\-]$", RegexOptions.IgnoreCase);
            if (match.Groups[1].Length != 0)
                ViewState["templatePageID"] = match.Groups[1].Value;
            // if(ViewState["templatePageID"]......vedi in db quali sezioni devono essere grigie o bianche nella presente pagina
            if (Session["NewTrackId"] == "")
            {
                Session["NewTrackId"] = "00000000-0000-0000-0000-000000000000";
            }

            if (Session["NewTrackId"] == null)
            {
                MultiViewVideos.ActiveViewIndex = 0;
                Session["NewTrackId"] = "00000000-0000-0000-0000-000000000000";
                ResetMultiViewsToIndexZero();
            }
            if (Session["NewTrackId"] == "00000000-0000-0000-0000-000000000000")
            {
                MultiViewVideos.ActiveViewIndex = 0;
                ResetMultiViewsToIndexZero();
            }
            else if (Session["NewTrackId"].ToString() != "00000000-0000-0000-0000-000000000000")
            {
                string strCompletion = GetCompletionString();
                if (strCompletion.Length > 0)
                {
                    strCompletion = strCompletion.Substring(0, strCompletion.Length - 2);
                }
                if (strCompletion.Length < 3)
                {
                    lblWhatIsMissing.Text = "Nothing is missing, this track can be made public.";
                }
                else
                {
                    lblWhatIsMissing.Text = strCompletion;    
                }
                UpdateMultiviews();

                // Update RadioButtonList x Categories
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
                obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
                cmd.Parameters.Add(obParamTrackId);
                string strCategory = "";
                cmd.CommandText = "SELECT TRAN_Category FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    strCategory = dr[0].ToString();
                }
                con.Close();
                if (strCategory == "Trail")
                {
                    /*Page.RegisterStartupScript("myScriptTdBorder", "<script language=JavaScript>ShowBorder('tdTrail');</script>");
                    Page.RegisterStartupScript("myScriptTdNoBorder", "<script language=JavaScript>HideBorder('tdAsphalt');</script>");*/
                    imbTrail.BorderStyle = BorderStyle.Solid;
                    imbAsphalt.BorderStyle = BorderStyle.None;
                    imbTrail.BorderColor = Color.Red;
                }
                if (strCategory == "Asphalt")
                {
                    /*Page.RegisterStartupScript("myScriptTdBorder", "<script language=JavaScript>ShowBorder('tdAsphalt');</script>");
                    Page.RegisterStartupScript("myScriptTdNoBorder", "<script language=JavaScript>HideBorder('tdTrail');</script>");*/
                    imbAsphalt.BorderStyle = BorderStyle.Solid;
                    imbTrail.BorderStyle = BorderStyle.None;
                    imbAsphalt.BorderColor = Color.Red;
                }
            }
            Session["Description"] = "";
            object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            Guid gUserId = (Guid)userId;
            string sUserId = gUserId.ToString();
            Session["CurrentUser"] = sUserId;
            if (Session["NewVideosAdded"] == "true")
            {
                MultiViewVideos.ActiveViewIndex = 1;
            }

            if ((Session["NewTrackId"] != "00000000-0000-0000-0000-000000000000") &&  Session["NewTrackId"] != "")
            {
                if (MultiViewMap.ActiveViewIndex == 0)
                {
                    MultiViewMap.ActiveViewIndex = !MapIsLoaded() ? 0 : 1;
                    if (MapIsLoaded())
                    {
                        GenerateMap();
                    } 
                }
            }

            MultiViewMap.ActiveViewIndex = MapIsLoaded() ? 1 : 0;
        }

        private void ResetMultiViewsToIndexZero()
        {
            MultiViewPic1.ActiveViewIndex = 0;
            MultiViewPic2.ActiveViewIndex = 0;
            MultiViewPic3.ActiveViewIndex = 0;
            MultiViewPic4.ActiveViewIndex = 0;
            MultiViewPic5.ActiveViewIndex = 0;
            MultiViewPic6.ActiveViewIndex = 0;
            MultiViewPic7.ActiveViewIndex = 0;
            MultiViewPic8.ActiveViewIndex = 0;
            MultiViewMap.ActiveViewIndex = 0;
        }

        protected string GenerateMap()
        {
            string result = "";
            string mapUrl = "";
            string mapId = "";
            string onlyMapUrl = "";
            TR_AnagTableAdapter adapt = new TR_AnagTableAdapter();
            mapUrl = adapt.GetMapUrlByTranId(new Guid(Session["NewTrackId"].ToString()));
            int positionOfEqualsInUrl = mapUrl.LastIndexOf("=");
            mapId = mapUrl.Substring(positionOfEqualsInUrl + 1, 16);
            onlyMapUrl = "http://www.gpsies.com/mapOnly.do?fileId=" + mapId;
            result = @"<iframe src='" + onlyMapUrl + @"' width='100%' height='700' 
                                frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>
                            </iframe>"; 
            return result;
        } 

        public string pGeneratecode
        {
            get { return GenerateMap(); }
        }

        protected void UpdateFilledPictures()
        {
            Img1.ImageUrl = MultiViewPic1.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/1.BMP" : Img1.ImageUrl = "";
            Img2.ImageUrl = MultiViewPic2.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/2.BMP" : Img2.ImageUrl = "";
            Img3.ImageUrl = MultiViewPic3.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/3.BMP" : Img3.ImageUrl = "";
            Img4.ImageUrl = MultiViewPic4.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/4.BMP" : Img4.ImageUrl = "";
            Img5.ImageUrl = MultiViewPic5.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/5.BMP" : Img5.ImageUrl = "";
            Img6.ImageUrl = MultiViewPic6.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/6.BMP" : Img6.ImageUrl = "";
            Img7.ImageUrl = MultiViewPic7.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/7.BMP" : Img7.ImageUrl = "";
            Img8.ImageUrl = MultiViewPic8.ActiveViewIndex == 1 ? "~/Images/" + Session["NewTrackId"] + "/Thumb/8.BMP" : Img8.ImageUrl = "";
        }

        protected bool UpdateMultiviews()
        {
            var adapter = new TR_AnagPicsTableAdapter();
            var table = adapter.GetDataByTranId(new Guid(Session["NewTrackId"].ToString()));
            MultiViewPic1.ActiveViewIndex = table[0][1].ToString() == "True" ? 1 : 0;
            MultiViewPic2.ActiveViewIndex = table[0][2].ToString() == "True" ? 1 : 0;
            MultiViewPic3.ActiveViewIndex = table[0][3].ToString() == "True" ? 1 : 0;
            MultiViewPic4.ActiveViewIndex = table[0][4].ToString() == "True" ? 1 : 0;
            MultiViewPic5.ActiveViewIndex = table[0][5].ToString() == "True" ? 1 : 0;
            MultiViewPic6.ActiveViewIndex = table[0][6].ToString() == "True" ? 1 : 0;
            MultiViewPic7.ActiveViewIndex = table[0][7].ToString() == "True" ? 1 : 0;
            MultiViewPic8.ActiveViewIndex = table[0][8].ToString() == "True" ? 1 : 0;
            int counter = 0;
            for (int i = 0; i < 8; i++ )
            {
                if (table[0][i+1].ToString() == "True")
                {
                    counter++;
                }
            }
            if (counter == 8)
            {
                UpdateCompletionStr("picture(s), ");
            }
            //return false;
            return counter == 8;
        }
        
        protected string GetCompletionString()
        {
            string completionStr = "";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            if (Session["NewTrackId"] == null)
            {
                Session["NewTrackId"] = "00000000-0000-0000-0000-000000000000";
            }
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText = "SELECT TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                completionStr = dr[0].ToString();
            }
            dr.Close();
            dr.Dispose();
            return completionStr;
        }

        protected void UpdateCompletionStr(string strToCut)
        {
            string completionStr = "";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText = "SELECT TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                completionStr = dr[0].ToString();
            }
            dr.Close();
            dr.Dispose();
            completionStr = UpdateTRAN_CompletionStr(completionStr, strToCut);
            SqlParameter obParamCompletion = new SqlParameter("@TRAN_CompletionStr", SqlDbType.VarChar);
            obParamCompletion.Value = completionStr;
            cmd.Parameters.Add(obParamCompletion);
            cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_CompletionStr = @TRAN_CompletionStr WHERE TRAN_ID = @TRAN_ID";
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected Boolean NewTrackIdFilled()
        {
            if (Session["NewTrackId"].ToString() != null)
            {
                if (Session["NewTrackId"].ToString() != "00000000-0000-0000-0000-000000000000")
                {
                    return true;
                }
            }
            return false;
        }

        protected void imgBtnEditSectionTitle_Click(object sender, ImageClickEventArgs e)
        {
            SectionTitle1.Visible = true;
            SectionTitle1.EnableModelDialog(true);
        }

        protected void imgBtnEditSectionDescription_Click(object sender, ImageClickEventArgs e)
        {
            if ( !(Session["NewTrackId"].ToString() == "00000000-0000-0000-0000-000000000000"))
            {
                SectionDescription1.Visible = true;
                SectionDescription1.EnableModelDialog(true);
            }
        }

        protected void imgBtnEditSectionVideos_Click(object sender, ImageClickEventArgs e)
        {
            if (!(Session["NewTrackId"].ToString() == "00000000-0000-0000-0000-000000000000"))
            {
                SectionVideos1.Visible = true;
                SectionVideos1.EnableModelDialog(true);
            }
        }

        protected void imgBtnEditSectionVideosWhite_Click(object sender, ImageClickEventArgs e)
        {
            SectionVideos1.Visible = true;
            SectionVideos1.EnableModelDialog(true);
        }

        protected string UpdateTRAN_CompletionStr(string completionStr, string actualSession)
        {
            string result;
            result = completionStr.Replace(actualSession, "");
            return result;
        }

        protected void SectionTitle_Completed(object sender, EventArgs e)
        {
            Byte[] bytes = new Byte[16];
            if (Session["NewTrackId"].ToString() == "00000000-0000-0000-0000-000000000000")
            {
                Session["NewTrackId"] = new Guid(bytes).ToString();
            }
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            string returnedTitle;
            string strTrName, strTrNamePlusDescr;
            if (SectionTitle1.TxtExtraDetails != "")
            {
                strTrNamePlusDescr = SectionTitle1.TxtTrack + " - " + SectionTitle1.TxtExtraDetails;
                strTrNamePlusDescr = strTrNamePlusDescr.Replace("_", " ");
                strTrNamePlusDescr = strTrNamePlusDescr.Replace("-", " - ");
                returnedTitle = strTrNamePlusDescr;
            }
            else
            {
                strTrName = SectionTitle1.TxtTrack;
                strTrName = strTrName.Replace("_", " ");
                strTrName = strTrName.Replace("-", " - ");
                returnedTitle = strTrName;
                strTrNamePlusDescr = SectionTitle1.TxtTrack;
            }
            object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            Guid gUserId = (Guid)userId;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            SqlParameter obParamUserId = new SqlParameter("@UserId", SqlDbType.UniqueIdentifier);
            obParamUserId.Value = gUserId;
            cmd.Parameters.Add(obParamUserId);
            SqlParameter obParamNow = new SqlParameter("@DateTimeNow", SqlDbType.DateTime);
            obParamNow.Value = DateTime.Now;
            cmd.Parameters.Add(obParamNow);
            SqlParameter obParamTrackName = new SqlParameter("@TrackName", SqlDbType.NVarChar);
            obParamTrackName.Value = SectionTitle1.TxtTrack;
            cmd.Parameters.Add(obParamTrackName);
            SqlParameter obParamTitle = new SqlParameter("@Title", SqlDbType.NVarChar);
            obParamTitle.Value = strTrNamePlusDescr;
            cmd.Parameters.Add(obParamTitle);
            SqlParameter obParamExtraDescr = new SqlParameter("@TRAN_txtExtraDetails", SqlDbType.NVarChar);
            cmd.CommandText = "SELECT COUNT(TRAN_Name) FROM deepcavi_fra.TR_Anag WHERE TRAN_Name = @TrackName";
            if (SectionTitle1.TxtExtraDetails.Length < 1)
            {
                obParamExtraDescr.Value = "";
            }
            else
            {
                obParamExtraDescr.Value = SectionTitle1.TxtExtraDetails;
            }    
            cmd.Parameters.Add(obParamExtraDescr);
            con.Open();
            int foundNameInTracks = (int) cmd.ExecuteScalar();
            if (foundNameInTracks > 0)
            {
                lblTitle.ForeColor = Color.Red;
                lblTitle.Text = "This name has already been used.";
            }
            else
            {
                if (Session["NewTrackId"].ToString() == "00000000-0000-0000-0000-000000000000")
                {
                    cmd.CommandText =
                        "INSERT INTO deepcavi_fra.TR_Anag (TRAN_GetDate, TRAN_Name, TRAN_Title, TRAN_UserId, TRAN_txtExtraDetails) VALUES (@DateTimeNow, @TrackName, @Title, @UserId, @TRAN_txtExtraDetails)";
                }
                else
                {
                    cmd.CommandText =
                        "UPDATE deepcavi_fra.TR_Anag SET TRAN_Name = @TrackName, TRAN_Title = @Title, TRAN_txtExtraDetails = @TRAN_txtExtraDetails" +
                        " WHERE TRAN_ID = @TRAN_ID";
                }
                cmd.ExecuteNonQuery();
                cmd.CommandText = "SELECT TRAN_ID FROM deepcavi_fra.TR_Anag WHERE TRAN_GetDate = @DateTimeNow AND TRAN_UserId = @UserId";
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Session["NewTrackId"] = dr[0];
                }
                con.Close();
                lblTitle.Text = returnedTitle;
                if (SectionTitle1.IsLogin)
                {
                    tdTitle.Attributes.Add("class", ".tdWhite");
                    tdTitleDx.Attributes.Add("class", ".tdWhite");
                }
            }
        }

        protected void SectionDescription_Completed(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            string strDescription = Session["Description"].ToString();
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            SqlParameter obParamDescription = new SqlParameter("@TRAN_Descr", SqlDbType.VarChar);
            obParamDescription.Value = strDescription;
            cmd.Parameters.Add((obParamDescription));
            string completionStr = "";
            if (Session["NewTrackId"].ToString() != "00000000-0000-0000-0000-000000000000")
            {
                cmd.CommandText =
                "UPDATE deepcavi_fra.TR_Anag SET TRAN_Descr = @TRAN_Descr" +
                " WHERE TRAN_ID = @TRAN_ID";
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandText = "SELECT TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    completionStr = dr[0].ToString();
                }
                dr.Close();
                dr.Dispose();
                completionStr = UpdateTRAN_CompletionStr(completionStr, "description, ");
                SqlParameter obParamCompletion = new SqlParameter("@TRAN_CompletionStr", SqlDbType.VarChar);
                obParamCompletion.Value = completionStr;
                cmd.Parameters.Add(obParamCompletion);
                cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_CompletionStr = @TRAN_CompletionStr WHERE TRAN_ID = @TRAN_ID";
                cmd.ExecuteNonQuery();
                con.Close();
                lblDescription.Text = Session["Description"].ToString();
            }

            
            if (SectionDescription1.TxtDescription != "")
            {
                strDescription = SectionDescription1.TxtDescription;
            }
           
            if (SectionDescription1.IsLogin)
            {
                tdDescription.Attributes.Add("class", ".tdWhite");
                tdDescriptionDx.Attributes.Add("class", ".tdWhite");
            }
        }

        protected void SectionVideos_Completed(object sender, EventArgs e)
        {
            if (Session["NewVideosAdded"] == "true")
            {
                /*InputWinVideos1.Visible = true;
                InputWinVideosB1.Visible = true;
                imgEditSectionVideosGray.Visible = false;*/
                MultiViewVideos.ActiveViewIndex = 1;
            }
            else
            {
                MultiViewVideos.ActiveViewIndex = 0;
            }
            if (SectionPictures1.IsLogin)
            {
                //MultiViewVideos.ActiveViewIndex = 1;
                //tdPictures.Attributes.Add("class", ".tdWhite");
            }
        }

        protected void SectionPictures_Completed(object sender, EventArgs e)
        {
            bool allImagesAdded = UpdateMultiviews();
            UpdateFilledPictures();
            if (allImagesAdded)
            {
                tdPictures.Attributes.Add("class", ".tdWhite");
            }
            List<Image> images = new List<Image>();
            foreach (Image image in images )
            {
                image.DataBind();
            }
        }

        protected void SectionMap_Completed(object sender, EventArgs e)
        {
            UpdateCompletionStr("map, ");
            MultiViewMap.ActiveViewIndex = 1;
        }

        protected void demoImg_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["NewTrackId"] != null && Session["NewTrackId"].ToString() != "00000000-0000-0000-0000-000000000000")
            {
                string imgId = string.Empty;
                Image senderImg = sender as Image;
                if (senderImg != null)
                {
                    Session["IdImageToEdit"] = senderImg.ID;
                }
                SectionPictures1.Visible = true;
                SectionPictures1.EnableModelDialog(true); 
            }
        }

        protected void imgBtnMap_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["NewTrackId"] != null && Session["NewTrackId"].ToString() != "00000000-0000-0000-0000-000000000000")
            {
                SectionMap1.Visible = true;
                SectionMap1.EnableModelDialog(true);
            }
        }

        protected Boolean MapIsLoaded()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText =
                @"SELECT TRAN_BikemapUrl FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr[0].ToString().Length > 0)
                    {
                        return true;
                    }
                }
                con.Close();
            }
            catch
            {
                return false;
            }
            return false;
        }

        protected void UpdateChosenCategory(string rbtId)
        {
            if (NewTrackIdFilled())
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                SqlParameter obParamCategory = new SqlParameter("@TRAN_Category", SqlDbType.VarChar);
                obParamCategory.Value = rbtId;
                if (rbtId == "Trail")
                {
                    UpdateCompletionStr("track type, ");
                    Page.RegisterStartupScript("myScriptTdBorder", "<script language=JavaScript>ShowBorder('tdTrail');</script>");
                    Page.RegisterStartupScript("myScriptTdNoBorder", "<script language=JavaScript>HideBorder('tdAsphalt');</script>");
                }
                if (rbtId == "Asphalt")
                {
                    UpdateCompletionStr("track type, ");
                    Page.RegisterStartupScript("myScriptTdBorder", "<script language=JavaScript>ShowBorder('tdAsphalt');</script>");
                    Page.RegisterStartupScript("myScriptTdNoBorder", "<script language=JavaScript>HideBorder('tdTrail');</script>");
                }
                cmd.Parameters.Add(obParamCategory);
                SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
                obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
                cmd.Parameters.Add(obParamTrackId);
                if (rbtId != "" || rbtId != null)
                {
                    cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_Category = @TRAN_Category WHERE TRAN_ID = @TRAN_ID";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                } 
            }
        }

        protected void imbTrail_Click(object sender, ImageClickEventArgs e)
        {
            UpdateChosenCategory("Trail");
            imbTrail.BorderStyle=BorderStyle.Solid;
            imbAsphalt.BorderStyle=BorderStyle.None;
            imbTrail.BorderColor = Color.Red;
        }

        protected void imbAsphalt_Click(object sender, ImageClickEventArgs e)
        {
            UpdateChosenCategory("Asphalt");
            imbAsphalt.BorderStyle=BorderStyle.Solid;
            imbTrail.BorderStyle=BorderStyle.None;
            imbAsphalt.BorderColor = Color.Red;
        }

        protected void Publish(Boolean yesOrNot)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            SqlParameter obParamTranEnabled = new SqlParameter("@TRAN_Enabled", SqlDbType.Bit);
            obParamTranEnabled.Value = Convert.ToInt16(yesOrNot);
            cmd.Parameters.Add(obParamTranEnabled);
            cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_Enabled = @TRAN_Enabled WHERE TRAN_ID = @TRAN_ID";    
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void btnMakePublic_Click(object sender, EventArgs e)
        {
            if (Session["NewTrackId"] != null)
            {
                if (GetCompletionString().Length < 2)
                {
                    Publish(true);
                }
                CreatePageUrl();
                lblLinkToYourPage.Visible = true;
                lblSeeYourNewPageOnline.Visible = true; 
            }
        }

        protected void btnMakePrivate_Click(object sender, EventArgs e)
        {
            Publish(false);
            lblLinkToYourPage.Visible = false;
            lblSeeYourNewPageOnline.Visible = false;
        }

        protected string CreatePageUrl()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText = "SELECT TRAN_Name FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
            string trackName = "";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            try
            {
                while (dr.Read())
                {
                    trackName = dr[0].ToString();
                }
            }
            catch
            {
                return "";
            }
            dr.Close();
            dr.Dispose();
            string result = "http://hdbiking.net/TrackPage.aspx?Name=" + trackName;
            return result;
        }

        public string pCreatePageUrl
        {
            get { return CreatePageUrl(); }
        }
    }
}