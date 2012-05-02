using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.Pagine_di_prova
{
    public partial class LoginTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ShowMessage(object sender, EventArgs e)
        {
            PopupLoginControl1.Visible = true;
            PopupLoginControl1.EnableModelDialog(true);
        }

        //method get called when the usercontrol event get fired
        protected void PopupLoginCntl_Completed(object sender, EventArgs e)
        {
            if (PopupLoginControl1.IsLogin)
            {
                divComments.Visible = true;
            }
            else
            {
                divComments.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //save your comments here.
        }

    }
}