using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Web.Security;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class _Default : System.Web.UI.Page
{

    //
    //la tabella TR_ListPic viene creata e popolata dalla pagina Admin/ImgUpload.aspx
    //
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["NewVideosAdded"] = "false"; //per pagina NewPageTemplate
        ApplicationId();

        if (!IsPostBack)
        {

            Session["next10"] = 0;
            for (int i = 1; i <= 10; i++)
            {
                string playButton = "playButton" + i;
                string getSlides = "getSlides" + i;
            }


            CreateListDS();



            /*TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
            Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();*/
            TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
            Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
            table = adapt.GetData();       

            #region Elevation
            //prepare src for elevation img
            string bikemapNr1 = "";
            string bikemapNr2 = "";
            string bikemapNr3 = "";
            string bikemapNr4 = "";
            string bikemapNr5 = "";
            string bikemapNr6 = "";
            string bikemapNr7 = "";
            string bikemapNr8 = "";
            string bikemapNr9 = "";
            string bikemapNr10 = "";

            try
            {
                bikemapNr1 = table.Rows[0]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap1"] = "http://www.gpsies.com/" + bikemapNr1;
                ViewState["strTrackName1"] = table.Rows[0]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect1"] = @"VideoPages/" + ViewState["strTrackName1"].ToString() + ".aspx";
                ViewState["strPicName1"] = @"Images/" + table.Rows[0]["TRAN_ID"].ToString() + @"/Thumb/"+ Convert.ToInt16(table.Rows[0]["TRAN_Pic1"]) + ".bmp";
                ViewState["strTrackName1"] = ViewState["strTrackName1"].ToString().Replace("_", " ");
                ViewState["strDistanceKm1"] = table.Rows[0]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles1"] = table.Rows[0]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM1"] = table.Rows[0]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet1"] = table.Rows[0]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory1"] = table.Rows[0]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap1"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName1"] = "";
                ViewState["strTrackRedirect1"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName1"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory1"] = "";
            }

            try
            {
                bikemapNr2 = table.Rows[1]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap2"] = "http://www.gpsies.com/" + bikemapNr2;
                ViewState["strTrackName2"] = table.Rows[1]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect2"] = @"VideoPages/" + ViewState["strTrackName2"].ToString() + ".aspx";
                ViewState["strPicName2"] = @"Images/" + ViewState["strTrackName2"].ToString() + @"/Thumb/" + table.Rows[1]["TRAN_Pic1"].ToString();
                ViewState["strTrackName2"] = ViewState["strTrackName2"].ToString().Replace("_", " ");
                ViewState["strDistanceKm2"] = table.Rows[1]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles2"] = table.Rows[1]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM2"] = table.Rows[1]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet2"] = table.Rows[1]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory2"] = table.Rows[1]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap2"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName2"] = "";
                ViewState["strTrackRedirect2"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName2"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory2"] = "";
            }

            try
            {
                bikemapNr3 = table.Rows[2]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap3"] = "http://www.gpsies.com/" + bikemapNr3;
                ViewState["strTrackName3"]  = table.Rows[2]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect3"] = @"VideoPages/" + ViewState["strTrackName3"].ToString() + ".aspx";
                ViewState["strPicName3"] = @"Images/" + ViewState["strTrackName3"].ToString() + @"/Thumb/" + table.Rows[2]["TRAN_Pic1"].ToString();
                ViewState["strTrackName3"] = ViewState["strTrackName3"].ToString().Replace("_", " ");
                ViewState["strDistanceKm3"] = table.Rows[2]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles3"] = table.Rows[2]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM3"] = table.Rows[2]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet3"] = table.Rows[2]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory3"] = table.Rows[2]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap3"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName3"] = "";
                ViewState["strTrackRedirect3"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName3"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory3"] = "";
            }

            try
            {
                bikemapNr4 = table.Rows[3]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap4"] = "http://www.gpsies.com/" + bikemapNr4;
                ViewState["strTrackName4"]  = table.Rows[3]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect4"] = @"VideoPages/" + ViewState["strTrackName4"].ToString() + ".aspx";
                ViewState["strPicName4"] = @"Images/" + ViewState["strTrackName4"].ToString() + @"/Thumb/" + table.Rows[3]["TRAN_Pic1"].ToString();
                ViewState["strTrackName4"] = ViewState["strTrackName4"].ToString().Replace("_", " ");
                ViewState["strDistanceKm4"] = table.Rows[3]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles4"] = table.Rows[3]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM4"] = table.Rows[3]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet4"] = table.Rows[3]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory4"] = table.Rows[3]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap4"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName4"] = "";
                ViewState["strTrackRedirect4"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName4"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory4"] = "";
            }

            try
            {
                bikemapNr5 = table.Rows[4]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap5"] = "http://www.gpsies.com/" + bikemapNr5;
                ViewState["strTrackName5"] = table.Rows[4]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect5"] = @"VideoPages/" + ViewState["strTrackName5"].ToString() + ".aspx";
                ViewState["strPicName5"] = @"Images/" + ViewState["strTrackName5"].ToString() + @"/Thumb/" + table.Rows[4]["TRAN_Pic1"].ToString();
                ViewState["strTrackName5"] = ViewState["strTrackName5"].ToString().Replace("_", " ");
                ViewState["strDistanceKm5"] = table.Rows[4]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles5"] = table.Rows[4]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM5"] = table.Rows[4]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet5"] = table.Rows[4]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory5"] = table.Rows[4]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap5"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName5"] = "";
                ViewState["strTrackRedirect5"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName5"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory5"] = "";
            }

            try
            {
                bikemapNr6 = table.Rows[5]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap6"] = "http://www.gpsies.com/" + bikemapNr6;
                ViewState["strTrackName6"] = table.Rows[5]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect6"] = @"VideoPages/" + ViewState["strTrackName6"].ToString() + ".aspx";
                ViewState["strPicName6"] = @"Images/" + ViewState["strTrackName6"].ToString() + @"/Thumb/" + table.Rows[5]["TRAN_Pic1"].ToString();
                ViewState["strTrackName6"] = ViewState["strTrackName6"].ToString().Replace("_", " ");
                ViewState["strDistanceKm6"] = table.Rows[5]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles6"] = table.Rows[5]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM6"] = table.Rows[5]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet6"] = table.Rows[5]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory6"] = table.Rows[5]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap6"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName6"] = "";
                ViewState["strTrackRedirect6"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName6"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory6"] = "";
            }

            try
            {
                bikemapNr7 = table.Rows[6]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap7"] = "http://www.gpsies.com/" + bikemapNr7;
                ViewState["strTrackName7"] = table.Rows[6]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect7"] = @"VideoPages/" + ViewState["strTrackName7"].ToString() + ".aspx";
                ViewState["strPicName7"] = @"Images/" + ViewState["strTrackName7"].ToString() + @"/Thumb/" + table.Rows[6]["TRAN_Pic1"].ToString();
                ViewState["strTrackName7"] = ViewState["strTrackName7"].ToString().Replace("_", " ");
                ViewState["strDistanceKm7"] = table.Rows[6]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles7"] = table.Rows[6]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM7"] = table.Rows[6]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet7"] = table.Rows[6]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory7"] = table.Rows[6]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap7"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName7"] = "";
                ViewState["strTrackRedirect7"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName7"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory7"] = "";
            }

            try
            {
                bikemapNr8 = table.Rows[7]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap8"] = "http://www.gpsies.com/" + bikemapNr8;
                ViewState["strTrackName8"] = table.Rows[7]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect8"] = @"VideoPages/" + ViewState["strTrackName8"].ToString() + ".aspx";
                ViewState["strPicName8"] = @"Images/" + ViewState["strTrackName8"].ToString() + @"/Thumb/" + table.Rows[7]["TRAN_Pic1"].ToString();
                ViewState["strTrackName8"] = ViewState["strTrackName8"].ToString().Replace("_", " ");
                ViewState["strDistanceKm8"] = table.Rows[7]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles8"] = table.Rows[7]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM8"] = table.Rows[7]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet8"] = table.Rows[7]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory8"] = table.Rows[7]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap8"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName8"] = "";
                ViewState["strTrackRedirect8"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName8"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory8"] = "";
            }

            try
            {
                bikemapNr9 = table.Rows[8]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap9"] = "http://www.gpsies.com/" + bikemapNr9;
                ViewState["strTrackName9"] = table.Rows[8]["TRAN_Name"].ToString();
                ViewState["strTrackRedirect9"] = @"VideoPages/" + ViewState["strTrackName9"].ToString() + ".aspx";
                ViewState["strPicName9"] = @"Images/" + ViewState["strTrackName9"].ToString() + @"/Thumb/" + table.Rows[8]["TRAN_Pic1"].ToString();
                ViewState["strTrackName9"] = ViewState["strTrackName9"].ToString().Replace("_", " ");
                ViewState["strDistanceKm9"] = table.Rows[8]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles9"] = table.Rows[8]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM9"] = table.Rows[8]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet9"] = table.Rows[8]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory9"] = table.Rows[8]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap9"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName9"] = "";
                ViewState["strTrackRedirect9"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName9"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory9"] = "";
            }

            try
            {
                bikemapNr10 = table.Rows[9]["TRAN_BikemapNr"].ToString();
                ViewState["strSrcBikemap10"] = "http://www.gpsies.com/" + bikemapNr10;
                ViewState["strTrackName10"] = table.Rows[9]["TRAN_Name"].ToString();
                ViewState["strPicName10"] = @"Images/" + ViewState["strTrackName10"].ToString() + @"/Thumb/" + table.Rows[9]["TRAN_Pic1"].ToString();
                ViewState["strTrackRedirect10"] = @"VideoPages/" + ViewState["strTrackName10"].ToString() + ".aspx";
                ViewState["strPicName10"] = @"Images/" + ViewState["strTrackName10"].ToString() + @"/Thumb/" + table.Rows[9]["TRAN_Pic1"].ToString();
                ViewState["strTrackName10"] = ViewState["strTrackName10"].ToString().Replace("_", " ");
                ViewState["strDistanceKm10"] = table.Rows[9]["TRAN_DistanceKm"].ToString();
                ViewState["strDistanceMiles10"] = table.Rows[9]["TRAN_DistanceMiles"].ToString();
                ViewState["strVerticalClimbM10"] = table.Rows[9]["TRAN_VerticalClimbM"].ToString();
                ViewState["strVerticalClimbFeet10"] = table.Rows[9]["TRAN_VerticalClimbFeet"].ToString();
                ViewState["strCategory10"] = table.Rows[9]["TRAN_Category"].ToString();
            }
            catch (Exception)
            {
                ViewState["strSrcBikemap10"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strTrackName10"] = "";
                ViewState["strTrackRedirect10"] = Server.MapPath(@"~\Default.aspx");
                ViewState["strPicName10"] = Server.MapPath(@"~\Images\white background.bmp");
                ViewState["strCategory10"] = "";
            }
            #endregion
           
        }

        //#region WhenWhiteBackground
        TR_AnagForDefaultPageTableAdapter adaptPicRow = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable tablePicRow = new Main.TR_AnagForDefaultPageDataTable();
        tablePicRow = adaptPicRow.GetData();

    }

    public void CreateListDS()
    {/*
        //aggiunto il 22/09/2011
        //DataSet ds = new DataSet();
        //DataTable dt = new DataTable("gvSourcePerPage");
        //ds.Tables.Add(dt);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        DataTable listTable = new DataTable();

        //http://geekswithblogs.net/dotNETvinz/archive/2009/02/19/binding-gridview-with-data---the-ado.net-way.aspx
        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        string strSelect = @"SELECT DISTINCT (SELECT COUNT(TRAN_ID)
	            FROM deepcavi_fra.TR_Anag
	            WHERE TRAN_Enabled = 1) AS RowID,	
	            TRAN_ShotDate,	
	            'emptyStr' AS slideShow,	
	            'emptyStr'  AS toggleVisibility,		
	            'emptyStr'  AS content,	
	            'emptyStr'  AS pic,	
	            'emptyStr' AS imgPic,		
	            'emptyStr'  AS Image,		
	            'emptyStr' AS Image_Click,                
                'emptyStr' AS getSlides,			
	            'Images/' + CAST(TRAN_ID AS varchar(38)) + '/Thumb/' + CAST(TRAN_Default_Pic AS varchar(2)) + '.bmp' AS defaultPicName,	
                TRAN_ID, 
                TRAN_Name, 'http://www.gpsies.com/' + TRAN_BikemapNr AS BikemapNr, 
                'TrackPage.aspx?' + 'Name=' +TRAN_Name AS strTrackRedirect, 
                '~/TrackPage.aspx?' + 'Name=' +TRAN_Name AS PostBackUrl,                 
                REPLACE(TRAN_Name, '_', ' ') AS TRAN_Name_Title, TRAN_Category AS category, 
                TRAN_Pic1, TRAN_Pic2, TRAN_Pic3, 
                TRAN_Pic4, TRAN_Pic5, TRAN_Pic6, 
                TRAN_Pic7, TRAN_Pic8, TRAN_BikemapNr, 
                TRAN_DistanceKm, TRAN_DistanceMiles, TRAN_VerticalClimbM, 
                TRAN_VerticalClimbFeet
                FROM deepcavi_fra.TR_Anag 
                WHERE (TRAN_Enabled = '1')
                ORDER BY TRAN_ShotDate desc  ";
       
        try
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(strSelect, strCon);
            DataSet ds = new DataSet();
            ds.Tables.Add(listTable);
            da.Fill(ds);                     
            DataColumn colCounter = new DataColumn("colNumFrom1to10", typeof(Int16));
            listTable.Columns.Add(colCounter);            
            DataColumn slideShow = new DataColumn("slideShow", typeof(string));
            listTable.Columns.Add(slideShow);
            DataColumn toggleVisibility = new DataColumn("toggleVisibility", typeof(string));
            listTable.Columns.Add(toggleVisibility);
            DataColumn content = new DataColumn("content", typeof(string));
            listTable.Columns.Add(content);
            DataColumn pic = new DataColumn("pic", typeof(string));
            listTable.Columns.Add(pic);
            DataColumn imgPic = new DataColumn("imgPic", typeof(string));
            listTable.Columns.Add(imgPic);
            DataColumn Image = new DataColumn("Image", typeof(string));
            listTable.Columns.Add(Image);
            DataColumn Image_Click = new DataColumn("Image_Click", typeof(string));
            listTable.Columns.Add(Image_Click);
            DataColumn getSlides = new DataColumn("getSlides", typeof(string));
            listTable.Columns.Add(getSlides);
            da.Fill(listTable);
            da.Fill(ds);
            Int16 count = 1;
            Int32 rowCount = (Int32)listTable.Rows.Count;

            for (Int32 i = 0; i < rowCount; i++)
            {
                listTable.Rows[i][colCounter] = count;
                listTable.Rows[i][slideShow] = "slideShow" + count.ToString();
                listTable.Rows[i][toggleVisibility] = "toggleVisibility" + count.ToString();
                listTable.Rows[i][content] = "content" + count.ToString();
                listTable.Rows[i][pic] = "pic" + count.ToString();
                listTable.Rows[i][imgPic] = "imgPic" + count.ToString();
                listTable.Rows[i][Image] = "Image" + count.ToString();
                listTable.Rows[i][Image_Click] = "Image_Click" + count.ToString();
                listTable.Rows[i][getSlides] = "getSlides" + count.ToString();
                count++;
                if (count == 11)
                    count = 1;
            }      
            
            
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            con.Close();
        }  */      
    }

    #region Proprieta' pagina Bikemap
    public string pStrSrcBikemap1
    {
        get { return ViewState["strSrcBikemap1"].ToString(); }
    }
    public string pStrSrcBikemap2
    {
        get { return ViewState["strSrcBikemap2"].ToString(); }
    }
    public string pStrSrcBikemap3
    {
        get { return ViewState["strSrcBikemap3"].ToString(); }
    }
    public string pStrSrcBikemap4
    {
        get { return ViewState["strSrcBikemap4"].ToString(); }
    }
    public string pStrSrcBikemap5
    {
        get { return ViewState["strSrcBikemap5"].ToString(); }
    }
    public string pStrSrcBikemap6
    {
        get { return ViewState["strSrcBikemap6"].ToString(); }
    }
    public string pStrSrcBikemap7
    {
        get { return ViewState["strSrcBikemap7"].ToString(); }
    }
    public string pStrSrcBikemap8
    {
        get { return ViewState["strSrcBikemap8"].ToString(); }
    }
    public string pStrSrcBikemap9
    {
        get { return ViewState["strSrcBikemap9"].ToString(); }
    }
    public string pStrSrcBikemap10
    {
        get { return ViewState["strSrcBikemap10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina trackName
    public string pStrTrackName1
    {
        get { return ViewState["strTrackName1"].ToString(); }
    }
    public string pStrTrackName2
    {
        get { return ViewState["strTrackName2"].ToString(); }
    }
    public string pStrTrackName3
    {
        get { return ViewState["strTrackName3"].ToString(); }
    }
    public string pStrTrackName4
    {
        get { return ViewState["strTrackName4"].ToString(); }
    }
    public string pStrTrackName5
    {
        get { return ViewState["strTrackName5"].ToString(); }
    }
    public string pStrTrackName6
    {
        get { return ViewState["strTrackName6"].ToString(); }
    }
    public string pStrTrackName7
    {
        get { return ViewState["strTrackName7"].ToString(); }
    }
    public string pStrTrackName8
    {
        get { return ViewState["strTrackName8"].ToString(); }
    }
    public string pStrTrackName9
    {
        get { return ViewState["strTrackName9"].ToString(); }
    }
    public string pStrTrackName10
    {
        get { return ViewState["strTrackName10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina pic
    public string pStrPicName1
    {
        get { return ViewState["strPicName1"].ToString(); }
    }
    public string pStrPicName2
    {
        get { return ViewState["strPicName2"].ToString(); }
    }
    public string pStrPicName3
    {
        get { return ViewState["strPicName3"].ToString(); }
    }
    public string pStrPicName4
    {
        get { return ViewState["strPicName4"].ToString(); }
    }
    public string pStrPicName5
    {
        get { return ViewState["strPicName5"].ToString(); }
    }
    public string pStrPicName6
    {
        get { return ViewState["strPicName6"].ToString(); }
    }
    public string pStrPicName7
    {
        get { return ViewState["strPicName7"].ToString(); }
    }
    public string pStrPicName8
    {
        get { return ViewState["strPicName8"].ToString(); }
    }
    public string pStrPicName9
    {
        get { return ViewState["strPicName9"].ToString(); }
    }
    public string pStrPicName10
    {
        get { return ViewState["strPicName10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina DistanceKm
    public string pStrDistanceKm1
    {
        get { return ViewState["strDistanceKm1"].ToString(); }
    }
    public string pStrDistanceKm2
    {
        get { return ViewState["strDistanceKm2"].ToString(); }
    }
    public string pStrDistanceKm3
    {
        get { return ViewState["strDistanceKm3"].ToString(); }
    }
    public string pStrDistanceKm4
    {
        get { return ViewState["strDistanceKm4"].ToString(); }
    }
    public string pStrDistanceKm5
    {
        get { return ViewState["strDistanceKm5"].ToString(); }
    }
    public string pStrDistanceKm6
    {
        get { return ViewState["strDistanceKm6"].ToString(); }
    }
    public string pStrDistanceKm7
    {
        get { return ViewState["strDistanceKm7"].ToString(); }
    }
    public string pStrDistanceKm8
    {
        get { return ViewState["strDistanceKm8"].ToString(); }
    }
    public string pStrDistanceKm9
    {
        get { return ViewState["strDistanceKm9"].ToString(); }
    }
    public string pStrDistanceKm10
    {
        get { return ViewState["strDistanceKm10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina DistanceMiles
    public string pStrDistanceMiles1
    {
        get { return ViewState["strDistanceMiles1"].ToString(); }
    }
    public string pStrDistanceMiles2
    {
        get { return ViewState["strDistanceMiles2"].ToString(); }
    }
    public string pStrDistanceMiles3
    {
        get { return ViewState["strDistanceMiles3"].ToString(); }
    }
    public string pStrDistanceMiles4
    {
        get { return ViewState["strDistanceMiles4"].ToString(); }
    }
    public string pStrDistanceMiles5
    {
        get { return ViewState["strDistanceMiles5"].ToString(); }
    }
    public string pStrDistanceMiles6
    {
        get { return ViewState["strDistanceMiles6"].ToString(); }
    }
    public string pStrDistanceMiles7
    {
        get { return ViewState["strDistanceMiles7"].ToString(); }
    }
    public string pStrDistanceMiles8
    {
        get { return ViewState["strDistanceMiles8"].ToString(); }
    }
    public string pStrDistanceMiles9
    {
        get { return ViewState["strDistanceMiles9"].ToString(); }
    }
    public string pStrDistanceMiles10
    {
        get { return ViewState["strDistanceMiles10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina VerticalClimbM
    public string pStrVerticalClimbM1
    {
        get { return ViewState["strVerticalClimbM1"].ToString(); }
    }
    public string pStrVerticalClimbM2
    {
        get { return ViewState["strVerticalClimbM2"].ToString(); }
    }
    public string pStrVerticalClimbM3
    {
        get { return ViewState["strVerticalClimbM3"].ToString(); }
    }
    public string pStrVerticalClimbM4
    {
        get { return ViewState["strVerticalClimbM4"].ToString(); }
    }
    public string pStrVerticalClimbM5
    {
        get { return ViewState["strVerticalClimbM5"].ToString(); }
    }
    public string pStrVerticalClimbM6
    {
        get { return ViewState["strVerticalClimbM6"].ToString(); }
    }
    public string pStrVerticalClimbM7
    {
        get { return ViewState["strVerticalClimbM7"].ToString(); }
    }
    public string pStrVerticalClimbM8
    {
        get { return ViewState["strVerticalClimbM8"].ToString(); }
    }
    public string pStrVerticalClimbM9
    {
        get { return ViewState["strVerticalClimbM9"].ToString(); }
    }
    public string pStrVerticalClimbM10
    {
        get { return ViewState["strVerticalClimbM10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina VerticalClimbFeet
    public string pStrVerticalClimbFeet1
    {
        get { return ViewState["strVerticalClimbFeet1"].ToString(); }
    }
    public string pStrVerticalClimbFeet2
    {
        get { return ViewState["strVerticalClimbFeet2"].ToString(); }
    }
    public string pStrVerticalClimbFeet3
    {
        get { return ViewState["strVerticalClimbFeet3"].ToString(); }
    }
    public string pStrVerticalClimbFeet4
    {
        get { return ViewState["strVerticalClimbFeet4"].ToString(); }
    }
    public string pStrVerticalClimbFeet5
    {
        get { return ViewState["strVerticalClimbFeet5"].ToString(); }
    }
    public string pStrVerticalClimbFeet6
    {
        get { return ViewState["strVerticalClimbFeet6"].ToString(); }
    }
    public string pStrVerticalClimbFeet7
    {
        get { return ViewState["strVerticalClimbFeet7"].ToString(); }
    }
    public string pStrVerticalClimbFeet8
    {
        get { return ViewState["strVerticalClimbFeet8"].ToString(); }
    }
    public string pStrVerticalClimbFeet9
    {
        get { return ViewState["strVerticalClimbFeet9"].ToString(); }
    }
    public string pStrVerticalClimbFeet10
    {
        get { return ViewState["strVerticalClimbFeet10"].ToString(); }
    }
    #endregion

    #region Proprieta' pagina Category
    public string pStrCategory1
    {
        get { return ViewState["strCategory1"].ToString(); }
    }
    public string pStrCategory2
    {
        get { return ViewState["strCategory2"].ToString(); }
    }
    public string pStrCategory3
    {
        get { return ViewState["strCategory3"].ToString(); }
    }
    public string pStrCategory4
    {
        get { return ViewState["strCategory4"].ToString(); }
    }
    public string pStrCategory5
    {
        get { return ViewState["strCategory5"].ToString(); }
    }
    public string pStrCategory6
    {
        get { return ViewState["strCategory6"].ToString(); }
    }
    public string pStrCategory7
    {
        get { return ViewState["strCategory7"].ToString(); }
    }
    public string pStrCategory8
    {
        get { return ViewState["strCategory8"].ToString(); }
    }
    public string pStrCategory9
    {
        get { return ViewState["strCategory9"].ToString(); }
    }
    public string pStrCategory10
    {
        get { return ViewState["strCategory10"].ToString(); }
    }
    #endregion

    public string getTRAN_Name(int record)
    {
        TR_AnagTableAdapter adapt = new TR_AnagTableAdapter();
        Main.TR_AnagDataTable table = new Main.TR_AnagDataTable();
        table = adapt.GetDataBySession(Int32.Parse(ViewState["next10"].ToString()));
        string strTRAN_Name = "";
        strTRAN_Name = table.Rows[record].ItemArray[0].ToString();
        return strTRAN_Name;
    }

    #region GetSlides WebMethods
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides1(/*string rowID*/)
        {
            TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
            Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
            table = adapt.GetData();
            AjaxControlToolkit.Slide[] photos1 = new AjaxControlToolkit.Slide[10];
            string trackId = "";
            try
            {
                //trackId = table.Rows[int.Parse("rowID")].ItemArray[0].ToString();
                trackId = table.Rows[0].ItemArray[0].ToString();

                string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

                for (int i = 0; i < fileNames.Length; i++)
                {
                    fileNames[i] = Convert.ToInt16(table.Rows[0].ItemArray[18 + i]).ToString();
                    photos1[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
                }
                return photos1;
            }
            catch (Exception)
            {

            }
            if (trackId != "")
                return photos1;
            else
            {
                AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
                whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
                return whiteArr;
            }
        }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides2(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos2 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[1].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[1].ItemArray[18 + i]).ToString();
                photos2[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos2;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos2;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides3(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos3 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[2].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[2].ItemArray[18 + i]).ToString();
                photos3[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos3;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos3;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides4(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos4 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[3].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[3].ItemArray[18 + i]).ToString();
                photos4[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos4;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos4;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides5(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos5 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[4].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[4].ItemArray[18 + i]).ToString();
                photos5[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos5;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos5;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides6(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos6 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[5].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[5].ItemArray[18 + i]).ToString();
                photos6[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos6;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos6;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides7(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos7 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[6].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[6].ItemArray[18 + i]).ToString();
                photos7[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos7;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos7;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides8(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos8 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[7].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[7].ItemArray[18 + i]).ToString();
                photos8[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos8;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos8;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides9(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos9 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[8].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[8].ItemArray[18 + i]).ToString();
                photos9[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos9;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos9;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides10(/*string contextKey*/)
    {
        TR_AnagForDefaultPageTableAdapter adapt = new TR_AnagForDefaultPageTableAdapter();
        Main.TR_AnagForDefaultPageDataTable table = new Main.TR_AnagForDefaultPageDataTable();
        table = adapt.GetData();
        AjaxControlToolkit.Slide[] photos10 = new AjaxControlToolkit.Slide[10];
        string trackId = "";
        try
        {
            trackId = table.Rows[9].ItemArray[0].ToString();

            string[] fileNames = new string[8];//string[] fileNames = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" +/*contextKey*/trackId + "/Thumb/"));

            for (int i = 0; i < fileNames.Length; i++)
            {
                fileNames[i] = Convert.ToInt16(table.Rows[9].ItemArray[18 + i]).ToString();
                photos10[i] = new AjaxControlToolkit.Slide("Images/" + trackId + "/Thumb/" + Convert.ToInt16(fileNames[i]) + ".bmp", "", "");
            }
            return photos10;
        }
        catch (Exception)
        {

        }
        if (trackId != "")
            return photos10;
        else
        {
            AjaxControlToolkit.Slide[] whiteArr = new AjaxControlToolkit.Slide[1];
            whiteArr[0] = new AjaxControlToolkit.Slide("Images/" + "white background.bmp", "", "");
            return whiteArr;
        }
    }
    #endregion

    protected void gvList_SelectedIndexChanged(object sender, EventArgs e)
    {
        
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