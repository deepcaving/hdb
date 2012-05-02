using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

public partial class ExtraContent1 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private string GenerateCode()
    {
        string sPath = Server.HtmlEncode(Request.Url.ToString());
        Match match = Regex.Match(sPath, @"([A-Za-z0-9_\-]+)$", RegexOptions.IgnoreCase);
        Session["pageName"] = match.Groups[1].Value;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        string s = dv.Table.Rows[0][0].ToString();
        return s;
    }

    public string PGenerateCode
    {
        get { return GenerateCode(); }
    }
}