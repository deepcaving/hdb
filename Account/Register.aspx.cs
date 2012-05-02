using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using HDBiking.MainTableAdapters;

public partial class Account_Register : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);
        #region parteAggiuntaDaMe
        TextBox txtUserName = (TextBox)this.RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        TextBox txtEmail = (TextBox)this.RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("Email");
        DropDownList ddlCountry = (DropDownList)this.RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("Country");
        CheckBox cbxSubscription = (CheckBox)this.RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("cbxSubscription");
        CheckBox cbxMonthlyNewsletter = (CheckBox)this.RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("cbxMonthlyNewsletter");
        string s = ddlCountry.SelectedValue.ToString();
        Guid dlCountryGuid = new Guid(s);
        
        aspnet_UsersTableAdapter adapt = new aspnet_UsersTableAdapter();
        MB_UserDetailsTableAdapter adaptDetails = new MB_UserDetailsTableAdapter();
        adapt.UpdateUserWithCountry(dlCountryGuid, cbxSubscription.Checked, cbxMonthlyNewsletter.Checked, txtUserName.Text);

        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        Guid gUserId = new Guid();
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                SqlParameter obParamEmail = new SqlParameter("@Email", SqlDbType.NVarChar);
                obParamEmail.Value = txtEmail.Text;
                cmd.Parameters.Add(obParamEmail);
                cmd.CommandText = @"SELECT UserId
                                                    FROM dbo.aspnet_Membership
                                                    WHERE (CAST(FLOOR(CAST(CreateDate AS FLOAT)) AS DATETIME) 
                                                    = CAST(FLOOR(CAST(GETDATE() AS FLOAT)) AS DATETIME))
                                                    AND Email = @Email
                                                    ORDER BY CreateDate DESC";
                cmd.Connection = sqlCon;
                sqlCon.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    gUserId = (Guid)dr[0];
                }            
            }
            sqlCon.Close();
        }
        
        Guid applicationID = ApplicationId();
        
        adaptDetails.InsertAppAndUserId(applicationID, gUserId);

        #endregion
        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (String.IsNullOrEmpty(continueUrl))
        {
            continueUrl = "~/";
        }
        Response.Redirect(continueUrl);
    }

    public Guid ApplicationId()
    {
        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        Guid gApplicationId;
        //il comando qui sotto funziona in locale ma non sul server // ConfigurationManager.AppSettings["appName"]
        //string stringAppName = Membership.ApplicationName;

        using (SqlConnection objConnection = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT ApplicationId FROM aspnet_Applications WHERE ApplicationName='" + Membership.ApplicationName + "'";
                cmd.Connection = objConnection;
                objConnection.Open();
                gApplicationId = (Guid)cmd.ExecuteScalar();
            }
        }
        return gApplicationId;
    }
}

