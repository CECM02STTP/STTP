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
        string MemberID = "";
        MemberID = context.Request.QueryString["MemberID"];
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


        int GoodsCount = int.Parse(context.Request.QueryString["GoodsCount"]);
        for (int i = 0; i < GoodsCount; i++)
        {
            GoodsOrderDetails Goods = new GoodsOrderDetails();
            string GoodsID = context.Request.Params["Goods[" + i + "][GoodsID]"];
            string Quantity = context.Request.Params["Goods[" + i + "][Quantity]"];
            Goods.OrderID = NewOrderID;
            Goods.GoodsID = int.Parse(GoodsID);
            Goods.Quantity = Convert.ToInt16(Quantity);  //資料庫是Smallint


            var x = db.StdntGoods.Find(Goods.GoodsID);
            Goods.UnitPrice = x.Price;  //向資料庫取得商品價格

            Goods.BuyerID = MemberID;  
            Goods.SellerID = x.SellerID;   //向資料庫取得賣家ID
            
            db.Entry(Goods).State = EntityState.Added; //方法二
            db.SaveChanges();
        }


        //==============================GoodsOrderDetails訂單明細=============================================

        context.Response.ContentType = "text/plain";
        context.Response.Write(NewOrderID);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}

