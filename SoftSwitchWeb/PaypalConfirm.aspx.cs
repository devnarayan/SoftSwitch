using SoftSwitch.Web.Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UniqueKeyGenerator;

public partial class PaypalConfirm : System.Web.UI.Page
{
    string authToken, txToken, query;
    string strResponse;
    string[] strID;

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    SqlCommand cmd;
    // This helper method encodes a string correctly for an HTTP POST
    private string Encode(string oldValue)
    {
        string newValue = oldValue.Replace("\"", "'");
        newValue = System.Web.HttpUtility.UrlEncode(newValue);
        newValue = newValue.Replace("%2f", "/");
        return newValue;
    }

    private void Page_Load(object sender, System.EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                confirm();
            }
        }
        catch (Exception ex)
        {
            lblResponse.Text = ex.ToString();
        }

        // confirm2();
    }  // --- end of page load --

    //  confirm();
    public void confirm()
    {

        //int Balance = SQL.GetUserIdByUsername(Session["Add_user"].ToString());
        //lblBalance.Text = "Remaining Credits : " + Balance + "";
        if (!Page.IsPostBack)
        {
            authToken = "YuEpVZiEowZazsO5C4Tb-b1dWr0AaJkr8Ah0OvAJho9W-O-bfIlDNQ9gi-0";
            //authToken = "Hjlvk9X7BpEEA39wt0wwhROuGFjVzpEKca-mBAQAxyTA-dhFfdD8vHjz27m";  // sandbox
            txToken = Request.QueryString.Get("tx");

            query = string.Format("cmd=_notify-synch&tx={0}&at={1}", txToken, authToken);
            // Create the request back
            string url = "https://www.paypal.com/cgi-bin/webscr";
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
            // Set values for the request back
            req.Method = "POST";
            req.ContentType = "application/x-www-form-urlencoded";
            req.ContentLength = query.Length;
            // Write the request back IPN strings
            StreamWriter stOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
            stOut.Write(query);
            stOut.Close();
            // Do the request to PayPal and get the response
            StreamReader stIn = new StreamReader(req.GetResponse().GetResponseStream());
            strResponse = stIn.ReadToEnd();
            stIn.Close();
            // sanity check
            int NewIDGen = 0;

            string[] ABC = strResponse.Split('\n');
            for (int i = 0; i < ABC.Length; i++)
            {
                if (ABC[i].ToString().IndexOf("item_name=") != -1)
                {
                    string ID = ABC[i].ToString().Replace("item_name=", "").Trim();
                    // NewIDGen = Convert.ToInt32(ID);
                    lblBalance.Text = ID;
                }
            }

            lblResponse.Text = strResponse;
            // If response was SUCCESS, parse response string and output details

            if (strResponse.StartsWith("SUCCESS") || strResponse.StartsWith("Completed"))
            {
                lblResponse.Text = "Transaction Successfully Saved";
                // generate key
                txtSerialKey.Text = getSecKey();

                PDTHolder pdt = PDTHolder.Parse(strResponse);
                string sStringAdd = string.Format("Thank you {0} {1} [{2}] for your payment of {3} {4}!",
                pdt.PayerFirstName, pdt.PayerLastName, pdt.PayerEmail, pdt.GrossTotal, pdt.Currency);
                PayerFirstName.Text = pdt.PayerFirstName.ToString();
                PayerLastName.Text = pdt.PayerLastName.ToString();
                PayerEmail.Text = pdt.PayerEmail.ToString();
                GrossTotal.Text = pdt.GrossTotal.ToString();
                Currency.Text = pdt.Currency.ToString();
                string[] proid = saveProduct();
                mailme(pdt.ReceiverEmail, proid[1].ToString(), pdt.PayerFirstName + " " + pdt.PayerLastName, pdt.Quantity.ToString(), proid[0].ToString(), pdt.ItemName, pdt.PaymentFee.ToString(), pdt.GrossTotal.ToString(), pdt.PaymentDate, pdt.GrossTotal.ToString(), pdt.GrossTotal.ToString(), "Pay Pal", pdt.TransactionId, pdt.AddressName, pdt.AddressStreat, pdt.AddressCity + " " + pdt.AddressContryCode + " " + pdt.AddressCountry, pdt.TransactionId, "Unsubscribe");
                lblResponse.Text = sStringAdd;
            }
            else
            {
                lblResponse.Text = lblResponse.Text + "Oooops, something went wrong...";
            }
        }
    }

    private string getSecKey()
    {
        UniqueKeyGenerator.UniqueKeys uc = new UniqueKeys();
        string rtn = uc.UsingGuid();
        rtn = rtn.Substring(0, Convert.ToInt32(rtn.Length / 2)) + "-" + rtn.Substring(4, Convert.ToInt32(rtn.Length - 4));
        string rtn2 = uc.UsingGuid();
        rtn2 = rtn2.Substring(0, Convert.ToInt32(rtn2.Length / 2)) + "-" + rtn2.Substring(4, Convert.ToInt32(rtn2.Length - 4));
        return rtn + "-" + rtn2;
    }
    private string[] saveProduct()
    {
        string[] prodid = new string[2];
        try
        {
            string customerid;
            Connection.OpenConnection(con);
            try
            {
                customerid = Session["CustId"].ToString();
            }
            catch (Exception ex)
            {
                cmd = new SqlCommand("select customerid from Customer where CustomerID in (select max(CustomerID) from Customer)", con);
                customerid = Convert.ToString(cmd.ExecuteScalar());
            }

            cmd = new SqlCommand("select Customer.CustomerID, Customer.SerialKey,Customer.C_Email,Product.ProductID from Customer inner join Product on Customer.CustomerID=Product.CustomerID and Product.CustomerID='" + customerid + "'", con);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtSerialKey.Text = reader["SerialKey"].ToString();
                prodid[0] = Convert.ToString(reader["ProductID"].ToString());
                prodid[1] = reader["C_Email"].ToString();
                txtCustomerID.Text = reader["CustomerID"].ToString();
            }
            reader.Close();
            if (String.IsNullOrEmpty(txToken)) txToken = "";
            cmd = new SqlCommand("spProductSave", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SerialNo", txtSerialKey.Text);
            cmd.Parameters.AddWithValue("@NoofInstall", 1);
            cmd.Parameters.AddWithValue("@Amount", GrossTotal.Text);
            cmd.Parameters.AddWithValue("@PackageID", 1);
            cmd.Parameters.AddWithValue("@TransactionID", txToken);
            cmd.Parameters.AddWithValue("@CustomerID", customerid);
            cmd.Parameters.Add("@Msg", SqlDbType.NVarChar, 200);
            cmd.Parameters["@Msg"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            string msg = cmd.Parameters["@Msg"].Value.ToString();
            cmd.Dispose();
        }
        catch (NullReferenceException ex)
        {

        }
        finally
        {
            Connection.CloseConnection(con);

        }
        return prodid;
    }

    public void mailme(string receivermail, string payer, string name, string Quantity, string itemno, string description, string unitprice, string totalprice, string orderdate, string ordertotal, string credittotal, string billingmethod, string cardno, string address1, string address2, string address3, string transactionid, string unsubscribe)
    {
        Dictionary<String, String> replacements = new Dictionary<String, String>();
        MailDefinition md = new MailDefinition();
        md.From = "scriptWord@scriptword.com";
        md.IsBodyHtml = true;
        md.CC = receivermail;
        md.Subject = "Thanks for your ScriptWord.com Order [SW" + itemno.PadLeft(8, '0') + "]";
        if (name.Length < 1) name = ""; if (Quantity.Length < 1) Quantity = ""; if (description.Length < 1) description = "";
        if (totalprice.Length < 1) totalprice = ""; if (orderdate.Length < 1) orderdate = ""; if (credittotal.Length < 1) credittotal = "";
        if (billingmethod.Length < 1) billingmethod = ""; if (cardno.Length < 1) cardno = ""; if (address1.Length < 1) address1 = ""; if (address2.Length < 1) address2 = "";
        if (address3.Length < 1) address3 = ""; if (unsubscribe.Length < 1) unsubscribe = "";
        replacements.Add("<%Name%>", name.Replace("+", " "));
        replacements.Add("<%QTY%>", Quantity);
        replacements.Add("<%ItemNo%>", "0005961");
        replacements.Add("<%Description%>", description.Replace("+", " "));
        replacements.Add("<%UnitPrice%>", totalprice);
        replacements.Add("<%TotalPrice%>", totalprice);
        replacements.Add("<%OrderDate%>", orderdate);
        replacements.Add("<%OrderTotal%>", ordertotal);
        replacements.Add("<%CreditTotal%>", credittotal);
        replacements.Add("<%BillingMethod%>", billingmethod);
        replacements.Add("<%CardNo%>", cardno);
        replacements.Add("<%Address1%>", address1);
        replacements.Add("<%Address2%>", address2);
        replacements.Add("<%Address3%>", address3);
        replacements.Add("<%Unsubscribe%>", unsubscribe);
        replacements.Add("<%SerialKey%>", txtSerialKey.Text.ToString());
        replacements.Add("<%CustomerID%>", txtCustomerID.Text.ToString());

        MailMessage msg = md.CreateMailMessage("devnagar@live.com," + payer.ToString(), replacements, body(), new System.Web.UI.Control());

        SmtpClient smtp = new SmtpClient();
        // smtp.Host = "smtp.live.com";
        smtp.Host = "smtpout.secureserver.net";
        smtp.Port = 80;
        //  smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("scriptWord@scriptword.com", "waroftheworld");
        // smtp.Credentials = new System.Net.NetworkCredential("devnagar@live.com", "waroftheworld");
        smtp.EnableSsl = false;
        smtp.Send(msg);
        //   lblMessage.Text = "Your Password Details Sent to your mail";
    }
    private string body()
    {
        string body =
            @"
<!DOCTYPE HTML PUBLIC '-//W3C//DTD XHTML 1.0 Transitional //EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html>
<head>
    <title></title>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
    <meta name='viewport' content='width=320, target-densitydpi=device-dpi'>
    <style type='text/css'>
        /* Mobile-specific Styles */
        @media only screen and (max-width: 660px) {
            table[class=w0], td[class=w0] {
                width: 0 !important;
            }

            table[class=w10], td[class=w10], img[class=w10] {
                width: 10px !important;
            }

            table[class=w15], td[class=w15], img[class=w15] {
                width: 5px !important;
            }

            table[class=w30], td[class=w30], img[class=w30] {
                width: 10px !important;
            }

            table[class=w60], td[class=w60], img[class=w60] {
                width: 10px !important;
            }

            table[class=w125], td[class=w125], img[class=w125] {
                width: 80px !important;
            }

            table[class=w130], td[class=w130], img[class=w130] {
                width: 55px !important;
            }

            table[class=w140], td[class=w140], img[class=w140] {
                width: 90px !important;
            }

            table[class=w160], td[class=w160], img[class=w160] {
                width: 180px !important;
            }

            table[class=w170], td[class=w170], img[class=w170] {
                width: 100px !important;
            }

            table[class=w180], td[class=w180], img[class=w180] {
                width: 80px !important;
            }

            table[class=w195], td[class=w195], img[class=w195] {
                width: 80px !important;
            }

            table[class=w220], td[class=w220], img[class=w220] {
                width: 80px !important;
            }

            table[class=w240], td[class=w240], img[class=w240] {
                width: 180px !important;
            }

            table[class=w255], td[class=w255], img[class=w255] {
                width: 185px !important;
            }

            table[class=w275], td[class=w275], img[class=w275] {
                width: 135px !important;
            }

            table[class=w280], td[class=w280], img[class=w280] {
                width: 135px !important;
            }

            table[class=w300], td[class=w300], img[class=w300] {
                width: 140px !important;
            }

            table[class=w325], td[class=w325], img[class=w325] {
                width: 95px !important;
            }

            table[class=w360], td[class=w360], img[class=w360] {
                width: 140px !important;
            }

            table[class=w410], td[class=w410], img[class=w410] {
                width: 180px !important;
            }

            table[class=w470], td[class=w470], img[class=w470] {
                width: 200px !important;
            }

            table[class=w580], td[class=w580], img[class=w580] {
                width: 280px !important;
            }

            table[class=w640], td[class=w640], img[class=w640] {
                width: 300px !important;
            }

            table[class*=hide], td[class*=hide], img[class*=hide], p[class*=hide], span[class*=hide] {
                display: none !important;
            }

            table[class=h0], td[class=h0] {
                height: 0 !important;
            }

            p[class=footer-content-left] {
                text-align: center !important;
            }

            #headline p {
                font-size: 30px !important;
            }

            .article-content, #left-sidebar {
                -webkit-text-size-adjust: 90% !important;
                -ms-text-size-adjust: 90% !important;
            }

            .header-content, .footer-content-left {
                -webkit-text-size-adjust: 80% !important;
                -ms-text-size-adjust: 80% !important;
            }

            img {
                height: auto;
                line-height: 100%;
            }
        }
        /* Client-specific Styles */
        #outlook a {
            padding: 0;
        }
        /* Force Outlook to provide a 'view in browser' button. */
        body {
            width: 100% !important;
        }

        .ReadMsgBody {
            width: 100%;
        }

        .ExternalClass {
            width: 100%;
            display: block !important;
        }
        /* Force Hotmail to display emails at full width */
        /* Reset Styles */
        /* Add 100px so mobile switch bar doesn't cover street address. */
        body {
            background-color: #ececec;
            margin: 0;
            padding: 0;
        }

        img {
            outline: none;
            text-decoration: none;
            display: block;
        }

        br, strong br, b br, em br, i br {
            line-height: 100%;
        }

        h1, h2, h3, h4, h5, h6 {
            line-height: 100% !important;
            -webkit-font-smoothing: antialiased;
        }

            h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
                color: blue !important;
            }

                h1 a:active, h2 a:active, h3 a:active, h4 a:active, h5 a:active, h6 a:active {
                    color: red !important;
                }
                /* Preferably not the same color as the normal header link color.  There is limited support for psuedo classes in email clients, this was added just for good measure. */
                h1 a:visited, h2 a:visited, h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {
                    color: purple !important;
                }
        /* Preferably not the same color as the normal header link color. There is limited support for psuedo classes in email clients, this was added just for good measure. */
        table td, table tr {
            border-collapse: collapse;
        }

        .yshortcuts, .yshortcuts a, .yshortcuts a:link, .yshortcuts a:visited, .yshortcuts a:hover, .yshortcuts a span {
            color: black;
            text-decoration: none !important;
            border-bottom: none !important;
            background: none !important;
        }
        /* Body text color for the New Yahoo.  This example sets the font of Yahoo's Shortcuts to black. */
        /* This most probably won't work in all email clients. Don't include code blocks in email. */
        code {
            white-space: normal;
            word-break: break-all;
        }

        #background-table {
            background-color: #ececec;
        }
        /* Webkit Elements */
        #top-bar {
            border-radius: 6px 6px 0px 0px;
            -moz-border-radius: 6px 6px 0px 0px;
            -webkit-border-radius: 6px 6px 0px 0px;
            -webkit-font-smoothing: antialiased;
            background-color: #043948;
            color: #e7cba3;
        }

            #top-bar a {
                font-weight: bold;
                color: #e7cba3;
                text-decoration: none;
            }

        #footer {
            border-radius: 0px 0px 6px 6px;
            -moz-border-radius: 0px 0px 6px 6px;
            -webkit-border-radius: 0px 0px 6px 6px;
            -webkit-font-smoothing: antialiased;
        }
        /* Fonts and Content */
        body, td {
            font-family: HelveticaNeue, sans-serif;
        }

        .header-content, .footer-content-left, .footer-content-right {
            -webkit-text-size-adjust: none;
            -ms-text-size-adjust: none;
        }
        /* Prevent Webkit and Windows Mobile platforms from changing default font sizes on header and footer. */
        .header-content {
            font-size: 12px;
            color: #e7cba3;
        }

            .header-content a {
                font-weight: bold;
                color: #e7cba3;
                text-decoration: none;
            }

        #headline p {
            color: #e7cba3;
            font-family: HelveticaNeue, sans-serif;
            font-size: 36px;
            text-align: center;
            margin-top: 0px;
            margin-bottom: 30px;
        }

            #headline p a {
                color: #e7cba3;
                text-decoration: none;
            }

        .article-title {
            font-size: 18px;
            line-height: 24px;
            color: #9a9661;
            font-weight: bold;
            margin-top: 0px;
            margin-bottom: 18px;
            font-family: HelveticaNeue, sans-serif;
        }

            .article-title a {
                color: #9a9661;
                text-decoration: none;
            }

            .article-title.with-meta {
                margin-bottom: 0;
            }

        .article-meta {
            font-size: 13px;
            line-height: 20px;
            color: #ccc;
            font-weight: bold;
            margin-top: 0;
        }

        .article-content {
            font-size: 13px;
            line-height: 18px;
            color: #444444;
            margin-top: 0px;
            margin-bottom: 18px;
            font-family: HelveticaNeue, sans-serif;
        }

            .article-content a {
                color: #00707b;
                font-weight: bold;
                text-decoration: none;
            }

            .article-content img {
                max-width: 100%;
            }

            .article-content ol, .article-content ul {
                margin-top: 0px;
                margin-bottom: 18px;
                margin-left: 19px;
                padding: 0;
            }

            .article-content li {
                font-size: 13px;
                line-height: 18px;
                color: #444444;
            }

                .article-content li a {
                    color: #00707b;
                    text-decoration: underline;
                }

            .article-content p {
                margin-bottom: 15px;
            }

        .footer-content-left {
            font-size: 12px;
            line-height: 15px;
            color: #e2e2e2;
            margin-top: 0px;
            margin-bottom: 15px;
        }

            .footer-content-left a {
                color: #e7cba3;
                font-weight: bold;
                text-decoration: none;
            }

        .footer-content-right {
            font-size: 11px;
            line-height: 16px;
            color: #e2e2e2;
            margin-top: 0px;
            margin-bottom: 15px;
        }

            .footer-content-right a {
                color: #e7cba3;
                font-weight: bold;
                text-decoration: none;
            }

        #footer {
            background-color: #043948;
            color: #e2e2e2;
        }

            #footer a {
                color: #e7cba3;
                text-decoration: none;
                font-weight: bold;
            }

        #permission-reminder {
            white-space: normal;
        }

        #street-address {
            color: #e7cba3;
            white-space: normal;
        }
    </style>
    <!--[if gte mso 9]>
    <style _tmplitem='35' >
    .article-content ol, .article-content ul {
       margin: 0 0 0 24px;
       padding: 0;
       list-style-position: inside;
    }
    </style>
    <![endif]-->
