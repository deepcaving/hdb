using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.UserControls.NewPageTemplate
{
    public partial class SectionRadios : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                mpePictures.Show();
            }
            else
            {
                mpePictures.Hide();
            }
        }
    }
}