using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string redir = Server.MapPath(@"~\Images for html\About\CrossTheSky con hdbiking copyright1.jpg");
        ViewState["redir"] = redir;
        
  
    }

    public string pRedir
    {
        get { return ViewState["redir"].ToString(); }
    }
}
