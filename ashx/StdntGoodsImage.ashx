<%@ WebHandler Language="C#" Class="ProductCartHandler" %>

using System;
using System.Web;
using System.IO;
public class ProductCartHandler : IHttpHandler {

    
    STTPEntities db = new STTPEntities();
    public void ProcessRequest (HttpContext context) {
        String PictureID = "1";
        if (context.Request.QueryString["PictureID"] != null)
        {
            PictureID = context.Request.QueryString["PictureID"];
        }
       
        StdntGoodsPic pic = db.StdntGoodsPic.Find(Convert.ToInt32(PictureID));
        byte[] img = pic.Picture;
        context.Response.ContentType = "image/jpg";
        context.Response.BinaryWrite(img);
    }
 
    
    public bool IsReusable {
        get {
            return false;
        }
    }


}