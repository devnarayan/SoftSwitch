﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string API_KEY = string.Empty;


    [WebMethod]
    public static string hello()
    {
        return "hi";
    }
    [WebMethod]
    public static string IsPaymentDone(string invocieno)
    {
        return "hi";
    }
}