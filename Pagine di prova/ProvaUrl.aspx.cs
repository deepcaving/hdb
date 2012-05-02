using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class Pagine_di_prova_ProvaUrl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //***
        //string s = Request.Url.AbsolutePath;
        //***
        
        TR_ListPicTableAdapter adapt = new TR_ListPicTableAdapter();
        Main.TR_ListPicDataTable table = new Main.TR_ListPicDataTable();
        table = adapt.GetData();
        try
        {
            string trackName = table.Rows[3].ItemArray[0].ToString();
            Response.Redirect("~/VideoPages/" + trackName + ".aspx" + "?TrackName=" + trackName);
        }
        catch (Exception)
        {
            //Response.Redirect("~/Default.aspx");
        }

    }

}