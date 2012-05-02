using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HDBiking.MainTableAdapters;

namespace HDBiking.UserControls.NewPageTemplate
{
    public partial class InputWinVideos : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string GenerateVideosCode()
        {
            string resultCode = "";
            string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    con.Open();
                    TR_ArticTableAdapter adapt = new TR_ArticTableAdapter();
                    Main.TR_ArticDataTable table = new Main.TR_ArticDataTable();
                    table = adapt.GetDataByTRAN_IdAndTRAR_UploaderId(new Guid(Session["NewTrackId"].ToString().ToUpper()), new Guid(Session["CurrentUser"].ToString().ToUpper()));
                    DataSet ds = new DataSet();

                    ds.Tables.Add(table);

                    DataRow[] row1;
                    row1 = table.Select("TRAR_PartNum = '1'");

                    int nrOfVideos = 0;
                    foreach (DataRow r in table)
                    {
                        nrOfVideos++;
                    }
                    try
                    {
                        if (row1[0]["TRAR_VideoHost"].ToString() == "v")
                        {
                            resultCode += @"<p style='padding-left:20px; padding-top:10px; width: 240px; position:absolute'>" + nrOfVideos + @" videos available</p>";
                        }
                        else
                        {
                            resultCode += @"<p style='padding-left:20px; padding-top:10px; width: 240px; position:absolute'>" + nrOfVideos + @" videos available</p>";
                        }
                    }
                    catch (Exception)
                    {
                        Session["NewVideosAdded"] = "false";
                        //throw;
                    }
                }
            }
            catch (SqlException err)
            {
                return err.ToString();
            }
            return resultCode;
        }

        public string pGenerateVideosCode
        {
            get
            {
                return GenerateVideosCode();
            }
        }
    }
}