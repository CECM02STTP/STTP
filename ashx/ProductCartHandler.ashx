<%@ WebHandler Language="C#" Class="ProductCartHandler" %>

using System;
using System.Web;
using System.IO;
using Newtonsoft.Json;
using System.Drawing;
public class ProductCartHandler : IHttpHandler
{

    storeEntities db = new storeEntities();
    public void ProcessRequest(HttpContext context)
    {
        var id = Convert.ToInt32(context.Request.QueryString["id"]);  
        Product product = db.Products.Find(id);
        context.Response.ContentType = "applicataion/json";
        context.Response.Write(JsonConvert.SerializeObject(product)); //一筆Product物件
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }



}