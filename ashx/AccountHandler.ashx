<%@ WebHandler Language="C#" Class="AccountHandler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;

public class AccountHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        String strConn = ConfigurationManager.ConnectionStrings["STTPConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(strConn))
        {
            String strCmd = "select * from MemberAccounts";

            using (SqlDataAdapter da = new SqlDataAdapter(strCmd, conn))
            {
                DataSet ds = new DataSet();
                ds.DataSetName = "MemberAccounts";
                da.Fill(ds, "Accounts");
                //var a = new
                //{
                //    aaData = ds.Tables["product"]
                //};
                context.Response.ContentType = "application/json";
                context.Response.Write(JsonConvert.SerializeObject(ds.Tables["Accounts"]));

            }

        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}