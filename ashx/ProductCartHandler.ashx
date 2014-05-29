<%@ WebHandler Language="C#" Class="ProductCartHandler" %>

using System;
using System.Web;
using System.IO;
using Newtonsoft.Json;
using System.Linq;
public class ProductCartHandler : IHttpHandler
{

    STTPEntities db = new STTPEntities();
    public void ProcessRequest(HttpContext context)
    {
        String GoodsID = "1";
        if (context.Request.QueryString["GoodsID"] != null)
        {
            GoodsID = context.Request.QueryString["GoodsID"];
        }
        StdntGoods product = db.StdntGoods.Find(Convert.ToInt32(GoodsID));
     
            
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