</head>
<body>
    <table width='100%' cellpadding='0' cellspacing='0' border='0' id='background-table'>
        <tbody>
            <tr>
                <td align='center' bgcolor='#ececec'>
                    <table class='w640' style='margin:0 10px;' width='640' cellpadding='0' cellspacing='0' border='0'>
                        <tbody>
                            <tr><td class='w640' width='640' height='20'></td></tr>

                            <tr>
                                <td class='w640' width='640'>
                                    <table id='top-bar' class='w640' width='640' cellpadding='0' cellspacing='0' border='0' bgcolor='#00707b'>
                                        <tbody>
                                            <tr>
                                                <td class='w15' width='15'></td>
                                                <td class='w325' width='350' valign='middle' align='left'>
                                                    <table class='w325' width='350' cellpadding='0' cellspacing='0' border='0'>
                                                        <tbody>
                                                            <tr><td class='w325' width='350' height='8'></td></tr>
                                                        </tbody>
                                                    </table>
                                                    <div class='header-content'><webversion>Web Version</webversion><span class='hide'>&nbsp;&nbsp;|&nbsp; <preferences lang='en'>Update preferences</preferences>&nbsp;&nbsp;|&nbsp; <unsubscribe>Unsubscribe</unsubscribe></span></div>
                                                    <table class='w325' width='350' cellpadding='0' cellspacing='0' border='0'>
                                                        <tbody>
                                                            <tr><td class='w325' width='350' height='8'></td></tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                                <td class='w30' width='30'></td>
                                                <td class='w255' width='255' valign='middle' align='right'>
                                                    <table class='w255' width='255' cellpadding='0' cellspacing='0' border='0'>
                                                        <tbody>
                                                            <tr><td class='w255' width='255' height='8'></td></tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellpadding='0' cellspacing='0' border='0'>
                                                        <tbody>
                                                            <tr>

                                                                <td valign='middle'><fblike><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAOCAYAAAASVl2WAAAAdUlEQVR42rWRMQ6AIAxFHWVi0EXu4VG8Fydy7G1Y6UalxG9IQ0wc/MkvJP+VPzCJSHPVXL1Uh84eoYsx7jnnUzopBGBlZkIwArZSCiMgouOpuEewm/qqVk8IrbSyQRYwNe6twrerjhGgxzcgpSTwP4C3nwTgAkAB/svJgCf5AAAAAElFTkSuQmCC' border='0' width='8' height='14' alt='Facebook icon' =''></fblike></td>
                                                                <td width='3'></td>
                                                                <td valign='middle'><div class='header-content'><fblike>Like</fblike></div></td>


                                                                <td class='w10' width='10'></td>
                                                                <td valign='middle'><tweet><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAANCAYAAABPeYUaAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowMTVEQkVFNTc0QzAxMUUyQkM3MERGMkM5MTY0MDlCMiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDowMTVEQkVFNjc0QzAxMUUyQkM3MERGMkM5MTY0MDlCMiI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjAxNURCRUUzNzRDMDExRTJCQzcwREYyQzkxNjQwOUIyIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjAxNURCRUU0NzRDMDExRTJCQzcwREYyQzkxNjQwOUIyIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+eawvgwAAAaZJREFUeNqMU79Lw1AQTmoR22gRpFAK+g+kg07OLs7+CS6Ci4VKUenWxc5CB5cWHKtLUZwLLg4ZuhhSm0CK2h8YqKHQpE2axLuaJ+mjlH5wvF/3fe/e3TvW8zyGZVkGEGL+4DKzwH3ON8QQzMIJcMc4holjLpdL9Xq9cblc/oC1GRDZaLfbV4lE4gQvAJ8SrN8mk4kFlz9OhTASQFRRlAvTNIVMJsMjEQzDi4iieOpRAIGuJElneD7l+yKRRqORJg7NZjPN8/wO7G/puv5Ai1iWpRYKhT04XwmKhLLZbAoEPomj4zi6YRgvSKBFQPgeOJvIDYpEZVk+B6LmLQHIyw0+mYiQipj5fP4ZNkbMEmi1Wq+kQoxfJjJdr9VqR/Ckr0VRYM78fLF0JIiRqqrfULbYoijg2ddQsR+8f14k+GdixWJxfzAYPM2LAiuFCQ1yg4kNVyqVg3q9ftzv9+9c1zUovqNp2m0ymdwG31Va5P+rC4Kgwa9McRy3i2s4HNq2/Q6ipWq1ehiPxy87nU53JqE+WKp3sD/WAu3ggGF/GGA2TSap+BVgABAiomFDqIyrAAAAAElFTkSuQmCC' border='0' width='17' height='13' alt='Twitter icon' =''></tweet></td>
                                                                <td width='3'></td>
                                                                <td valign='middle'><div class='header-content'><tweet>Tweet</tweet></div></td>


                                                                <td class='w10' width='10'></td>
                                                                <td valign='middle'><forwardtoafriend lang='en'><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAOCAYAAADNGCeJAAABU0lEQVR42o2Sy0qFUBSGhS6TTtgkDudMgt7AQdA4DJoEQS/QE/QcQRCOHAYRBE0EIYcmOA4c5jQItIEXJExD3a0fEhZmnr3gZ2/X+vfn2heFYoOkkhakpaTg3cFaIYTSC6GmaXrXdd2nkAx4syy7B3AIW8KQ5/ljVVUvq0DwwIs51o7CEHEc30A0bUY4DauLlTBEFEXXnuedNU3z1ucwRw41fMvCsN0H0zQPLcs6KorCItmYI4eaNAzn4bruadu2H9TNu2EYBxA6Qw41eH53cEVrd0lbf2Awh2F4yW8VQL5d1OCBV9O0vbquXzkQsSDTd5IktxjFP0HbfQqC4ELX9X000DfBgYCpAImJQDeO45yUZflMXRW8NgAq6wBOvXjbto+p668hhB8H+eY4uEnhleMWceC4DP4TDiLNZGCbvu+f07hNWmP5OQchh4IUcCQ34yDoB00LvFnsGuMQAAAAAElFTkSuQmCC' border='0' width='19' height='14' alt='Forward icon' =''></forwardtoafriend></td>
                                                                <td width='3'></td>
                                                                <td valign='middle'><div class='header-content'><forwardtoafriend lang='en'>Forward</forwardtoafriend></div></td>

                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class='w255' width='255' cellpadding='0' cellspacing='0' border='0'>
                                                        <tbody>
                                                            <tr><td class='w255' width='255' height='8'></td></tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                                <td class='w15' width='15'></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </td>
                            </tr>
                            <tr>
                                <td id='header' class='w640' width='640' align='center' bgcolor='#00707b'>

                                    <table class='w640' width='640' cellpadding='0' cellspacing='0' border='0'>
                                        <tbody>
                                            <tr><td class='w30' width='30'></td><td class='w580' width='580' height='30'></td><td class='w30' width='30'></td></tr>
                                            <tr>
                                                <td class='w30' width='30'></td>
                                                <td class='w580' width='580'>
                                                    <div align='center' id='headline'>
                                                        <p>
                                                            <strong><singleline label='Title'><span style='font-family:Edwardian Script ITC;'>S</span><span style='font-family:Harrington;'>cript</span><span style='font-family:Edwardian Script ITC;'>W</span><span style='font-family:Harrington;'>ord <sub>&copy;</sub></span></singleline></strong>
                                                        </p>
                                                    </div>
                                                </td>
                                                <td class='w30' width='30'></td>
                                            </tr>
                                        </tbody>
                                    </table>


                                </td>
                            </tr>

                            <tr><td class='w640' width='640' height='30' bgcolor='#ffffff'></td></tr>
                            <tr id='simple-content-row'>
                                <td class='w640' width='640' bgcolor='#ffffff'>
                                    <table class='w640' width='640' cellpadding='0' cellspacing='0' border='0'>
                                        <tbody>
                                            <tr>
                                                <td class='w30' width='30'></td>
                                                <td class='w580' width='580'>
                                                    <repeater>

                                                        <layout label='Text only'>
                                                            <table class='w580' width='580' cellpadding='0' cellspacing='0' border='0'>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class='w580' width='580'>
                                                                            <p align='left' class='article-title'><singleline label='Title'>Dear <%Name%></singleline></p>
                                                                            <div align='left' class='article-content'>
                                                                                <multiline label='Description'>Thank you for ordering from ScriptWord.com. Your order has been received and the download process has been completed.</multiline>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td class='w580' width='580' height='10'></td></tr>
                                                                </tbody>
                                                            </table>
                                                        </layout>


                                                        <layout label='Text with full-width image'>
                                                            <table class='w580' width='580' cellpadding='0' cellspacing='0' border='0'>
                                                                <tbody>
