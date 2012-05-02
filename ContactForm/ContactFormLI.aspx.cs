using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using HDBiking.MainTableAdapters;

public partial class ContactForm_ContactFormLI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {        
        object userID = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
        MB_QuestionsTableAdapter adapter = new MB_QuestionsTableAdapter();
        Guid g = new Guid(userID.ToString());
        adapter.InsertLIUQuestion(g, txtQuestion.Text);
        Response.Redirect("ContactFormSuccess.aspx");
    }
}