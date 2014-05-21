<%@ WebHandler Language="C#" Class="ShoppingCartHandler" %>

using System;
using System.Web;
using System.Collections.Generic;
using Newtonsoft.Json;

public class ShoppingCartHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {

        //String name = context.Request.Form["name"]; //Post QueryString 要改為Form
        //String age = context.Request.Form["age"];


        List<Cart> shoppingCart = new List<Cart>();
        String name = context.Request.Form["name"];
        int pCount = Convert.ToInt32(context.Request.Form["pCount"]);

        //for (int i = 0; i < pCount; i++)
        //{
        //    Cart cart = new Cart();
        //    cart.productName = name;
        //    cart.pCount = pCount;
        //    shoppingCart.Add(cart);

        //}
        //context.Response.ContentType = "text/plain";
        //context.Response.Write(shoppingCart);

        //context.Session["cart"] = shoppingCart;
        //context.Response.ContentType = "applicataion/json";
        //context.Response.Write(JsonConvert.SerializeObject(shoppingCart));

        
        context.Response.ContentType = "text/plain";

        context.Response.Write("おはよう、" + name + "さん。貴方の年齢は " + pCount + " 歳ですよ！");
    }

    public class Cart
    {
        public string productName;
        public int pCount;


    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}