<tr>
<td class='w580' width='580'>
<h3 style='color:red;'>Your serial number to install the product is : <%SerialKey%></h3>
<p>
If you should see a warning box that says, “Allow, I trust this program. I know where it’s from or I’ve used it before.” This is caused by your computer’s security settings. Click “Allow” to continue.
</p>
</td>
</tr>
                                                                    <tr>
                                                                        <td class='w580' width='580'>
                                                                            <p align='left' class='article-title'><singleline label='Title'>Item ordered and downloaded:</singleline></p>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td class='w580' width='580'>
                                                                            <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0
                                                                                   style='border-collapse:collapse;border:none'>
                                                                                <tr>
                                                                                    <td width=67 valign=top style='width:.7in;border:solid windowtext 1.0pt;
  background:#B3B3B3;padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif';
                                                                                                  color:white'>QTY</span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=132 valign=top style='width:99.0pt;border:solid windowtext 1.0pt;
  border-left:none;background:#B3B3B3;padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif';
                                                                                                  color:white'>ITEM NUMBER</span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=192 valign=top style='width:2.0in;border:solid windowtext 1.0pt;
  border-left:none;background:#B3B3B3;padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif';
                                                                                                  color:white'>DESCRIPTION</span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=96 valign=top style='width:1.0in;border:solid windowtext 1.0pt;
  border-left:none;background:#B3B3B3;padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif';
                                                                                                  color:white'>UNIT PRICE</span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=103 valign=top style='width:77.4pt;border:solid windowtext 1.0pt;
  border-left:none;background:#B3B3B3;padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif';
                                                                                                  color:white'>TOTAL PRICE</span>
                                                                                        </p>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width=67 valign=top style='width:.7in;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif''>
                                                                                                1
                                                                                            </span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=132 valign=top style='width:99.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif''>
                                                                                                <%ItemNo%>
                                                                                            </span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=192 valign=top style='width:2.0in;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif''>
                                                                                                <%Description%>
                                                                                            </span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=96 valign=top style='width:1.0in;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif''>
                                                                                                <%UnitPrice%>
                                                                                            </span>
                                                                                        </p>
                                                                                    </td>
                                                                                    <td width=103 valign=top style='width:77.4pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
                                                                                        <p class=MsoNormal style='margin-top:1.0pt;margin-right:-9.35pt;margin-bottom:
  1.0pt;margin-left:0in'>
                                                                                            <span style='font-size:10.0pt;font-family:' arial','sans-serif''>
                                                                                                <%TotalPrice%>
                                                                                            </span>
                                                                                        </p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>

                                                                        </td>
                                                                    </tr>
                                                                    <tr><td class='w580' width='580' height='10'></td></tr>
                                                                </tbody>
                                                            </table>
                                                        </layout>


                                                        <layout label='Text with right-aligned image'>
                                                            <table class='w580' width='580' cellpadding='0' cellspacing='0' border='0'>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class='w580' width='580'>
                                                                            <p align='left' class='article-title'><singleline label='Title'>Order Summary</singleline></p>
                                                                            <table cellpadding='0' cellspacing='0' border='0' align='right'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w30' width='15'></td>
                                                                                        <td></td>
                                                                                    </tr>
                                                                                    <tr><td class='w30' width='15' height='5'></td><td></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                            <div align='left' class='article-content'>
                                                                                <multiline label='Description'>Order Date: &nbsp;<%OrderDate%><br /></multiline>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td class='w580' width='580' height='10'></td></tr>
                                                                </tbody>
                                                            </table>
                                                        </layout>
                                                        <layout label='Text with left-aligned image'>
                                                            <table class='w580' width='580' cellpadding='0' cellspacing='0' border='0'>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class='w580' width='580'>
                                                                            <p align='left' class='article-title'><singleline label='Title'>Billing Information:</singleline></p>
                                                                            <table cellpadding='0' cellspacing='0' border='0' align='right'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w30' width='15'></td>
                                                                                        <td></td>
                                                                                    </tr>
                                                                                    <tr><td class='w30' width='15' height='5'></td><td></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                            <div align='left' class='article-content'>
 <multiline label='Description'><b>Customer ID: <%CustomerID%></b><br/></multiline>
