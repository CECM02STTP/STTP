using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //List<Cart> shoppingCart = new List<Cart>();
        String productname = Request.Form["productname"];
        int pCount = Convert.ToInt32(Request.Form["pCount"]);

        //for (int i = 0; i < pCount; i++)
        //{
        //    Cart cart = new Cart();
        //    cart.productName = productname;
        //    cart.pCount = pCount;
        //    shoppingCart.Add(cart);

        //}

        ////Session["cart"] = productname;
        //Response.ContentType = "applicataion/json";
        //Response.Write(JsonConvert.SerializeObject(shoppingCart));

        Session["productname"] = productname;
        Session["pCount"] = pCount;

        //Response.ContentType = "text/plain";
        //Response.Write("おはよう、" + productname + "さん。貴方の年齢は " + pCount + " 歳ですよ！");



    }

    //public class Cart
    //{
    //    public string productName;
    //    public int pCount;


    //}
}