using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
public partial class bootsshop_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //---------------------------登入的程式碼 Start--------------------------------------------------------------------------------        
        if (Request.Cookies["name"] == null)
        {
            logout.Visible = false;
        }
        else {
            UserName.Text = Request.Cookies["name"].Value + ", 歡迎";
            login.Visible = false;
        }
        //---------------------------登入的程式碼 End---------------------------------------------------------------------------------
    }
//---------------------------登入的程式碼 Start---------------------------------------------------------------------------------
    String strConn = ConfigurationManager.ConnectionStrings["STTPConnectionString"].ConnectionString;
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection Conn = new SqlConnection(strConn))
        {
            String strCmd = "select count(*) from MemberData where MemberID = @MemberID and PassWord = @PassWord";
            using (SqlCommand cmd = new SqlCommand(strCmd, Conn))
            {
                cmd.Parameters.AddWithValue("@MemberID", MemberID.Text);
                cmd.Parameters.AddWithValue("@PassWord", inputPassword.Text);
                Conn.Open();
                if (Convert.ToInt32(cmd.ExecuteScalar()) > 0)
                {
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "", "alert('是會員')", true);
                    Response.Cookies["name"].Value = MemberID.Text;
                    if (RememberChkBox.Checked)
                    {
                        Response.Cookies["name"].Expires = DateTime.Now.AddDays(1);//記住一天
                    }
                    UserName.Text = Response.Cookies["name"].Value +", 歡迎" ;
                    logout.Visible = true;
                    login.Visible = false;
                    
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "alert('不是會員')", true);
                }
                Conn.Close();
                
            }
            
        }
    }

    protected void ButtonLogout_Click(object sender, EventArgs e)
    {
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-1);
        UserName.Text = "";
        logout.Visible = false;
        login.Visible = true;
    }
    //---------------------------登入的程式碼 End---------------------------------------------------------------------------------

    //---------------------------全搜尋程式碼---------------------------
    protected void srchAllBtn_Click(object sender, EventArgs e)  
    {
        string title = this.srchAllFld.Text;
        Server.Transfer("Search.aspx?title=" + title);
    }

}
