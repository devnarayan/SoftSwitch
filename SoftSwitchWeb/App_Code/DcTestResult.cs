using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SoftSwitch.Web.Code
{
   
    public class DcTestResult
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        DataSet ds = new DataSet();
        public DataSet ShowTestResult()
        {
            SqlDataAdapter da=new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText="TestResult";
            cmd.Connection=con;
            cmd.Parameters.AddWithValue("@QuizAttemptID",1);
            con.Open();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            con.Dispose();
            return ds;

        }
        public int InsertQuestion(string Question)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Insert_question";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Qusestiontext", Question);
            con.Open();
           int i =  cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        public DataTable showuserLogin(string UserName,string Password)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "ShowLoginUser";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@Password", Password);
            con.Open();
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            con.Dispose();
            return dt;
        }

        public int InsertUserRegistration(string UserName,string Pwd,string PhoneNo)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertRegisterUser";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@Password", Pwd);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNo);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        #region Forgot Password
        public bool checkEmailID(string email)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "IsEamilFound";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.Add("@IsEmail",SqlDbType.Bit);
            cmd.Parameters["@IsEmail"].Direction = ParameterDirection.Output;
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            bool ismail = Convert.ToBoolean(cmd.Parameters["@IsEmail"].Value);
            return ismail;
        }
        public string checTokenStatus(string token)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "IsTokenFound";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Token", token);
            cmd.Parameters.Add("@IsToken", SqlDbType.NVarChar,300);
            cmd.Parameters["@IsToken"].Direction = ParameterDirection.Output;
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
          string tstatus = Convert.ToString(cmd.Parameters["@IsToken"].Value);
          return tstatus;
        }
        public int UpdatePasswordToken(string email, string token)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "spUpdateToken";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Token", token);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public int UpdatePassword(string email, string password)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "spUpdatePassword";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@pwd", password);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        #endregion
    }

    
}