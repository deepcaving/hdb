using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        string txturl = Request.Url.ToString();

        //if (txturl.Contains("Account/Login.aspx"))
            //Thread.Sleep(8000);
            //Response.Redirect("ContactFormSuccess.aspx");
    }
}
