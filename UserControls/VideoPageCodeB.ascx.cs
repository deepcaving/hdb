using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Configuration;
using System.Data.SqlClient;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class UserControls_VideoPageCodeB : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string GenerateCode()
    {
        string resultCode = "";

        string sPath = Server.HtmlEncode(Request.Url.ToString());
        Match match = Regex.Match(sPath, @"([A-Za-z0-9_\-]+)$", RegexOptions.IgnoreCase);
        string pageName = match.Groups[1].Value;

        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;

        try
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();

                TR_AnagTableAdapter adaptTR_Anag = new TR_AnagTableAdapter();
                Main.TR_AnagDataTable tableTR_Anag = new Main.TR_AnagDataTable();
                tableTR_Anag = adaptTR_Anag.GetData();
                DataRow[] rowTR_Anag;
                string tempSelect = "TRAN_Name = '" + pageName + "'";
                rowTR_Anag = tableTR_Anag.Select(tempSelect);

                resultCode = @"            
                            <iframe src='" + rowTR_Anag[0]["TRAN_BikemapUrl"] + @"' width='937' height='600' 
                                frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>
                            </iframe>";

                return resultCode;
            }
        }
        catch(SqlException err)
        {
            return err.ToString();
        }
    }

    protected string pGeneratecode
    {
        get { return GenerateCode(); }
    }
}