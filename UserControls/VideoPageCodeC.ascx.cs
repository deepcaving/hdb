using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Text.RegularExpressions;
using AjaxControlToolkit;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class UserControls_VideoPageCodeC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox txtInputCo = (TextBox)CommentLoginView.FindControl("txtInputCo") as TextBox;
        //txtInputCo.Text = "";
        TranId();
    }

    protected Guid UserId()
    {
        HtmlEditorExtender txtInputCo_HtmlEditorExtender = (HtmlEditorExtender)CommentLoginView.FindControl("txtInputCo_HtmlEditorExtender");
        object userID = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
        Guid gUserId = (Guid)userID;        
        Session["UserId"] = gUserId.ToString();
        return gUserId;
    }

    public Guid pGuidUserId
    {
        get { return UserId(); }
    }

    protected Guid TranId()
    {
        string sPath = Server.HtmlEncode(Request.Url.ToString());
        string pageName = "";
        Match match;
        Guid gTranID = new Guid();
        try
        {
            match = Regex.Match(sPath, @"([A-Za-z0-9_\-]+)$", RegexOptions.IgnoreCase);
            pageName = match.Groups[1].Value;
            TR_AnagTableAdapter adaptTR_Anag = new TR_AnagTableAdapter();
            //Main.TR_AnagDataTable tableTR_Anag = new Main.TR_AnagDataTable();
            //tableTR_Anag = adaptTR_Anag.GetData();
            //adaptTR_Anag.FillTranIdByTranName(tableTR_Anag, pageName);
            string strTranID = adaptTR_Anag.ScalarQueryGetTRAN_ID(pageName).ToString();
            gTranID = new Guid(strTranID);
            Session["TranId"] = gTranID.ToString();
        }
        catch (Exception)
        {
            //errore recuperato nel catch in VideoPageCode.ascs.cs  
            Response.Redirect("error.aspx");
        }
        return gTranID;
    }

    public Guid pGuidTranId
    {
        get { return TranId(); }
    }

    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    protected void BtnSumbitComment_Click(object sender, EventArgs e)
    {
        object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
        //Guid gUserId = (Guid)userId;
        //string sUserId = gUserId.ToString();
        string thisDir = Server.MapPath("~/.");
        int nrRandomImages = 0;
        string sRandomPath = Server.MapPath("~/Images/a_User_Avatars/RandomImages/");
        System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(sRandomPath);
        nrRandomImages = di.GetFiles().Length;
        int random = RandomNumber(1, nrRandomImages);
        string sUserId = UserId().ToString();
        string pathFrom = thisDir + @"\Images\a_User_Avatars\RandomImages\"+ random.ToString() + ".bmp";
        thisDir = thisDir + @"\Images\a_User_Avatars\" + sUserId;
        string pathTo = thisDir + @"\" + "sAvatar_" + sUserId + ".bmp";
        
        bool dirExists = System.IO.Directory.Exists(thisDir);
        if (!dirExists)
        {
            System.IO.Directory.CreateDirectory(thisDir);                
            try
            {
                // Ensure that the target does not exist.
                File.Delete(pathTo);

                Stream buffer;
                StreamReader srImage = new StreamReader(pathFrom);
                buffer = srImage.BaseStream;
                Bitmap bmImage = new Bitmap(buffer);
                bmImage.Save(pathTo);                                
            }
            catch
            {

            }
        }
        else
        {
            DirectoryInfo di2 = new DirectoryInfo(thisDir);
            if (di2.GetFiles().Length<1)
            {
                // Create the file and clean up handles
                Stream buffer;
                StreamReader srImage = new StreamReader(pathFrom);
                buffer = srImage.BaseStream;
                Bitmap bmImage = new Bitmap(buffer);
                bmImage.Save(pathTo);  
            }
        }

        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        try
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                //Label lblNewCo = (Label)CommentLoginView.FindControl("lblNewCo");
                TextBox txtInputCo = (TextBox)CommentLoginView.FindControl("txtInputCo");
                CommentLoginView.FindControl("txtInputCo_HtmlEditorExtender");
                Guid gUserId = UserId();
                Guid gTranID = TranId();
                //string st = txtInputCo.Text;
                //string st = Server.HtmlEncode(txtInputCo.Text);
                string strOutput = txtInputCo.Text;
                //st.Replace(char.ConvertFromUtf32(13),"<br />");
                if (strOutput == "")
                    return;
                CO_AnTableAdapter adaptComments = new CO_AnTableAdapter();
                Main.CO_AnDataTable tableComment = new Main.CO_AnDataTable();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                SqlParameter obParamUserId = new SqlParameter("@COAN_UserId", SqlDbType.UniqueIdentifier);
                cmd.Parameters.Add(obParamUserId);
                cmd.Parameters["@COAN_UserId"].Value = gUserId;
                cmd.CommandText = "SELECT TOP (1) COAN_TEXT FROM deepcavi_fra.CO_An WHERE (COAN_UserId = @COAN_UserId) ORDER BY COAN_GetDate DESC";
                SqlDataReader reader = cmd.ExecuteReader();
                string stLatestCo = "";
                while (reader.Read())
                {
                    stLatestCo = reader[0].ToString();
                }
                if (stLatestCo != strOutput)
                {
                    Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strOutput);
                    adaptComments.InsertQuery(strOutput, gTranID, gUserId, Guid.Empty, 0);
                }
                gvCoLevel0.DataBind();
                txtInputCo.Text = "";
                
            }
        }
        catch
        {
            Response.Redirect("Error.aspx");
        }
    }
    //protected void lblHtmlText_Init(object sender, EventArgs e)
    //{
    //    //string s = gvCoLevel0.Columns[0].ToString();
    //    //string encodedString = Server.HtmlEncode(s);
    //    //Label lblHtmlText = (Label)gvCoLevel0.FindControl("lblHtmlText");
    //    //lblHtmlText.Text = encodedString;
    //}

    private string CodeAfterMap(Guid tranId)
    {
        string strCodeAfterMap = "";
        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        try
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
                SqlCommand obCmd = new SqlCommand("SELECT TRAN_CodeAfterMap FROM deepcavi_fra.TR_Anag WHERE TRAN_ID = @TRAN_ID", con);
                obCmd.Connection = con;
                obCmd.Parameters.Add(obParamTrackId);
                obCmd.Parameters["@TRAN_ID"].Value = tranId;
                SqlDataReader reader = obCmd.ExecuteReader();
                while (reader.Read())
                {
                    strCodeAfterMap = reader[0].ToString();
                }
                //strCodeAfterMap = @"" + strCodeAfterMap.Replace("\"", string.Empty); 
                return strCodeAfterMap;
            }
        }
        catch (SqlException ex)
        {

            throw;
        }

    }

    public string pCodeAfterMap
    {
        get { return CodeAfterMap(TranId()); }
    }

    protected void gvCoLevel0_RowDataBound(object sender, GridViewRowEventArgs e)
    {        
        //// Retrieve row
        //GridViewRow gvr = e.Row;

        //// Determine row type
        //switch (gvr.RowType)
        //{
        //    case DataControlRowType.DataRow:
        //        {
        //            // Retrieve control                    
        //            TextBox txtOutputCoLevel0 = gvr.FindControl("txtOutputCoLevel0") as TextBox;

        //            // Retrieve value
        //            string strOutput = Server.HtmlDecode(gvr.Cells[0].Text);
        //            txtOutputCoLevel0.Text = strOutput;
        //            break;
        //        }
        //}
        ////Label lblHtmlText = (Label)gvCoLevel0.TemplateControl.FindControl("lblHtmlText");

        ////lblHtmlText.Text = e.Row.Cells[0].Text.ToString();
    }
}