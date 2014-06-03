<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public class ImageHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        String PictureID = "1";
        if (context.Request.QueryString["PictureID"] != null)
        {
            PictureID = context.Request.QueryString["PictureID"];
        }
        String strConn = ConfigurationManager.ConnectionStrings["STTPConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(strConn)) {
            String strCmd = "select Picture, MIMEType from StdntGoodsPic where PictureID=@PictureID";
            //String strCmd = "select Picture, MIMEType from ShopGoodsPic where PictureID=@PictureID"            
            using (SqlCommand cmd = new SqlCommand(strCmd, conn)) {
                cmd.Parameters.AddWithValue("@PictureID", PictureID);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                if (dr.Read())
                {
                    if (!DBNull.Value.Equals(dr["Picture"]))  // 避免圖片是null
                    {
                        context.Response.ContentType = dr["MIMEType"].ToString();
                        context.Response.BinaryWrite((Byte[])dr[0]);
                        //dr[0]指strCmd中select的第一個欄位Picture
                        //如果今天是select MIMEType, Picture from ~ 就必須對第二個欄位dr[1]處理，否則會出現轉型失敗的錯誤訊息
                        //也可直接寫欄位名稱(Byte[])dr["Picture"]
                    }
                }
                conn.Close();
                
            }
        }
        
      
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}