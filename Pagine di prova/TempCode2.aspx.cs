using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pagine_di_prova_TempCode2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private string GenerateCode()
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        string s = dv.Table.Rows[0][0].ToString();
        return s;
    }

    public string PGenerateCode
    {
        get { return GenerateCode(); }
    }
}