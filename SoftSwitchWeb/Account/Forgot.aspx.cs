using SoftSwitch.Web.Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Forgot(object sender, EventArgs e)
    {
        if (IsValid)
        {
            DataFunctions dbContext = new DataFunctions();
            DataTable dt = dbContext.GetDataTable("select UserName from AspNetUsers where Email='" + Email.Text + "'");
            if (dt.Rows.Count > 0)
            {
                DcTestResult dct = new DcTestResult();
                bool i = dct.checkEmailID(Email.Text);
                Guid did = Guid.NewGuid();
                if (i)
                {
                    string html = "<h3>Hackdification Reset your password </h3><br><a href='" + ConfigurationManager.AppSettings["DomainName"] + "/Account/ResetPassword.aspx?token=" + did.ToString() + "' target='_blank'>Reset Password</a>";
                    SendForgotPasswordEmail("Forgot Password Hackdification.", html, Email.Text);

                    int ii = dct.UpdatePasswordToken(Email.Text, did.ToString());
                    lblMessage.Text = "Forgot Password email sent to your Inbox, Pleae chekc and follow given link.";
                }
                else
                {
                    lblMessage.Text = "Invalid Emial id, Please try agian.";
                }
                loginForm.Visible = false;
                DisplayEmail.Visible = true;
            }
            else
            {
                FailureText.Text = "The user either does not exist or is not confirmed.";
                ErrorMessage.Visible = true;
                return;
            }
            // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
            // Send email with the code and the redirect to reset password page
            //string code = manager.GeneratePasswordResetToken(user.Id);
            //string callbackUrl = IdentityHelper.GetResetPasswordRedirectUrl(code, Request);
            //manager.SendEmail(user.Id, "Reset Password", "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>.");
            loginForm.Visible = false;
            DisplayEmail.Visible = true;
        }
    }
    public void SendForgotPasswordEmail(string Subject, string Body, string To)
    {
        try
        {
            System.Net.Mail.MailMessage MyMailMessage = new System.Net.Mail.MailMessage(ConfigurationManager.AppSettings["tomail"], To);
            MyMailMessage.IsBodyHtml = true;
            MyMailMessage.Subject = Subject;
            MyMailMessage.Body = Convert.ToString(Body);
            System.Net.Mail.Attachment MyAttachment = null;

            string host = ConfigurationManager.AppSettings["host"];
            int port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
            System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient(host, port);
            mailClient.EnableSsl = true;
            string from_email = ConfigurationManager.AppSettings["email"];
            string password = ConfigurationManager.AppSettings["password"];
            System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential(from_email, password);
            mailClient.UseDefaultCredentials = false;

            mailClient.Credentials = mailAuthentication;
            mailClient.Send(MyMailMessage);
            MyMailMessage.Dispose();

        }
        catch (Exception ex)
        {

        }
    }
}