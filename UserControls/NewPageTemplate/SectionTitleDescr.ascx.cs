using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.UserControls.NewPageTemplate
{
    public partial class SectionTitle : System.Web.UI.UserControl
    {
        public event EventHandler CompletedStatus;
        private bool status;

        public Boolean IsLogin
        {
            get { return status; }
        }

        public string TxtTrack
        {
            get { return txtTrackName.Text; }
        }

        public string TxtExtraDetails
        {
            get { return txtExtraDetails.Text; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtTrackName.Focus();
            if (Session["NewTrackId"] != "")
            {
                SqlConnection strCon = new SqlConnection(ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString);
                SqlDataAdapter da = new SqlDataAdapter();
                string strSelectCurrentRow =
                    "SELECT * FROM deepcavi_fra.TR_Anag WHERE  TRAN_UserID = @UserId and TRAN_ID = @TrackId";
                SqlCommand selectCmd = new SqlCommand(strSelectCurrentRow, strCon);
                da.SelectCommand = selectCmd;
                object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
                Guid gUserId = (Guid)userId;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (CompletedStatus != null)
            {
                mpeTitle.Show();
                lblRfvTrackName.Text = "";
                lblRfvExtraDetails.Text = "";
                if (!(ValidateTxtTrackName().Length > 0) && !(ValidateTxtExtraDetails().Length > 0))
                {
                    status = true;
                    CompletedStatus(this, EventArgs.Empty); //event gets fired here.
                    mpeTitle.Hide();
                }
                else
                {
                    lblRfvTrackName.Text = ValidateTxtTrackName();
                    lblRfvExtraDetails.Text = ValidateTxtExtraDetails();
                }
            }

            //if (txtTrackName.Text == string.Empty)
            //{
            //    mpeTitle.Show();
            //    lblRfvTrackName.Visible = true;
            //}
            //if (CountWords(txtExtraDetails.Text) > 5)
            //{
            //    lblRfvExtraDetails.Visible = true;
            //    mpeTitle.Show();
            //}
            //lblRfvTrackName.Visible = false;
            //lblRfvExtraDetails.Visible = false;
        }

        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                mpeTitle.Show();
            }
            else
            {
                mpeTitle.Hide();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtExtraDetails.Text = string.Empty;
            txtTrackName.Text = string.Empty;
            lblRfvTrackName.Visible = false;
            lblRfvExtraDetails.Visible = false;
            mpeTitle.Hide();
        }

        public int CountWords(string s)
        {
            MatchCollection collection = Regex.Matches(s, @"[\S]+");
            return collection.Count;
        }

        public string ValidateTxtTrackName()
        {
            string message = string.Empty;
            if (txtTrackName.Text == string.Empty)
            {
                message = "Please enter the track's name";
            }
            else if (txtTrackName.Text.Length > 24)
            {
                message = "The track's name is too long (24 char max)";
            }
            else if (CountWords(txtTrackName.Text) > 1)
            {
                message = "Spaces or some characters you've used are not allowed";
            }
            return message;
        }

        public string ValidateTxtExtraDetails()
        {
            string message = string.Empty;
            Match match = Regex.Match(txtExtraDetails.Text, @"([A-Za-z0-9 ])");
            if (CountWords(txtExtraDetails.Text) == 0)
            {
                return "";
            }
            else if (CountWords(txtExtraDetails.Text) > 5)
            {
                message = "There are too many words";
            }
            else if (!match.Success)
            {
                message = "Some characters you've used are not allowed";
            }
            return message;
        }
    }
}