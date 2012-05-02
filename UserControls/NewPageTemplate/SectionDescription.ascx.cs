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
    public partial class SectionDescription : System.Web.UI.UserControl
    {
        public event EventHandler CompletedStatus;
        private bool status;

        public Boolean IsLogin
        {
            get { return status; }
        }

        public string TxtDescription
        {
            get { return txtDescription.Text; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtDescription.Focus();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            txtDescription.Focus();
            if (CompletedStatus != null)
            {
                Session["Description"] = txtDescription.Text;
                mpeDescription.Show();
                lblRfvEmptyText.Text = "";
                if (txtDescription.Text != "")
                {
                    lblRfvEmptyText.Visible = false;
                    status = true;
                    CompletedStatus(this, EventArgs.Empty); //event gets fired here.
                    mpeDescription.Hide();
                }
                else
                {
                    lblRfvEmptyText.Visible = true;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                mpeDescription.Show();
            }
            else
            {
                mpeDescription.Hide();
            }
        }

        protected void txtDescription_TextChanged(object sender, EventArgs e)
        {

        }
    }
}