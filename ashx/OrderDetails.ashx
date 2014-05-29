<%@ WebHandler Language="C#" Class="OrderDetails" %>

using System;
using System.Web;
using Newtonsoft.Json;
using System.Linq;
public class OrderDetails : IHttpHandler {


    
    
    public void ProcessRequest (HttpContext context) {
        STTPEntities db = new STTPEntities();

        String OrderID = "201405280001";
        if (context.Request.QueryString["OrderID"] != null)
        {
            OrderID = context.Request.QueryString["OrderID"];
        }

        //var Order = db.ProductOrders.Where(p => p.OrderID == OrderID);

        //var Order = db.ProductOrderDetails.Where(O => O.OrderID == OrderID);

        //var Order = from o in db.GoodsOrderDetails
        //            join g in db.StdntGoods on o.GoodsID equals g.GoodsID
        //            select new { o.GoodsID, g.GoodsName, o.Quantity, o.UnitPrice, o.SellerID };

        var Order = from o in db.GoodsOrderDetails
                    join g in db.StdntGoods on o.GoodsID equals g.GoodsID
                    join po in db.ProductOrder on o.OrderID equals po.OrderID
                    select new { o.GoodsID, g.GoodsName, o.Quantity, o.UnitPrice, o.SellerID, po.TransDateTime };

        context.Response.ContentType = "applicataion/json";
        context.Response.Write(JsonConvert.SerializeObject(Order)); //一筆Product物件
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}