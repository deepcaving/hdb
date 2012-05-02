using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.Pagine_di_prova
{
    public partial class PopupLoginControl : System.Web.UI.UserControl
    {
        public event EventHandler LoginStatus;
        bool status;

        public Boolean IsLogin
        {
            get { return status; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login(object sender, EventArgs e)
        {
            labMsg.Text = string.Empty;

            ModalPopupExtender1.Show(); //show pop up window

            if (LoginStatus != null)
            {
                if (txtLogin.Text.Equals("admin") && txtPassword.Text.Equals("admin"))
                {
                    status = true;

                    LoginStatus(this, EventArgs.Empty); //event get fired here.

                    ModalPopupExtender1.Hide(); //hide pop up window once the user logged in successfully.
                }
                else
                {
                    labMsg.Text = "<font color=red>Sorry user name and password could not found</font>";
                }
            }
        }
        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                ModalPopupExtender1.Show();
            }
            else
            {
                ModalPopupExtender1.Hide();
            }
        }

    }
}