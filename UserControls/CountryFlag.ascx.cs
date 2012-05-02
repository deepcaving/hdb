using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HDBiking.UserControls
{
    public partial class CountryFlag : System.Web.UI.UserControl
    {
        static string CleanInput(string strIn)
        {
            // Replace invalid characters with empty strings.
            return Regex.Replace(strIn, @"[\\""]", "");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string strPreviousPage = HttpContext.Current.Request.Url.AbsoluteUri;
            try
            {
                if (strPreviousPage != null)
                {
                    // For demo purposes.
                    //System.Threading.Thread.Sleep(1000);
                    //string GpsIesTrackId = "fuijnepeqeffjcyl";
                    //string strGpsIesFirstUrlPart = "http://www.gpsies.com/map.do?fileId=";
                    //string strGpsIesTrackUrl = strGpsIesFirstUrlPart + GpsIesTrackId + "&language=it";
                    string strGpsIesTrackUrl = GetGpsIesTrackUrl();
                    strGpsIesTrackUrl = strGpsIesTrackUrl.Replace("Only", "");
                    WebClient client = new WebClient();

                    string htmlCode = client.DownloadString(strGpsIesTrackUrl);
                    //Stream stream = client.OpenRead(htmlCode);
                    //StreamReader reader = new StreamReader(stream);
                    //string requestString = reader.ReadToEnd();
                    int imageTagPosition = htmlCode.IndexOf("<p class=\"floatLeft\">");
                    string substringFromTagToEnd = htmlCode.Substring(imageTagPosition, htmlCode.Length - imageTagPosition);
                    int endImagePosition = substringFromTagToEnd.IndexOf("</p>");
                    string substringTag = substringFromTagToEnd.Substring(0, endImagePosition);
                    substringTag = substringTag.Replace("\t", "");
                    substringTag = substringTag.Replace("\n", " ");
                    substringTag = substringTag.Replace(@"\", "");
                    substringTag = substringTag.Replace(",", " ");
                    substringTag = CleanInput(substringTag);
                    //int imgPosition = substringTag.IndexOf("<img src=");
                    string flagUrlPart = Regex.Match(substringTag, @"\<img src=([^)]*)\ alt").Groups[1].Value;
                    string flagAlt = Regex.Match(substringTag, @"\ alt=([^)]*)\ />").Groups[1].Value;
                    flagAlt = flagAlt.Substring(0, flagAlt.IndexOf(" "));

                    imgFlag.ImageUrl = "http://www.gpsies.com/" + flagUrlPart;
                    imgFlag.ToolTip = flagAlt;
                    lblCountry.Text = flagAlt;
                }
            }
            catch (Exception)
            {

            }
        }

        private string GetGpsIesTrackUrl()
        {
            string strTrackNameUrl = Request.ServerVariables["HTTP_REFERER"];
            int equalsPosition = strTrackNameUrl.IndexOf("=");
            string strTrackName = strTrackNameUrl.Substring(equalsPosition + 1);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_Name", SqlDbType.VarChar);
            obParamTrackId.Value = strTrackName;
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText =
                @"SELECT TRAN_BikemapUrl FROM deepcavi_fra.TR_Anag WHERE TRAN_Name = @TRAN_Name";
            string strMapUrl = "";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                strMapUrl = dr["TRAN_BikemapUrl"].ToString();
            }
            dr.Close(); dr.Dispose();
            return strMapUrl;
        }
    }
}