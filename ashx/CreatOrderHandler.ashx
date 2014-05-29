<%@ WebHandler Language="C#" Class="CreatOrderHandler" %>

using System;
using System.Web;
using Newtonsoft.Json;
using System.Linq;
using System.Data;
using System.Collections.Generic;
public class CreatOrderHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        STTPEntities db = new STTPEntities();

        //==============================ProductOrder訂單狀況=============================================

        string MemberID = context.Request.QueryString["MemberID"];
        MemberID = "g80002";
        ProductOrder Order = new ProductOrder();

        string LastOID = "00000"; //若資料庫無資料 則訂單編號起始為00000
        try
        {
            var O = (from OID in db.ProductOrder
                     orderby OID.OrderID descending  //降冪排序 取得最後一筆
                     select new { OID.OrderID }).First().OrderID;  //取得資料庫最後一筆訂單的 OrderID

            LastOID = O.Substring(8, 5);  //訂單編號為13碼，前八碼為日期後五碼為序號。取得最後一筆訂單號碼的後五碼 如00002
        }
        catch
        { }

        string NewNumber = (int.Parse(LastOID) + 1).ToString("00000");  //新訂單號碼為 最後一碼 +1
        string Today = DateTime.Now.ToString("yyyyMMdd");  //得到如 20140528 字串
        string NewOrderID = Today + NewNumber;  //新的訂單編號

        Order.OrderID = NewOrderID;
        Order.MemberID = MemberID;
        Order.TransDateTime = DateTime.Now;
        Order.OrderStatus = 1;
        Order.HandleTime = DateTime.Now;
        
        db.ProductOrder.Add(Order); //加入訂單 方法一
        db.SaveChanges();

        //==============================GoodsOrderDetails訂單明細=============================================

        

        for (int i = 0; i < 3; i++)
        {
            GoodsOrderDetails Goods = new GoodsOrderDetails();
            string GoodsID = context.Request.Params["Goods[" + i + "][GoodsID]"];
            string Quantity = context.Request.Params["Goods[" + i + "][Quantity]"];
            Goods.OrderID = NewOrderID;
            Goods.GoodsID = int.Parse(GoodsID);
            Goods.Quantity = Convert.ToInt16(Quantity);  //資料庫是Smallint


            var x = db.StdntGoods.Find(Goods.GoodsID);
            Goods.UnitPrice = x.Price;

            Goods.BuyerID = "g80002";
            Goods.SellerID = "g80001";     
            
            db.Entry(Goods).State = EntityState.Added; //方法二
            db.SaveChanges();
        }


        //==============================GoodsOrderDetails訂單明細=============================================


        //context.Response.ContentType = "applicataion/json";
        //context.Response.Write(JsonConvert.SerializeObject(Goods)); //一筆Product物件
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}

