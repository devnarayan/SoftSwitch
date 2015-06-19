using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminSite : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            string st = Convert.ToString(Session["LoginUser"].ToString());
            if (st == "")
                Response.Redirect("../Account/Login.aspx");
        }
        catch(NullReferenceException ex)
        {
                Response.Redirect("../Account/Login.aspx");

        }
    }
}
