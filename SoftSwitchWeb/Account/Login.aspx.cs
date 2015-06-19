using SoftSwitch.Web.Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //RegisterHyperLink.NavigateUrl = "Register";
        // Enable this once you have account confirmation enabled for password reset functionality
        //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
        //  OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
        var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        if (!String.IsNullOrEmpty(returnUrl))
        {
            // RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        }
    }

    // Login
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        DataFunctions dbContext = new DataFunctions();
        DataTable dt=  dbContext.GetDataTable("select * from aspnetusers where UserName='" + UserName.Text + "' and PasswordHash='" + Password.Text + "'");
        if (dt.Rows.Count > 0)
        {
            Session["LoginUser"] = dt.Rows[0]["UserName"].ToString() + ":" + dt.Rows[0]["PasswordHash"].ToString();
            Response.Redirect("../Admin/Content.aspx");
        }
        else
        {
            Session["LoginUser"] = "";
        }
    }
}