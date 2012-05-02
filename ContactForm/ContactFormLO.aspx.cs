using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using HDBiking.MainTableAdapters;

public partial class ContactForm_ContactFormLO : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MB_QuestionsTableAdapter adapter = new MB_QuestionsTableAdapter();
        adapter.InsertLOUQuestion(txtName.Text, txtEmail.Text, txtQuestion.Text);
        Response.Redirect("ContactFormSuccess.aspx");
    }
    
}