<multiline label='Description'><b>Billing Method: <%BillingMethod%></b><br />Transaction ID: &nbsp;<%CardNo%> <br /></multiline>
                                                                                <br /> <multiline label='Description'>
                                                                                    <b>Billing Address:</b><br />
                                                                                           <%Address1%><br /><%Address2%><br /><%Address3%><br />
                                                                                </multiline>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td class='w580' width='580' height='10'></td></tr>
                                                                </tbody>
                                                            </table>
                                                        </layout>


                                                        <layout label='Two columns'>
                                                            <table class='w580' width='580' cellpadding='0' cellspacing='0' border='0'>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class='w275' width='275' valign='top'>
                                                                            <table class='w275' width='275' cellpadding='0' cellspacing='0' border='0'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w275' width='275'>
                                                                                            <p align='left' class='article-title'><singleline label='Title'>Order Total:  &nbsp;<%OrderTotal%></singleline></p>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr><td class='w275' width='275' height='10'></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td class='w30' width='30'></td>
                                                                        <td class='w275' width='275' valign='top'>
                                                                            <table class='w275' width='275' cellpadding='0' cellspacing='0' border='0'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w275' width='275'>
                                                                                            <p align='left' class='article-title'><singleline label='Title'>Credit Total: &nbsp;<%CreditTotal%></singleline></p>
                                                                                            <div align='left' class='article-content'>
                                                                                                <!--<multiline label='Description'>Enter your description</multiline>-->
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr><td class='w275' width='275' height='10'></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </layout>



                                                        <layout label='Image gallery'>
