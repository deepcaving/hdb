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
using Image = System.Drawing.Image;

namespace HDBiking.UserControls.NewPageTemplate
{
    public partial class SectionPictures : System.Web.UI.UserControl
    {
        private int file_count = 0;
        private string dirThumb = "";
        private string dirMedium = "";
        private string dirLarge = "";

        private string trackId;

        public event EventHandler CompletedStatus;
        private bool status;

        public Boolean IsLogin
        {
            get { return status; }
        }

        public void EnableModelDialog(bool visibility)
        {
            if (visibility)
            {
                mpePictures.Show();
            }
            else
            {
                mpePictures.Hide();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorUrl.Visible = false;
            lblOnlyLandscaptImgsPlease.Visible = false;
            ScriptManager1.RegisterPostBackControl(btnUpload);
            trackId = Session["NewTrackId"].ToString();
        }

        protected void FileUpload1_OnLoad(object sender, EventArgs e)
        {
            lblErrorUrl.Visible = false;
            lblOnlyLandscaptImgsPlease.Visible = false;
        }
        protected Array CreatePicsArray()
        {
            int[] picsArr = new int[11];
            return picsArr;
        }

        public Array pCreatePicsArray
        {
            get { return CreatePicsArray(); }
        }

        private Boolean GenerateThumbnails(double scaleFactor, Stream sourcePath, string targetPath, string imgDimension)
        {
            ImageCodecInfo myImageCodecInfo;
            Encoder myEncoder;
            EncoderParameter myEncoderParameter;
            EncoderParameters myEncoderParameters;

            // Get an ImageCodecInfo object that represents the JPEG codec.
            

            Image image;
            using ( image = Image.FromStream(sourcePath))
            {
                var newWidth = (int)(image.Width * scaleFactor);
                var newHeight = (int)(image.Height * scaleFactor);
                var thumbnailImg = new Bitmap(newWidth, newHeight);
                var thumbGraph = Graphics.FromImage(thumbnailImg);
                if (newWidth > newHeight)
                {
                    /*thumbGraph.CompositingQuality = CompositingQuality.HighQuality;
                    thumbGraph.SmoothingMode = SmoothingMode.HighQuality;
                    thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    var imageRectangle = new Rectangle(0, 0, newWidth, newHeight);
                    thumbGraph.DrawImage(image, imageRectangle);*/

                    int thumbImgHeight = CalculateNewImageHeight(image.Width, image.Height, 200);
                    if (imgDimension == "Thumb")
                    {                    
                        //if (image.RawFormat.Equals(ImageFormat.Bmp)){}
                        SaveBitmap(targetPath, image, 20);
                        //image = image.GetThumbnailImage(200, thumbImgHeight, ThumbnailCallback, IntPtr.Zero);
                    }
                    if (imgDimension == "Medium")
                    { 
                        SaveJpeg(targetPath, image, 30);
                        //image = image.GetThumbnailImage(564, 317, ThumbnailCallback, IntPtr.Zero);
                    }
                    if (imgDimension == "Large")
                    {
                        SaveJpeg(targetPath, image, 40);
                        //image = image.GetThumbnailImage(1520, 855, ThumbnailCallback, IntPtr.Zero);
                    }
                    


                return true;
                }

                lblOnlyLandscaptImgsPlease.Visible = true;
                mpePictures.Show();
                return false;
            }
        }

        protected int CalculateNewImageHeight(int actualWidth, int actualHeight, int newWidth)
        {
            int newHeight = newWidth * actualHeight / actualWidth;
            return newHeight;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            lblErrorUrl.Visible = false;
            lblOnlyLandscaptImgsPlease.Visible = false;

            if (FileUpload1.PostedFile.FileName != "")
            {
                if (CompletedStatus != null)
                {
                    string strImg = Session["IdImageToEdit"].ToString();
                    char charImgNum = strImg[strImg.Length - 1];
                    Session["IdImageToEdit"] = charImgNum;
                    //EnableModelDialog(true); mpePictures.Show();
                    string thisDir = Server.MapPath("~/.");
                    if (Page.IsValid) //save the image
                    {
                        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        string targetPath = Server.MapPath("Images/" + filename);
                        targetPath = targetPath.Replace("\\Account", "\\");
                        bool dirExists = Directory.Exists(thisDir + @"\Images\" + trackId);
                        if (!dirExists)
                        {
                            Directory.CreateDirectory(thisDir + @"\Images\" + trackId);
                            thisDir = thisDir + @"\Images\" + trackId;
                            AdjustDirectoryNameJpg(thisDir);
                            Directory.CreateDirectory(thisDir + @"\Thumb");
                            dirThumb = thisDir + @"\Thumb";
                            AdjustDirectoryNameBmp(dirThumb);
                            Directory.CreateDirectory(thisDir + @"\Medium");
                            dirMedium = thisDir + @"\Medium";
                            AdjustDirectoryNameJpg(dirMedium);
                            Directory.CreateDirectory(thisDir + @"\Large");
                            dirLarge = thisDir + @"\Large";
                            AdjustDirectoryNameJpg(dirLarge);
                        }
                        else
                        {
                            thisDir = thisDir + @"\Images\" + trackId;
                            dirThumb = thisDir + @"\Thumb";
                            dirMedium = thisDir + @"\Medium";
                            dirLarge = thisDir + @"\Large";
                        }
                        Stream strm = FileUpload1.PostedFile.InputStream;

                        var targetFile = AdjustDirectoryNameBmp(dirThumb);// dirThumb; //targetPath
                        //Based on scalefactor image size will vary
                        if (!GenerateThumbnails(0.12, strm, targetFile, "Thumb"))
                        {
                            mpePictures.Show();
                        }
                        else
                        {
                            targetFile = AdjustDirectoryNameJpg(dirMedium);
                            GenerateThumbnails(0.34, strm, targetFile, "Medium");
                            targetFile = AdjustDirectoryNameJpg(dirLarge);
                            GenerateThumbnails(0.70, strm, targetFile, "Large");
                            UpdateDB(filename);
                            status = true;
                            CompletedStatus(this, EventArgs.Empty); //event gets fired here.
                            mpePictures.Hide();
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Saves an image as a jpeg image, with the given quality
        /// </summary>
        /// <param name="path">Path to which the image would be saved.</param>
        // <param name="quality">An integer from 0 to 100, with 100 being the
        /// highest quality</param>
        public static void SaveJpeg(string path, Image img, int quality)
        {
            if (quality < 0 || quality > 100)
                throw new ArgumentOutOfRangeException("quality must be between 0 and 100.");

            // Encoder parameter for image quality
            EncoderParameter qualityParam =
                new EncoderParameter(Encoder.Quality, quality);
            // Jpeg image codec
            ImageCodecInfo jpegCodec = GetEncoderInfo("image/jpeg");

            EncoderParameters encoderParams = new EncoderParameters(1);
            encoderParams.Param[0] = qualityParam;

            img.Save(path, jpegCodec, encoderParams);
        }

        public static void SaveBitmap(string path, Image img, int quality)
        {
            if (quality < 0 || quality > 100)
                throw new ArgumentOutOfRangeException("quality must be between 0 and 100.");

            // Encoder parameter for image quality
            EncoderParameter qualityParam =
                new EncoderParameter(Encoder.Quality, quality);
            // Jpeg image codec
            ImageCodecInfo jpegCodec = GetEncoderInfo("image/jpeg");

            EncoderParameters encoderParams = new EncoderParameters(1);
            encoderParams.Param[0] = qualityParam;

            img.Save(path, jpegCodec, encoderParams);
        }


        /// <summary>
        /// Returns the image codec with the given mime type
        /// </summary>
        private static ImageCodecInfo GetEncoderInfo(string mimeType)
        {
            // Get image codecs for all image formats
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();

            // Find the correct image codec
            for (int i = 0; i < codecs.Length; i++)
                if (codecs[i].MimeType == mimeType)
                    return codecs[i];
            return null;
        }

        protected void UpdateDB(string fileNum)
        {
            fileNum = Session["IdImageToEdit"].ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["deepcavi_hdb1"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            SqlParameter obParamTrackId = new SqlParameter("@TRAN_ID", SqlDbType.UniqueIdentifier);
            obParamTrackId.Value = new Guid(Session["NewTrackId"].ToString());
            cmd.Parameters.Add(obParamTrackId);
            cmd.CommandText = "UPDATE deepcavi_fra.TR_Anag SET TRAN_Pic" + fileNum + " = 1 WHERE TRAN_ID = @TRAN_ID";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected string GetIdImageToEdit()
        {
            string session = Session["IdImageToEdit"].ToString();
            session = session.Substring(session.Length - 1, 1);
            return session;
        }

        protected string AdjustDirectoryNameJpg(string dir)
        {
            string imgName = GetIdImageToEdit();
            dir = dir.Replace("\\\\", "\\");
            dir = dir.Replace("\\Account", "\\");
            return dir + "\\" + imgName + ".JPG";
        }
        protected string AdjustDirectoryNameBmp(string dir)
        {
            string imgName = GetIdImageToEdit();
            dir = dir.Replace("\\\\", "\\");
            dir = dir.Replace("\\Account", "\\");
            return dir + "\\" + imgName + ".BMP";
        }


        ///
        /// Get the file count of a given directory recursively.
        ///
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

        /// <summary>
        /// Required, but not used
        /// </summary>
        /// <returns>true</returns>
        public bool ThumbnailCallback()
        {
            return true;
        }
    }
}