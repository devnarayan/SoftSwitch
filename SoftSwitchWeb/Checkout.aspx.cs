using SoftSwitch.Web.Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UniqueKeyGenerator;

public partial class Checkout : System.Web.UI.Page
{
    public string ID = "";
    public string Amount_tb = "";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                getPrice();
                ID = Request.QueryString["ProductID"].ToString();
                Amount_tb = lblAmount.Text;
                proceed.Visible = false;
            }
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("Default.aspx#collections");
        }
    }
    protected void btnconfirmPayment_Click(object sender, EventArgs e)
    {
        if (txtemail.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "success", "alert('Incorrect email id')", true);
        }
        else
        {
            Connection.OpenConnection(con);
            cmd = new SqlCommand("spCustomerAdd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CFName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@CLName", txtLastName.Text);
            // cmd.Parameters.AddWithValue("@CMName", txtMiddleName.Text);
            cmd.Parameters.AddWithValue("@CMobile", txtMobile.Text);
            //cmd.Parameters.AddWithValue("@OMobile", txtOfficeMobile.Text);
            //cmd.Parameters.AddWithValue("@HMobile", txtHomeMobile.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text);
            // cmd.Parameters.AddWithValue("@State", txtState.Text);
            cmd.Parameters.AddWithValue("@Zip", txtZipCode.Text);
            cmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue);
            cmd.Parameters.AddWithValue("@SerialKey", getSecKey());
            cmd.Parameters.AddWithValue("@Price", lblAmount.Text);
            cmd.Parameters.Add("@Msg", SqlDbType.NVarChar, 200);
            cmd.Parameters["@Msg"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            string msg = Convert.ToString(cmd.Parameters["@Msg"].Value);
            cmd.Dispose();
            Connection.CloseConnection(con);
            if (msg.Substring(0, 2) == "OK")
            {
                Session["CustId"] = msg.Substring(3, msg.Length - 3);
                //  Session["CustId"] = msg.Substring(3, msg.Length - 3);
                proceed.Visible = true;
                Response.Redirect("Paypal.aspx");
            }
            else
            {
                lblMessage.Text = msg.ToString();
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
    private void getPrice()
    {
        Connection.OpenConnection(con);
        cmd = new SqlCommand("select P_Name,P_Install,P_Price from Package where PackageID='" + Request.QueryString["ProductID"] + "'", con);
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            lblAmount.Text = reader["P_Price"].ToString().TrimEnd('0');
        }
        reader.Close();
        cmd.Dispose();
        Connection.CloseConnection(con);
    }
}