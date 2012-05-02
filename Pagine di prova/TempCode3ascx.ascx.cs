using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pagine_di_prova_TempCode3ascx : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GenerateCode();
    }

    private string GenerateCode()
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        //<img alt='' src='~/Images/TransAlpin_Bike_2011/ExtraPictures/small/DSC_0359.jpg' />
        string s = dv.Table.Rows[0][0].ToString();
        //s = s.Replace("'", "&#34;");
        string result = "";
        //result += @"<asp:Image ID='Image1' runat='server' ImageUrl='" + s + @"' Width='200'/>";
        result += @"<a href='Images/" + "TransAlpin_Bike_2011" + "/Large/" + "2" + ".jpg'><img src='Images/" +
                  "TransAlpin_Bike_2011" + "/Thumb/" + "2.jpg" + ".bmp' alt='" + "2.jpg" + "' title='" + "Image " + "2.jpg" +
                  "' width='160' height='90' style='border-style:none; padding-right:5px'/></a>";
        return result;
    }

    public string PGenerateCode
    {
        get { return GenerateCode(); }
    }
}