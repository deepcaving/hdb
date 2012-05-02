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

namespace HDBiking.Account
{
    public partial class MyTracks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sUserId = GetCurrentUser();
            Session["CurrentUser"] = sUserId;
            Session["NewTrackId"] = "";
        }

        protected string GetCurrentUser()
        {
            string strUserId;
            object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            Guid gUserId = (Guid)userId;
            strUserId = gUserId.ToString();
            return strUserId;
        }

        protected void gvMyTracks_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedTrackName = gvMyTracks.SelectedRow.Cells[1].Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackName = new SqlParameter("@TRAN_Name", SqlDbType.VarChar);
            obParamTrackName.Value = selectedTrackName;
            cmd.Parameters.Add(obParamTrackName);
            SqlParameter obParamUserId = new SqlParameter("@TRAN_UserID", SqlDbType.UniqueIdentifier);
            obParamUserId.Value = new Guid(GetCurrentUser());
            cmd.Parameters.Add(obParamUserId);
            cmd.CommandText = "SELECT TRAN_ID FROM deepcavi_fra.TR_Anag WHERE TRAN_Name = @TRAN_Name AND TRAN_UserID = @TRAN_UserID";
            con.Open();
            string strCurrentUser = "";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                strCurrentUser = dr[0].ToString();
            }
            con.Close();
            Session["NewTrackId"] = strCurrentUser;
            Response.Redirect("NewPageTemplate.aspx");
        }
    }
}