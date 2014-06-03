using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = PreviousPage.searchAllResult;
        //if (Page.PreviousPage != null)
        //{
        //    if (PreviousPage.IsCrossPagePostBack)
        //    {
        //        TextBox SourceTextBox = (TextBox)Page.PreviousPage.FindControl("srchAllFld");
        //        if (SourceTextBox != null)
        //        {
        //            Label1.Text = SourceTextBox.Text;
        //        }

        //    }
        //}
        string title = Request.QueryString["title"].ToString();

        using (STTPEntities db = new STTPEntities())
        {
            if (title != "")
            {
                var query = from s in db.StdntGoods
                            from p in db.StdntGoodsPic
                            where s.GoodsName.ToLower().Contains(title)
                            select new { s.GoodsName, s.SellerID, s.Price, s.Quantity, p.PictureID, p.Picture };
                //var q = from s in db.StdntGoodsPic
                //        where
                //            (from s1 in db.StdntGoodsPic
                //             group s1 by new
                //             {
                //                 s1.GoodsID
                //             } into g
                //             select new
                //             {
                //                 Column1 = (int?)g.Min(p => p.PictureID)
                //             }).Contains(new { Column1 = (Int32?)s.PictureID })
                //        select new
                //        {
                //            s.StdntGoods.GoodsName,
                //            Price = (decimal?)s.StdntGoods.Price,
                //            s.StdntGoods.Quantity,
                //            s.Picture
                //        };
                this.GridView1.DataSource = query.ToList();
                this.GridView1.DataBind();



            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "alert('請至少輸入一關鍵字！')", true);
            }
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
    
}