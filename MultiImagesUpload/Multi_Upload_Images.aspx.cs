using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Multi_Upload_Images : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    String MIMEType = "";  //儲存圖檔的MIME Type
    protected void UploadImageButton_Click(object sender, EventArgs e)
    {
        UploadStatusLabel.Text = "";
        FileSizeStatusLabel.Text = "";
        int HasNoFile = 0;  //記錄是否有檔案上傳，若三個FileUpload控制項皆無檔案則顯示警告訊息
        for (int i = 1; i <= Request.Files.Count; i++)
        {
            FileUpload myFL = (FileUpload)Page.FindControl("FileUpload" + i);
            if (myFL.HasFile)
            {
                String fileName = myFL.FileName;
                if (CheckFileName_Extension(fileName))    //自訂的方法，檢查上傳的副檔名是否符合我們的要求（只能上傳圖檔）
                {
                    int fileSize = myFL.PostedFile.ContentLength;
                    string filename = myFL.PostedFile.FileName;
                    if (fileSize < 1048576) //1048576Bytes=1024KB=1MB
                    {
                        String strConn = ConfigurationManager.ConnectionStrings["STTPConnectionString"].ConnectionString;
                        using (SqlConnection conn = new SqlConnection(strConn))
                        {
                            String strCmd = "INSERT INTO StdntGoodsPic (GoodsID,Picture,MIMEType) VALUES (1,@Picture,@MIMEType)";
                            //String strCmd = "INSERT INTO ShopGoodsPic (GoodsID,Picture,MIMEType) VALUES (4,@Picture,@MIMEType)";                        
                            using (SqlCommand cmd = new SqlCommand(strCmd, conn))
                            {
                                byte[] imagebytes = new byte[myFL.PostedFile.InputStream.Length];
                                myFL.PostedFile.InputStream.Read(imagebytes, 0, imagebytes.Length);
                                cmd.Parameters.AddWithValue("@Picture", imagebytes);
                                cmd.Parameters.AddWithValue("@MIMEType", MIMEType);
                                conn.Open();                            
                                cmd.ExecuteNonQuery();
                                conn.Close();
                                UploadStatusLabel.Text = "上傳圖檔成功！";
                            }
                        }
                    }
                    else FileSizeStatusLabel.Text = "上傳"+filename+"的檔案大小不能超過1MB！";
                }
                else UploadStatusLabel.Text = "上傳的檔案，副檔名只能是jpg, jpeg, png, gif四種格式的圖檔！";
            }
            else HasNoFile++;
        }
        if (HasNoFile == Request.Files.Count)
        {
            UploadStatusLabel.Text = "請選擇圖檔，再按上傳！";
        }
    }      
    
    //自訂CheckFileName_Extension方法，檢查上傳的副檔名是否符合我們的要求（只能上傳圖檔）
    protected Boolean CheckFileName_Extension(String fileName)
    {
        String fileExtension = System.IO.Path.GetExtension(fileName).ToLower();  //使用到 System.IO命名空間，可以檢查「副檔名」

        Boolean result = false;
        //用「字串陣列」來存放允許上傳的副檔名
        string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

        for (int i = 0; i < allowedExtensions.Length; i++)
        {
            if (fileExtension == allowedExtensions[i])
            {                
                result = true;   //上傳的副檔名，符合我們的要求
                MIMEType = "image/" + allowedExtensions[i].Substring(1); //Substring(1)表示從第二個字算起等於把.去掉
            }
        }
        return result;
    }    
}