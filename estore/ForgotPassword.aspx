<%@ Page Language="c#" AutoEventWireup="True" CodeBehind="ForgotPassword.aspx.cs" Inherits="CCEstore.ForgotPassword" %>
<html>
<HEAD>
		<title>Login</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Css/CCEstore.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY { background: #E3E3E3; }
.loginpopup {
  background:transparent url(images_style/loginboxmiddle.png) no-repeat left top;
  height:139px;
  padding-top:0px;
  color: #FFF;
  width: 427px;
}
.loginpopup label {
	display: block; 
	float: left; 
	width: 26%; 
	text-align: right;
	margin: 0 10px 0 0; 
	padding-bottom: 15px;
	clear: left;  
	color: #FFF;
}
.loginpopup .textbox {
	float: left; 
	display: block;
	width: 65%;
	margin-bottom: 15px;  
	padding: 3px;
    background: #E2F0FF;
}
.loginpopup .left {
width: 200px;
float: left;
color: #FFF;
padding-left: 20px;
}
.loginpopup a:link, .loginpopup a:visited {
color: #FFF;
}
.loginpopup p {
margin:0;
padding: 0;
}
.loginpopup .submit {
clear:both;
text-align:right;
width:97%;
}
#btnHLogin {
background:transparent url(images_style/loginbut.png) no-repeat scroll center top;
border:0 none;
cursor:pointer;
height:22px;
margin:0;
padding:0;
text-indent:-1000em;
width:66px; }
.lbox {
padding-left: 10px;
}
		</style>
	</HEAD>

<body leftMargin="0" topMargin="0" MS_POSITIONING="GridLayout" background="Images/bg_grey.jpg">
<form class="loginpopup" id="Form1" method="post" runat="server">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                    Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3">
        <tr>
            <td width="10%">
            </td>
            <td style="color: #cc6600">
                <asp:Label ID="Label1" runat="server" Text="Forgot your password?"></asp:Label>
            </td>
            <td>
            </td>
        </tr>
        <tr height="15px">
            <td style="height: 19px">
            </td>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Please enter your Username/Email below and your password will be emailed to you."
                    CssClass="fontnormal"></asp:Label>
            </td>
        </tr>
        <tr height="15px">
            <td>
            </td>
            <td>
                <strong>
                    <asp:Label ID="Label3" runat="server" Text="Username/Email" CssClass="fontnormal"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Height="20" CssClass="textbox" Width="174px"></asp:TextBox>&nbsp;
            </td>
        </tr>
        <tr height="15px">
            <td>
            </td>
            <td>
                &nbsp;<asp:Button ID="btnBack" runat="server" CssClass="button" OnClick="btnBack_Click"
                    Text="Back" /><td align="center">
                        <asp:Button ID="btnSubmit" OnClick="submit_Click" runat="server" CssClass="button"
                            Text="Submit"></asp:Button>
                    </td>
                <td>
                </td>
        </tr>
    </table>
    </div>
</form>
</body>
</html>