using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.IO;
using System.Drawing;
using HDBiking;
using HDBiking.MainTableAdapters;

public partial class Account_UserSettings : System.Web.UI.Page
{
    private int file_count = 0;
    private string dirThumb = "";
    private string dirMedium = "";
    private string dirLarge = "";

    public bool ThumbnailCallback()
    {
        return true;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        btnEditPublicProfilePage.Font.Size = FontUnit.Larger;
        btnEditMyTracks.Font.Size = FontUnit.Larger;
        //btnEditPublicProfilePage.BackColor = Color.FromArgb(255, 232, 247, 228);
        btnOk.Font.Size = FontUnit.Larger;
        
        object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
        Guid gUserId = (Guid)userId;
        string sUserId = gUserId.ToString();
        string thisDir = Server.MapPath("~/.");
        try
        {
            bool dirExists = System.IO.Directory.Exists(thisDir + @"\Images\a_User_Avatars\" + sUserId);
            string thisDirFolder = Server.MapPath(@"~/Images/a_User_Avatars/" + sUserId);
            string path = Server.MapPath(@"~/Images/a_User_Avatars/" + sUserId + @"/sAvatar_" + sUserId + ".bmp");
            DirectoryInfo di = new DirectoryInfo(thisDirFolder);
            if (!dirExists)
            {
                Image1.ImageUrl = @"~/Images for html/Icons/emptyAvatarBig.jpg";
            }
            else if (di.GetFiles().Length > 1)
            {
                //Image1.ImageUrl = thisDir + @"\Images\a_User_Avatars\" + sUserId + @"\mAvatar_" + sUserId + ".jpg";
                Image1.ImageUrl = @"~/Images/a_User_Avatars/" + sUserId + @"/sAvatar_" + sUserId + ".bmp";
            }
            else
            {
                Image1.ImageUrl = @"~/Images for html/Icons/emptyAvatarBig.jpg";
            }
        }
        catch (Exception)
        {
            
        }
        if (!IsPostBack)
        {
            MB_UserDetailsTableAdapter adapt = new MB_UserDetailsTableAdapter();
            Main.MB_UserDetailsDataTable table = new Main.MB_UserDetailsDataTable();
            object oUserId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            table = adapt.GetDataByAppAndUser(ApplicationId(), (Guid)oUserId);
            txtFirstName.Text = table[0]["MBUD_FirstName"].ToString();
            txtLastName.Text = table[0]["MBUD_LastName"].ToString();
            txtFullName.Text = table[0]["MBUD_FullName"].ToString();
            txtDisplayName.Text = table[0]["MBUD_DisplayName"].ToString();
            txtPublicEmail.Text = table[0]["MBUD_PublicEmail"].ToString();
            txtAIM.Text = table[0]["MBUD_AIM"].ToString();
            txtGTalk.Text = table[0]["MBUD_GTalk"].ToString();
            txtICQ.Text = table[0]["MBUD_ICQ"].ToString();
            txtLiveMessenger.Text = table[0]["MBUD_LiveMessenger"].ToString();
            txtSkype.Text = table[0]["MBUD_Skype"].ToString();
            txtJabber.Text = table[0]["MBUD_Jabber"].ToString();
            txtYahoo.Text = table[0]["MBUD_Yahoo"].ToString();
            txtMobilePhone1.Text = table[0]["MBUD_MobilePhone1"].ToString();
            txtMobileProvider1.Text = table[0]["MBUD_MobilePhone1Provider"].ToString();
            txtMobilePhone2.Text = table[0]["MBUD_MobilePhone2"].ToString();
            txtMobileProvider2.Text = table[0]["MBUD_MobilePhone2Provider"].ToString();
            txtMobilePhone3.Text = table[0]["MBUD_MobilePhone3"].ToString();
            txtMobileProvider3.Text = table[0]["MBUD_MobilePhone3Provider"].ToString();
            txtWorkPhone.Text = table[0]["MBUD_WorkPhone"].ToString();
        }

    }
    
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) //save the image
        {
            FileUpload FileUpload1 = (FileUpload)pnlChangeImage.FindControl("FileUpload1");
            ImageButton imgUpload = (ImageButton)pnlIcons.FindControl("imgUpload");
            ImageButton imgDelete = (ImageButton)pnlIcons.FindControl("imgDelete");
            string imgContentType = FileUpload1.PostedFile.ContentType;
            HttpPostedFile h = FileUpload1.PostedFile;
            string s = h.InputStream.ToString();
            object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            Guid gUserId = (Guid)userId;
            string sUserId = gUserId.ToString().ToUpper();
            Stream imgStream = FileUpload1.PostedFile.InputStream;
            Int64 imgLen = FileUpload1.PostedFile.ContentLength;

            byte[] imgBinaryData = new byte[imgLen];            
            HttpPostedFile uploadedImage = FileUpload1.PostedFile;
            uploadedImage.InputStream.Read(imgBinaryData, 0, (int)imgLen);
                        
            string thisDir = Server.MapPath("~/.");
            try
            {
                bool dirExists = System.IO.Directory.Exists(thisDir + @"\Images\a_User_Avatars\" + sUserId);
                if (!dirExists)
                {
                    System.IO.Directory.CreateDirectory(thisDir + @"\Images\a_User_Avatars\" + sUserId);
                    thisDir = thisDir + @"\Images\a_User_Avatars\" + sUserId;
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

            try
            {
                //vedi questo link: http://www.dotnetperls.com/getthumbnailimage
                //e questo http://www.francescav.com/2009/11/risotto-zucca/
                MemoryStream ms = new MemoryStream(imgBinaryData);
                //Bitmap b = (Bitmap)Bitmap.FromStream(ms);
                //Bitmap output = new Bitmap(b, new Size(320, 240));
                //System.Drawing.Image img = new Bitmap(System.Drawing.Image.FromStream(ms));
                System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
                int imgWidth = img.Width;
                int imgHeight = img.Height;
                const int imgMediumWidth = 400;
                const int imgLargeWidth = 720;
                int imgLargeHeight = imgHeight * imgLargeWidth / imgWidth;
                int imgMediumHeight = imgHeight * 564 / imgWidth;
                System.Drawing.Image largeImage = img.GetThumbnailImage(imgLargeWidth, imgLargeHeight, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);                
                System.Drawing.Image thumbnailImage = img.GetThumbnailImage(/*164, 92*/128, 128, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
                System.Drawing.Image mediumlImage = img.GetThumbnailImage(imgMediumWidth, imgMediumHeight, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
                //System.Drawing.Image largeImage = img.GetThumbnailImage(-1, -1, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

                // make a memory stream to work with the image bytes
                MemoryStream imageStream = new MemoryStream();
                MemoryStream mediumStream = new MemoryStream();
                MemoryStream largeStream = new MemoryStream();
                //piu' avanti provare anche questo: http://msdn.microsoft.com/it-it/library/93c57cby.aspx
                //    public void DrawImage2Float(PaintEventArgs e)
                //{

                //    // Create image.
                //    Image newImage = Image.FromFile("SampImag.jpg");

                //    // Create coordinates for upper-left corner of image.
                //    float x = 100.0F;
                //    float y = 100.0F;

                //    // Draw image to screen.
                //    e.Graphics.DrawImage(newImage, x, y);
                //}

                // put the image into the memory stream
                thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);
                dirThumb = @"~\Images\a_User_Avatars\" + sUserId + @"\";
                dirMedium = @"~\Images\a_User_Avatars\" + sUserId + @"\";
                dirLarge = @"~\Images\a_User_Avatars\" + sUserId + @"\";
                GetDirectoryFileCount(dirThumb);

                thumbnailImage.Save(Server.MapPath(@"~\Images\a_User_Avatars\" + sUserId + @"\" + "sAvatar_" + sUserId + ".bmp"), System.Drawing.Imaging.ImageFormat.Bmp);
                GetDirectoryFileCount(dirMedium);
                mediumlImage.Save(Server.MapPath(@"~\Images\a_User_Avatars\" + sUserId + @"\" + "mAvatar_" + sUserId + ".jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
                GetDirectoryFileCount(dirLarge);
                largeImage.Save(Server.MapPath(@"~\Images\a_User_Avatars\" + sUserId + @"\" + "lAvatar_" + sUserId + ".jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
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
//                pnlChangeImage_CollapsiblePanelExtender.CollapsedSize = 0;
            }
            catch (Exception)
            {

            }



            //Response.Redirect("~/Admin/ImgUpload.aspx");

            //output.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
            //ms.WriteTo(Response.OutputStream);

            //ms.Read(imgBinaryDataThumb, 0, (int)imgLenThumb);
            //vedi anche GetThumbnailImage


            //int RowsAffected = 1;//SaveToDB(guidTrackId, imgBinaryData, strImageName,  imgContentType,  imgLen);
            //if (RowsAffected > 0)
            //{
            //    Response.Write("<BR>The Image was saved");
            //}
            //else
            //{
            //    Response.Write("<BR>An error occurred uploading the image");
            //}
//            SqlConnection con = new SqlConnection();
//            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
//            SqlCommand cmd = new SqlCommand(@"SELECT IMG_ID 
//				                                                        FROM deepcavi_fra.IMAGES as I
//				                                                        WHERE IMG_GetDate = (SELECT MAX(IMG_GetDate)
//										                                                                        FROM deepcavi_fra.IMAGES)");
//            cmd.Connection = con;
//            cmd.Connection.Open();
//            SqlDataReader dr = cmd.ExecuteReader();
//            Guid imgIdThumb = new Guid();
//            while (dr.Read())
//            {
//                imgIdThumb = (Guid)dr[0];
//            }
//            int RowsAffectedThumb = 1;//SaveToDBThumb(imgIdThumb, imgBinaryDataThumb, imgBinaryDataMedium);
//            if (RowsAffectedThumb > 0)
//            {
//                Response.Write("<BR>The Thumb and Medium Image were saved");    
//            }
//            else
//            {
//                Response.Write("<BR>An error occurred uploading the images");
//            }
            //RegenerateTR_ListPic();
        }
    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strCon))
        {
            string strFirstName = txtFirstName.Text;
            string strLastName = txtLastName.Text;
            string strFullName = txtFullName.Text;
            string strDisplayName = txtDisplayName.Text;
            string strPublicEmail = txtPublicEmail.Text;
            string strAIM = txtAIM.Text;
            string strGTalk = txtGTalk.Text;
            string strICQ = txtICQ.Text;
            string strLiveMessenger = txtLiveMessenger.Text;
            string strSkype = txtSkype.Text;
            string strJabber = txtJabber.Text;
            string strYahoo = txtYahoo.Text;
            string strMF1 = txtMobilePhone1.Text;
            string strMFP1 = txtMobileProvider1.Text;
            string strMF2 = txtMobilePhone2.Text;
            string strMFP2 = txtMobileProvider2.Text;
            string strMF3 = txtMobilePhone3.Text;
            string strMFP3 = txtMobileProvider3.Text;
            string strWorkPhone = txtWorkPhone.Text;
            
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strFirstName);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strLastName);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strFullName);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strDisplayName);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strPublicEmail);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strAIM);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strGTalk);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strICQ);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strLiveMessenger);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strSkype);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strJabber);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strYahoo);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strMF1);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strMFP1);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strMF2);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strMFP2);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strMF3);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strMFP3);
            Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(strWorkPhone);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            
            object userID = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
            Guid gUserId = (Guid)userID;
            Guid applicationID = ApplicationId();


            SqlParameter obParamUserID = new SqlParameter("@UserId", SqlDbType.UniqueIdentifier);
            obParamUserID.Value = gUserId;
            cmd.Parameters.Add(obParamUserID);

            SqlParameter obParamApplicationId = new SqlParameter("@ApplicationId", SqlDbType.UniqueIdentifier);
            obParamApplicationId.Value = applicationID;
            cmd.Parameters.Add(obParamApplicationId);

            SqlParameter obParamFirstName = new SqlParameter("@FirstName", SqlDbType.NVarChar);
            obParamFirstName.Value = strFirstName;
            cmd.Parameters.Add(obParamFirstName);
            SqlParameter obParamLastName = new SqlParameter("@LastName", SqlDbType.NVarChar);
            obParamLastName.Value = strLastName;
            cmd.Parameters.Add(obParamLastName);
            SqlParameter obParamFullName = new SqlParameter("@FullName", SqlDbType.NVarChar);
            obParamFullName.Value = strFullName;
            cmd.Parameters.Add(obParamFullName);
            SqlParameter obParamDisplayName = new SqlParameter("@DisplayName", SqlDbType.NVarChar);
            obParamDisplayName.Value = strDisplayName;
            cmd.Parameters.Add(obParamDisplayName);
            SqlParameter obParamPublicEmail = new SqlParameter("@PublicEmail", SqlDbType.NVarChar);
            obParamPublicEmail.Value = strPublicEmail;
            cmd.Parameters.Add(obParamPublicEmail);
            SqlParameter obParamAIM = new SqlParameter("@AIM", SqlDbType.NVarChar);
            obParamAIM.Value = strAIM;
            cmd.Parameters.Add(obParamAIM);
            SqlParameter obParamGTalk = new SqlParameter("@GTalk", SqlDbType.NVarChar);
            obParamGTalk.Value = strGTalk;
            cmd.Parameters.Add(obParamGTalk);
            SqlParameter obParamICQ = new SqlParameter("@ICQ", SqlDbType.NVarChar);
            obParamICQ.Value = strICQ;
            cmd.Parameters.Add(obParamICQ);
            SqlParameter obParamLiveMessenger = new SqlParameter("@LiveMessenger", SqlDbType.NVarChar);
            obParamLiveMessenger.Value = strLiveMessenger;
            cmd.Parameters.Add(obParamLiveMessenger);
            SqlParameter obParamSkype = new SqlParameter("@Skype", SqlDbType.NVarChar);
            obParamSkype.Value = strSkype;
            cmd.Parameters.Add(obParamSkype);
            SqlParameter obParamJabber = new SqlParameter("@Jabber", SqlDbType.NVarChar);
            obParamJabber.Value = strJabber;
            cmd.Parameters.Add(obParamJabber);
            SqlParameter obParamYahoo = new SqlParameter("@Yahoo", SqlDbType.NVarChar);
            obParamYahoo.Value = strYahoo;
            cmd.Parameters.Add(obParamYahoo);
            SqlParameter obParamMF1 = new SqlParameter("@MF1", SqlDbType.NVarChar);
            obParamMF1.Value = strMF1;
            cmd.Parameters.Add(obParamMF1);
            SqlParameter obParamMFP1 = new SqlParameter("@MFP1", SqlDbType.NVarChar);
            obParamMFP1.Value = strMFP1;
            cmd.Parameters.Add(obParamMFP1);
            SqlParameter obParamMF2 = new SqlParameter("@MF2", SqlDbType.NVarChar);
            obParamMF2.Value = strMF2;
            cmd.Parameters.Add(obParamMF2);
            SqlParameter obParamMFP2 = new SqlParameter("@MFP2", SqlDbType.NVarChar);
            obParamMFP2.Value = strMFP2;
            cmd.Parameters.Add(obParamMFP2);
            SqlParameter obParamMF3 = new SqlParameter("@MF3", SqlDbType.NVarChar);
            obParamMF3.Value = strMF3;
            cmd.Parameters.Add(obParamMF3);
            SqlParameter obParamMFP3 = new SqlParameter("@MFP3", SqlDbType.NVarChar);
            obParamMFP3.Value = strMFP3;
            cmd.Parameters.Add(obParamMFP3);
            SqlParameter obParamWorkPhone = new SqlParameter("@WorkPhone", SqlDbType.NVarChar);
            obParamWorkPhone.Value = strWorkPhone;
            cmd.Parameters.Add(obParamWorkPhone);

            cmd.CommandText = @"UPDATE deepcavi_fra.MB_UserDetails 
                                                SET MBUD_FirstName = @FirstName, 
                                                MBUD_LastName = @LastName, MBUD_FullName = @FullName, MBUD_DisplayName = @DisplayName, 
                                                MBUD_PublicEmail = @PublicEmail, MBUD_AIM = @AIM, MBUD_GTalk = @GTalk, MBUD_ICQ = @ICQ, 
                                                MBUD_LiveMessenger = @LiveMessenger, MBUD_Skype = @Skype, MBUD_Jabber = @Jabber, MBUD_Yahoo = @Yahoo, 
                                                MBUD_MobilePhone1 = @MF1, MBUD_MobilePhone1Provider = @MFP1, MBUD_MobilePhone2 = @MF2, 
                                                MBUD_MobilePhone2Provider = @MFP2, MBUD_MobilePhone3 = @MF3, MBUD_MobilePhone3Provider = @MFP3, 
                                                MBUD_WorkPhone = @WorkPhone
                                                WHERE MBUD_ApplicationId = @ApplicationId AND MBUD_Users_UserId = @UserId";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    public void GetDirectoryFileCount(string dir)
    {
        //dir = dir + @"\";
        int dirLen = dir.Length;
        dir = dir.Substring(0, dirLen - 1);
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
    protected void btnChangeImg_Click(object sender, EventArgs e)
    {

    }

    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    protected Guid UserId()
    {        
        object userID = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
        Guid gUserId = (Guid)userID;
        Session["UserId"] = gUserId.ToString();
        return gUserId;
    }

    private void ClearFolder(string FolderName)
    {
        DirectoryInfo dir = new DirectoryInfo(FolderName);

        foreach (FileInfo fi in dir.GetFiles())
        {
            fi.IsReadOnly = false;
            fi.Delete();
        }

        foreach (DirectoryInfo di in dir.GetDirectories())
        {
            ClearFolder(di.FullName);
            di.Delete();
        }
    }

    protected void imgDelete_Click(object sender, ImageClickEventArgs e)
    {
        object userId = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey;
        Guid gUserId = (Guid)userId;
        string sUserId = gUserId.ToString();
        string thisDir = Server.MapPath("~/.");
        try
        {
            bool dirExists = System.IO.Directory.Exists(thisDir + @"\Images\a_User_Avatars\" + sUserId);
            string currDir = thisDir + @"\Images\a_User_Avatars\" +  sUserId;
            DirectoryInfo dir = new DirectoryInfo(currDir);

            ClearFolder(currDir);
            
            //Guid gUserId = (Guid)userId;
            //string sUserId = gUserId.ToString();
            thisDir = Server.MapPath("~/.");
            int nrRandomImages = 0;
            string sRandomPath = Server.MapPath("~/Images/a_User_Avatars/RandomImages/");
            System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(sRandomPath);
            nrRandomImages = di.GetFiles().Length;
            int random = RandomNumber(1, nrRandomImages);
            sUserId = UserId().ToString();
            string pathFrom = thisDir + @"\Images\a_User_Avatars\RandomImages\" + random.ToString() + ".bmp";
            thisDir = thisDir + @"\Images\a_User_Avatars\" + sUserId;
            string pathTo = thisDir + @"\" + "sAvatar_" + sUserId + ".bmp";

            // Ensure that the target does not exist.
            File.Delete(pathTo);

            Stream buffer;
            StreamReader srImage = new StreamReader(pathFrom);
            buffer = srImage.BaseStream;
            Bitmap bmImage = new Bitmap(buffer);
            bmImage.Save(pathTo);
            Image1.ImageUrl = @"~/Images for html/Icons/emptyAvatarBig.jpg";


            //if (dirExists)
            //{
            //    System.IO.Directory.Delete(thisDir + @"\Images\a_User_Avatars\" + sUserId, true);
            //    Image1.ImageUrl = @"~/Images for html/Icons/emptyAvatarBig.jpg";
            //}
        }
        catch (Exception)
        {
            throw;
        }
    }
}