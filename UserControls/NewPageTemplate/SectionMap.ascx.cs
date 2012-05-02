using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.UserControls.NewPageTemplate
{
    public partial class SectionMap : System.Web.UI.UserControl
    {
        private string trackId;

        public event EventHandler CompletedStatus;
        private bool status;

        public Boolean IsLogin
        {
            get { return status; }
        }

        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                mpeMap.Show();
            }
            else
            {
                mpeMap.Hide();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            string mapUrl = txtMapLink.Text;
            string mapId = "";
            string mapProfileFolder = "";
            string mapProfilePartialUrl = "";
            if (mapUrl != "")
            {
                try
                {
                    if (mapUrl.Contains("http://www.gpsies.com/") && mapUrl.Contains("fileId="))
                    {
                        int positionOfEqualsInUrl = mapUrl.LastIndexOf("=");
                        mapId = mapUrl.Substring(positionOfEqualsInUrl + 1, 16);
                    }
                    if (mapId.Length != 16)
                    {
                        lblError.Visible = true;
                        mpeMap.Show();
                    }
                    else
                    {
                        mapProfileFolder = mapId.Substring(0, 2);
                        mapProfilePartialUrl = "charts/" + mapProfileFolder + "/map/" + mapId + "_map.png";
                        mapUrl = "http://www.gpsies.com/mapOnly.do?fileId=" + mapId;
                        UpdateDB(mapUrl, mapProfilePartialUrl);
                    }
                }
                catch
                {
                    lblError.Visible = true;
                    mpeMap.Show();
                }
            }
            else
            {
                UpdateDB("", "");
            }
            UpdateDB(mapUrl, mapProfilePartialUrl);
            status = true;
            CompletedStatus(this, EventArgs.Empty);
            mpeMap.Hide();
        }

        protected void UpdateDB(string mapUrl, string mapProfilePartialUrl)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamMapUrl = new SqlParameter("@TRAN_BikemapUrl", SqlDbType.VarChar);
            obParamMapUrl.Value = mapUrl;
            cmd.Parameters.Add(obParamMapUrl);
            SqlParameter obParamProfile = new SqlParameter("@TRAN_BikemapNr", SqlDbType.VarChar);
            obParamProfile.Value = mapProfilePartialUrl;
            cmd.Parameters.Add(obParamProfile);
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText =
                @"UPDATE deepcavi_fra.TR_Anag
                    SET TRAN_BikemapUrl = @TRAN_BikemapUrl, TRAN_BikemapNr = @TRAN_BikemapNr
                    WHERE TRAN_ID = @TRAN_ID";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void txtMapLink_TextChanged(object sender, EventArgs e)
        {
            lblError.Visible = false;
        }
    }
}