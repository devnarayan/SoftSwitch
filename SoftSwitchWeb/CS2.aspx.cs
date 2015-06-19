using SoftSwitch.Web.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CS2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Services.WebMethod]
    public static string GetHeaderContent()
    {
        ContentService cnservice = new ContentService();
        DataTable dt = cnservice.GetWebPagesList();
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }

    [System.Web.Services.WebMethod]
    public static string GetContentList(int WebPageID)
    {
        ContentService cnservice = new ContentService();
        DataTable dt = cnservice.GetContentList(WebPageID);
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
}