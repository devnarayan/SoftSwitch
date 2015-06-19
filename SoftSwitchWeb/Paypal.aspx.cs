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

public partial class Paypal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                lblPrice.Text = (30).ToString();
                try
                {
                    lblID.Text = Session["CustId"].ToString();
                }
                catch (Exception ex)
                {
                    Connection.OpenConnection(con);
                    cmd = new SqlCommand("select customerid from Customer where CustomerID in (select max(CustomerID) from Customer)", con);
                    lblID.Text = Convert.ToString(cmd.ExecuteScalar());
                    Connection.CloseConnection(con);
                }
                customerinfo();
            }
            catch (NullReferenceException ex)
            {
                Response.Redirect("Purchase.aspx?ProductID=1");
            }
        }
    }
    private void customerinfo()
    {
        cmd = new SqlCommand("spCustomerInfo", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CustomerID", lblID.Text);
        Connection.OpenConnection(con);
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            lblName.Text = reader["C_FName"].ToString() + " " + reader["C_MName"].ToString() + " " + reader["C_LName"].ToString();
            lblEmail.Text = reader["C_Email"].ToString();
            lblContact.Text = reader["C_Mobile"].ToString();
            lblAddress1.Text = reader["C_Address"].ToString();
            lblAddress2.Text = reader["C_City"].ToString() + " " + reader["C_State"].ToString();
            lblAddress3.Text = reader["C_Country"].ToString() + " " + reader["C_Zip"].ToString();
        }
        reader.Close();
        Connection.CloseConnection(con);
    }

}