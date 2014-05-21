<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;

public class ImageHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        storeEntities db = new storeEntities();
        var id = Convert.ToInt32(context.Request.QueryString["id"]);
        Product product = db.Products.Find(id);
        byte[] img = product.BytesImage;
        context.Response.ContentType = "image/gif";
        context.Response.BinaryWrite(img);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}