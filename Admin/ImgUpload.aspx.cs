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
using System.Threading;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class ImgUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private int file_count = 0;
    private string dirThumb = "";
    private string dirMedium = "";
    private string dirLarge = "";

    private int SaveToDB(Guid guidTrackId, byte[] imgBin, string imgName, string imgContentType, Int64 imgLen)
    {
        // Create SQL Connection, use the web.config to store the connection string
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        SqlCommand cmd = new SqlCommand("dbo.UploadImage", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter obParamTranId = new SqlParameter("@img_tran_id", SqlDbType.UniqueIdentifier);
        obParamTranId.Value = guidTrackId;
        cmd.Parameters.Add(obParamTranId);
        SqlParameter obParamImgData = new SqlParameter("@img_data", SqlDbType.VarBinary, -1);//mi ritorna la dimensione del file
        obParamImgData.Value = imgBin;
        cmd.Parameters.Add(obParamImgData);
        SqlParameter obParamImgTitle = new SqlParameter("@img_title", SqlDbType.VarChar, -1);
        obParamImgTitle.Value = txtTitle.Text;
        cmd.Parameters.Add(obParamImgTitle);
        SqlParameter obParamLength = new SqlParameter("@img_length", SqlDbType.BigInt);
        obParamLength.Value = imgLen;
        cmd.Parameters.Add(obParamLength);
        SqlParameter obParamStrType = new SqlParameter("@strType", SqlDbType.VarChar, -1);//mi ritorna image/jpeg
        obParamStrType.Value = imgContentType;
        cmd.Parameters.Add(obParamStrType);
        
//        SqlCommand cmdThumb = new SqlCommand("
        
        con.Open();
        int numRowsAffected = cmd.ExecuteNonQuery();
   
        con.Close();
        if (numRowsAffected > 0)
            lblMessage.Text = "File Uploaded";
        return numRowsAffected;
    }

    private int SaveToDBThumb(Guid imgtId, byte[] imgBinaryDataThumb, byte[] imgBinaryDataMedium)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        SqlCommand cmd = new SqlCommand("dbo.UploadImageSmall", con);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter obParamImageId = new SqlParameter("@image_id", SqlDbType.UniqueIdentifier);
        obParamImageId.Value = imgtId;
        cmd.Parameters.Add(obParamImageId);

        SqlParameter obParamImgDataThumb = new SqlParameter("@img_dataThumb", SqlDbType.VarBinary, -1);//mi ritorna la dimensione del file thumb
        obParamImgDataThumb.Value = imgBinaryDataThumb;
        cmd.Parameters.Add(obParamImgDataThumb);

        SqlParameter obParamImgDataMedium = new SqlParameter("@img_dataMedium", SqlDbType.VarBinary, -1);//mi ritorna la dimensione del file thumb
        obParamImgDataMedium.Value = imgBinaryDataMedium;
        cmd.Parameters.Add(obParamImgDataMedium);

        con.Open();
        int numRowsAffected = cmd.ExecuteNonQuery();

        con.Close();
        if (numRowsAffected > 0)
            lblMessage.Text = "File Uploaded";
        return numRowsAffected;
    }



    protected void btnUpload_Click(object sender, EventArgs e)  
    {
        if (Page.IsValid) //save the image
        {
            //string strImageName = txtTitle.Text.ToString();
            //string imgContentType = FileUpload1.PostedFile.ContentType;
            //Stream imgStream = FileUpload1.PostedFile.InputStream;
            Int64 imgLen = fileupload1.PostedFile.ContentLength;

            byte[] imgBinaryData = new byte[imgLen];
            //Guid guidTrackId = new Guid(ddlTrack.SelectedValue);
            HttpPostedFile uploadedImage = fileupload1.PostedFile;
            uploadedImage.InputStream.Read(imgBinaryData, 0, (int)imgLen);

            string trackName = ddlTrack.SelectedItem.ToString();
            string thisDir = Server.MapPath("~/.");
            try
            {                
                bool dirExists = Directory.Exists(thisDir + @"\Images\" + trackName);
                if (!dirExists)
                {
                    Directory.CreateDirectory(thisDir + @"\Images\" + trackName);
                    thisDir = thisDir + @"\Images\" + trackName;
                    Directory.CreateDirectory(thisDir + @"\Large");
                    dirThumb = thisDir + @"\Large";
                    Directory.CreateDirectory(thisDir + @"\Medium");
                    dirMedium = thisDir + @"\Medium";
                    Directory.CreateDirectory(thisDir + @"\Thumb");
                    dirLarge = thisDir + @"\Thumb";
                }
                //thisDir = thisDir + @"\Images\" + trackName;
                //Server.MapPath(thisDir);
            }
            catch (Exception)
            {                
                throw;
            }
            //con.Open();

            //SqlDataReader dr = cmd.ExecuteReader();
            //byte[] image = null;
            //while (dr.Read())
            //{
            //    image = (byte[])dr.GetValue(0);
            //}
            //dr.Close();
            MemoryStream ms = new MemoryStream(imgBinaryData);
            //Bitmap b = (Bitmap)Bitmap.FromStream(ms);
            //Bitmap output = new Bitmap(b, new Size(320, 240));
            //System.Drawing.Image img = new Bitmap(System.Drawing.Image.FromStream(ms));
            System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
            System.Drawing.Image largeImage = img.GetThumbnailImage(1520, 855, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
            System.Drawing.Image thumbnailImage = img.GetThumbnailImage(/*164, 92*/200,112, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
            System.Drawing.Image mediumlImage = img.GetThumbnailImage(564, 317, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
            //System.Drawing.Image largeImage = img.GetThumbnailImage(-1, -1, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

            // make a memory stream to work with the image bytes
            MemoryStream imageStream = new MemoryStream();
            MemoryStream mediumStream = new MemoryStream();
            MemoryStream largeStream = new MemoryStream();

            // put the image into the memory stream
            thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);
            dirThumb = @"~\Images\" + trackName + @"\Thumb" + @"\";
            dirMedium = @"~\Images\" + trackName + @"\Medium" + @"\";
            dirLarge = @"~\Images\" + trackName + @"\Large" + @"\";
            GetDirectoryFileCount(dirThumb);
            thumbnailImage.Save(Server.MapPath(@"~\Images\" + trackName + @"\Thumb" + @"\"+txtTitle.Text +".bmp"), System.Drawing.Imaging.ImageFormat.Bmp);
            GetDirectoryFileCount(dirMedium);
            mediumlImage.Save(Server.MapPath(@"~\Images\" + trackName + @"\Medium" + @"\" + txtTitle.Text + ".jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
            GetDirectoryFileCount(dirLarge);
            largeImage.Save(Server.MapPath(@"~\Images\" + trackName + @"\Large" + @"\" + txtTitle.Text + ".jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
            //largeImage.Save(Server.MapPath(thisDir + "@/Large"), System.Drawing.Imaging.ImageFormat.Jpeg);
            //il seguente passo e' obbligatorio. Si sovrascrive ogni volta un file temporaneo sample.jpg
            thumbnailImage.Save(Server.MapPath(@"~\Images\sample.jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
            Image1.ImageUrl = @"~\Images\sample.jpg";
            
            Int64 imgLenThumb = ms.Length;
            Int64 imgLenMedium = ms.Length;
            Int64 imgLenLarge = ms.Length;

            byte[] imgBinaryDataThumb = new byte[imgLenThumb];
            byte[] imgBinaryDataMedium = new byte[imgLenMedium];
            byte[] imgBinaryDataLarge = new byte[imgLenLarge];
            // rewind the memory stream
            imageStream.Position = 0;
            mediumStream.Position = 0;
            largeStream.Position = 0;
            // load the byte array with the image
            imageStream.Read(imgBinaryDataThumb, 0, (int)imageStream.Length);
            mediumStream.Read(imgBinaryDataMedium, 0, (int)imageStream.Length);
            largeStream.Read(imgBinaryDataLarge, 0, (int)imageStream.Length);

            //Response.Redirect("~/Admin/ImgUpload.aspx");

            //output.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
            //ms.WriteTo(Response.OutputStream);
            
           //ms.Read(imgBinaryDataThumb, 0, (int)imgLenThumb);
            //vedi anche GetThumbnailImage


            int RowsAffected = 1;//SaveToDB(guidTrackId, imgBinaryData, strImageName,  imgContentType,  imgLen);
            if (RowsAffected > 0)
            {
                Response.Write("<BR>The Image was saved");
                lblStatus.Text = "Image uploaded successfully";
            }
            else
            {
                Response.Write("<BR>An error occurred uploading the image");
            }
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand(@"SELECT IMG_ID 
				                                                        FROM deepcavi_fra.IMAGES as I
				                                                        WHERE IMG_GetDate = (SELECT MAX(IMG_GetDate)
										                                                                        FROM deepcavi_fra.IMAGES)");
            cmd.Connection = con;
            cmd.Connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            Guid imgIdThumb = new Guid();
            while (dr.Read())
            {
                imgIdThumb = (Guid)dr[0];
            }
            int RowsAffectedThumb = 1;//SaveToDBThumb(imgIdThumb, imgBinaryDataThumb, imgBinaryDataMedium);
            if (RowsAffectedThumb > 0)
            {
                Response.Write("<BR>The Thumb and Medium Image were saved");
                lblStatus.Text = "All images have been uploaded successfully";
            }
            else
            {
                Response.Write("<BR>An error occurred uploading the images");
            }
            RegenerateTR_ListPic();
        }
    }

    ///
    /// Get the file count of a given directory recursively.
    ///
    public void GetDirectoryFileCount(string dir)
    {
        //dir = dir + @"\";
        int dirLen = dir.Length;
        dir = dir.Substring(0, dirLen-1);
        //get all the directories and files inside a directory
        String[] all_files = Directory.GetFiles(Server.MapPath(dir));
        //loop through all items
        foreach (string file in all_files)
        {
            //check to see if the file is a directory if not increment the count
            if (Directory.Exists(file))
            {
                //recursive call
                GetDirectoryFileCount(file);
            }
            else
            {
                //increment file count
                file_count++;
            }
        }
    }

    /// <summary>
    /// Required, but not used
    /// </summary>
    /// <returns>true</returns>
    public bool ThumbnailCallback()
    {
        return true;
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static void  RegenerateTR_ListPic()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        SqlCommand cmdRegenerate = new SqlCommand("dbo.RegenerateListPic", con);
        con.Open();
        cmdRegenerate.CommandType = CommandType.StoredProcedure;
        cmdRegenerate.ExecuteNonQuery();
        con.Close();
        string[] tracks = new string[System.IO.Directory.GetDirectories(HttpContext.Current.Server.MapPath("~/Images/")).Length];
        for (int i = 0; i < tracks.Length; i++)
            tracks[i] = "";
        tracks = System.IO.Directory.GetDirectories(HttpContext.Current.Server.MapPath("~/Images/"));
        TR_ListPicTableAdapter adapt = new TR_ListPicTableAdapter();
        Main.TR_ListPicDataTable table = new Main.TR_ListPicDataTable();
        
            for (int i = 0; i < tracks.Length; i++)
            {
                string[] strSplit = tracks[i].Split('\\');
                tracks[i] = strSplit[strSplit.Length-1];                        
            }
            foreach (string t in tracks)
            {
                adapt.InsertQueryByTrackName(t);
                string[] pics = new string[10];
                for (int i = 0; i < pics.Length; i++)
                    pics[i] = "";
                pics = System.IO.Directory.GetFiles(HttpContext.Current.Server.MapPath("~/Images/" + t + "/Thumb/"));
                Array.Resize(ref pics, 10);
                for (int i = 0; i < pics.Length; i++)
                {
                    if (pics[i] == null)
                        pics[i] = "";
                }

                string[] strSplit = new string[10];
                for (int i = 0; i < 10; i++)
                    strSplit[i] = "";
                for (int i = 0; i < pics.Length; i++)
                {
                    strSplit = pics[i].Split('\\');
                    pics[i] = strSplit[strSplit.Length-1];
                }
                for (int i = pics.Length; i < 10; i++)
                    pics[i]="";
                adapt.UpdatePic1(pics[0], t);
                adapt.UpdatePic2(pics[1], t);
                adapt.UpdatePic3(pics[2], t);
                adapt.UpdatePic4(pics[3], t);
                adapt.UpdatePic5(pics[4], t);
                adapt.UpdatePic6(pics[5], t);
                adapt.UpdatePic7(pics[6], t);
                adapt.UpdatePic8(pics[7], t);
                adapt.UpdatePic9(pics[8], t);
                adapt.UpdatePic10(pics[9], t);
            }
    }
}