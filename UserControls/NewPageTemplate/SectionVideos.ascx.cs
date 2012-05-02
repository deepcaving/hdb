using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.UserControls.NewPageTemplate
{
    public partial class SectionVideos : System.Web.UI.UserControl
    {
        public event EventHandler CompletedStatus;
        private bool status;
        public int videoCounter;

        public Boolean IsLogin
        {
            get { return status; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtVideoLink.Focus();
            if (!Page.IsPostBack)
            {
                ViewState["lastVideoLink"] = ""; 
            }
            ViewState["cmdDelete"] = "false";
            string s1 = Session["NewTrackId"].ToString();
            string s2 = Session["CurrentUser"].ToString();
            if (gvVideos.Rows.Count < 1)
            {
                UpdateCompletionStrAddVideoStr();
            }
            gvVideos.DataBind();
        }

        protected void UpdateCompletionStrAddVideoStr()
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
            completionStr += "videoUrl, ";
            SqlParameter obParamCompletion = new SqlParameter("@TRAN_CompletionStr", SqlDbType.VarChar);
            obParamCompletion.Value = completionStr;
            cmd.Parameters.Add(obParamCompletion);
            cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_CompletionStr = @TRAN_CompletionStr WHERE TRAN_ID = @TRAN_ID";
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                mpeVideo.Show();
            }
            else
            {
                mpeVideo.Hide();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            gvVideosNotEmpty();
            if (CompletedStatus != null)
            {
                    status = true;
                    CompletedStatus(this, EventArgs.Empty); //event gets fired here.
                    mpeVideo.Hide(); 
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblInvalidUrl.Visible = false;
            ViewState["lastVideoLink"] += txtVideoLink.Text;
            object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            Guid gUserId = (Guid)userId;
            string strVideoUrl = txtVideoLink.Text;
            string strVideoId = GetVideoId(txtVideoLink.Text);
            string strYouTubeOrVimeo = YouTubeOrVimeo(strVideoId);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText = "select max(TRAR_PartNum) from deepcavi_fra.TR_Artic WHERE TRAR_TRAN_ID = @TRAN_ID";
            Int16 count = 0;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!Convert.IsDBNull(dr[0]))
                {
                    count = Convert.ToInt16(dr[0]);
                }
            }
            dr.Close();
            count++;
            if (strVideoId != "")
            {
                SqlParameter obParamUserId = new SqlParameter("@UserId", SqlDbType.UniqueIdentifier);
                obParamUserId.Value = gUserId;
                cmd.Parameters.Add(obParamUserId);
                SqlParameter obParamVideoHost = new SqlParameter("@TRAR_VideoHost", SqlDbType.VarChar);
                obParamVideoHost.Value = strYouTubeOrVimeo;
                cmd.Parameters.Add(obParamVideoHost);
                SqlParameter obParamPartNum = new SqlParameter("@TRAR_PartNum", SqlDbType.SmallInt);
                obParamPartNum.Value = count;
                cmd.Parameters.Add(obParamPartNum);
                SqlParameter obParamVideoLink = new SqlParameter("@VideoLink", SqlDbType.VarChar);
                obParamVideoLink.Value = strVideoId;
                cmd.Parameters.Add(obParamVideoLink);
                SqlParameter obParamVideoUrl = new SqlParameter("@VideoUrl", SqlDbType.VarChar);
                obParamVideoUrl.Value = strVideoUrl;
                cmd.Parameters.Add(obParamVideoUrl);
                SqlParameter obParamNow = new SqlParameter("@DateTimeNow", SqlDbType.DateTime);
                obParamNow.Value = DateTime.Now;
                cmd.Parameters.Add(obParamNow);

                cmd.CommandText =
                    @"INSERT INTO deepcavi_fra.TR_Artic (TRAR_TRAN_ID, TRAR_Uploader_ID, TRAR_PartNum, TRAR_VideoHost, TRAR_VideoID, TRAR_VideoUrl, TRAR_GetDate) 
                                                VALUES (@TRAN_ID, @UserId, @TRAR_PartNum, @TRAR_VideoHost, @VideoLink, @VideoUrl, @DateTimeNow)";
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected == 1)
                {
                    Session["NewVideosAdded"] = "true";
                    string completionStr = "";
                    cmd.CommandText = "SELECT TRAN_CompletionStr FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID";
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        completionStr = dataReader[0].ToString();
                    }
                    dataReader.Close();
                    dataReader.Dispose();
                    completionStr = UpdateTRAN_CompletionStr(completionStr, "videoUrl, ");
                    SqlParameter obParamCompletion = new SqlParameter("@TRAN_CompletionStr", SqlDbType.VarChar);
                    obParamCompletion.Value = completionStr;
                    cmd.Parameters.Add(obParamCompletion);
                    cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_CompletionStr = @TRAN_CompletionStr WHERE TRAN_ID = @TRAN_ID";
                    cmd.ExecuteNonQuery();

                    if (CompletedStatus != null)
                    {
                        status = true;
                        CompletedStatus(this, EventArgs.Empty); //event gets fired here.
                        mpeVideo.Show();
                    }
                    gvVideosNotEmpty();
                    videoCounter++;
                }
                con.Close();
                gvVideos.DataBind();
                txtVideoLink.Text = "";
                gvVideosNotEmpty();
                EnableModelDialog(true);
            }
        }

        protected string UpdateTRAN_CompletionStr(string completionStr, string actualSession)
        {
            string result;
            result = completionStr.Replace(actualSession, "");
            return result;
        }

        protected string GetVideoId(string videoLink)
        {
            string videoId = "";
            if (videoLink != null && videoLink.IndexOf("http://vimeo.com/", 0) == 0)
            {
                try
                {
                    int lastBackSlash = videoLink.LastIndexOf("/");
                    videoId = videoLink.Substring(lastBackSlash + 1);
                }
                catch
                {
                    lblError.Visible = true;
                    EnableModelDialog(true);
                }
            }
            else if (videoLink == "")
            {
                {
                    videoId = "";
                }
            }
            else
            {
                try
                {
                    int firstEqual = videoLink.IndexOf("=");
                    videoId = videoLink.Substring(firstEqual, 12);
                    videoId = videoId.Substring(1);
                }
                catch
                {
                    lblError.Visible = true;
                }
            }
            return videoId;
        }

        protected string YouTubeOrVimeo(string videoId)
        {
            if (videoId.Length == 11)
            {
                return "y";
            }
            return "v";
        }

        protected void lkbUpdate_Click(object sender, EventArgs e)
        {
            EnableModelDialog(true);
            LinkButton lkbDelete = (LinkButton) gvVideos.FindControl("lkbDelete");
            if (sender == lkbDelete)
            {
                gvVideos.DeleteRow(gvVideos.EditIndex);
            }
            gvVideos.UpdateRow(gvVideos.EditIndex, true); // http://msdn.microsoft.com/it-it/library/system.web.ui.webcontrols.gridview.updaterow.aspx
            gvVideosNotEmpty();
        }

        protected void lkbEdit_Click(object sender, EventArgs e)
        {
            EnableModelDialog(true);
        }

        protected void txtVideoLink_TextChanged(object sender, EventArgs e)
        {
            lblError.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void gvVideosNotEmpty()
        {
            if (gvVideos.Rows.Count > 0)
            {
                Session["NewVideosAdded"] = "true";
            }
            else
            {
                Session["NewVideosAdded"] = "false";
            }
        }
        
        protected void lkbDelete_Click(object sender, EventArgs e)
        {
            ViewState["cmdDelete"] = true;
            /*videoCounter--;
            EnableModelDialog(true);
            gvVideos.DeleteRow(gvVideos.SelectedIndex);
            string s = gvVideos.Rows[gvVideos.EditIndex].Cells[0].Text;
            gvVideos.DataBind();
            if (gvVideos.Rows.Count<1)
            {
                ViewState["lastVideoLink"] = "";
            }
            if (gvVideos.EditIndex > -1)
            {

                string deletedVideo = gvVideos.Rows[gvVideos.EditIndex].Cells[3].Text;
                string lastVideoLinks = ViewState["lastVideoLink"].ToString();
                string lastVideoLinksMinusDeleted = lastVideoLinks.Replace(deletedVideo, "");
                ViewState["lastVideoLink"]  = lastVideoLinksMinusDeleted;
            }
            if (gvVideos.Rows.Count > 0)
            {
                Session["NewVideosAdded"] = "true";
            }
            else
            {
                Session["NewVideosAdded"] = "false";
            }*/
        }

        protected void lkbCancel_Click(object sender, EventArgs e)
        {
            EnableModelDialog(true);
        }
    }
}