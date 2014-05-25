using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string title = Request.QueryString["title"].ToString();

        using(STTPEntities db = new STTPEntities())
        {

            if (!string.IsNullOrWhiteSpace(title))
            {
                var query = from s in db.StdntGoodsView
                            where s.GoodsName.ToLower().Contains(title)
                            select new { s.GoodsName, s.Price, s.Quantity, s.SellerID, s.StartTime, s.SchoolName, s.Region, s.PictureID, s.Picture };
                if (query.Count() >= 1)
                {
                    this.GridView1.DataSource = query.ToList();
                    this.GridView1.DataBind();
                }
                else  //找不到關鍵字顯示警告訊息圖片
                {
                    string js = "$('#div_warning').append(\"<img src='images/warning1.jpg' style='display:block;margin:auto'>\")";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", js, true);
                }
            }
            else  //沒有輸入或輸入空白顯示警告訊息圖片
            {
                string js = "$('#div_warning').append(\"<img src='images/warning2.jpg' style='display:block;margin:auto'>\")";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", js, true);
            }
        }        
    }

    //protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)  //從SQL讀回網頁能正常顯示換行格式
    //{
    //    //在原始檔的asp:GridView控制項加：OnRowDataBound="GridView2_RowDataBound"
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        e.Row.Cells[3].Text = e.Row.Cells[3].Text.Replace("\n", "<br />");
    //    }

    //}

    //public override void VerifyRenderingInServerForm(Control control)
    //{
    //}

}