If you have any questions, please reply to this email.<br /><br />
                                                            Thanks,<br /><br />
                                                            R.M.Robinson, Ltd.
                                                            <!--<table class='w580' width='580' cellpadding='0' cellspacing='0' border='0'>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class='w180' width='180' valign='top'>
                                                                            <table class='w180' width='180' cellpadding='0' cellspacing='0' border='0'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w180' width='180'></td>
                                                                                    </tr>
                                                                                    <tr><td class='w180' width='180' height='10'></td></tr>
                                                                                    <tr>
                                                                                        <td class='w180' width='180'>
                                                                                            <div align='left' class='article-content'>
                                                                                                <p align='left' class='article-title'><singleline label='Title'>Order Summary:</singleline></p>
                                                                                                <multiline label='Description'>Enter your description</multiline>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr><td class='w180' width='180' height='10'></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td width='20'></td>
                                                                        <td class='w180' width='180' valign='top'>
                                                                            <table class='w180' width='180' cellpadding='0' cellspacing='0' border='0'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w180' width='180'></td>
                                                                                    </tr>
                                                                                    <tr><td class='w180' width='180' height='10'></td></tr>
                                                                                    <tr>
                                                                                        <td class='w180' width='180'>
                                                                                            <div align='left' class='article-content'>
                                                                                                <p align='left' class='article-title'><singleline label='Title'>Billing  Information:</singleline></p>
                                                                                                  <multiline label='Description'>Enter your description</multiline>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr><td class='w180' width='180' height='10'></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td width='20'></td>
                                                                        <td class='w180' width='180' valign='top'>
                                                                            <table class='w180' width='180' cellpadding='0' cellspacing='0' border='0'>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td class='w180' width='180'></td>
                                                                                    </tr>
                                                                                    <tr><td class='w180' width='180' height='10'></td></tr>
                                                                                    <tr>
                                                                                        <td class='w180' width='180'>
                                                                                            <div align='left' class='article-content'>
                                                                                                <multiline label='Description'>Enter your description</multiline>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr><td class='w180' width='180' height='10'></td></tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>-->
                                                        </layout>
                                                    </repeater>
                                                </td>
                                                <td class='w30' width='30'></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr><td class='w640' width='640' height='15' bgcolor='#ffffff'></td></tr>

                            <tr>
                                <td class='w640' width='640'>
                                    <table id='footer' class='w640' width='640' cellpadding='0' cellspacing='0' border='0' bgcolor='#043948'>
                                        <tbody>
                                            <tr><td class='w30' width='30'></td><td class='w580 h0' width='360' height='30'></td><td class='w0' width='60'></td><td class='w0' width='160'></td><td class='w30' width='30'></td></tr>
                                            <tr>
                                                <td class='w30' width='30'></td>
                                                <td class='w580' width='360' valign='top'>
                                                    <span class='hide'><p id='permission-reminder' align='left' class='footer-content-left'><span> </span></p></span>
                                                    <p align='left' class='footer-content-left'>
                                                        <preferences lang='en'><span style='font-family:Edwardian Script ITC;'>S</span><span style='font-family:Harrington;'>cript</span><span style='font-family:Edwardian Script ITC;'>W</span><span style='font-family:Harrington;'>ord <sub>&copy;</sub></span></preferences>
                                                        | <unsubscribe><a href='<%Unsubscribe%>' target='_blank'> Unsubscribe</a></unsubscribe>
                                                    </p>
                                                </td>
                                                <td class='hide w0' width='60'></td>
                                                <td class='hide w0' width='160' valign='top'>
                                                    <p id='street-address' align='right' class='footer-content-right'></p>
                                                </td>
                                                <td class='w30' width='30'></td>
                                            </tr>
                                            <tr><td class='w30' width='30'></td><td class='w580 h0' width='360' height='15'></td><td class='w0' width='60'></td><td class='w0' width='160'></td><td class='w30' width='30'></td></tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr><td class='w640' width='640' height='60'></td></tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
";
        return body;
    }
}