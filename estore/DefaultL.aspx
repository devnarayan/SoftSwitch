<%@ Page language="c#" Codebehind="DefaultL.aspx.cs" AutoEventWireup="True" Inherits="CCEstore.DefaultL" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
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
  padding-top:20px;
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
	<body leftMargin="0" topMargin="0" onLoad="document.all('txtUserID').focus();" MS_POSITIONING="GridLayout" background="Images/bg_grey.jpg">
	
	
	        <script type="text/javascript" >
        function GetRadWindow()
        {
          var oWindow = null;
          if (window.radWindow)
             oWindow = window.radWindow;
          else if (window.frameElement.radWindow)
             oWindow = window.frameElement.radWindow;
          return oWindow;
        }  
        function closeWindow()
        {
            var currentWindow = GetRadWindow();
            //var result = document.getElementById('RadioButtonList1_0').checked;
            //currentWindow.argument = result;
            currentWindow.Close();
        }
        
        
        function closeWindowAndRegister()
        {
            var currentWindow = GetRadWindow();
            var result="Register";
            currentWindow.argument = result;
            
            currentWindow.Close(result);
            

        }
        
        function Login( result )
        {
           var currentWindow = GetRadWindow();
           currentWindow.argument = result;
           
           currentWindow.Close(result);
       }

        
</script>


		<form class="loginpopup" id="Form1" method="post" runat="server">
        <WebCtlIpsmarx:RadScriptManager ID="RadScriptManager1" runat="server">
            </WebCtlIpsmarx:RadScriptManager>

  <label for="fm_name"><asp:Label ID="Label3" runat="server" Text="Email" meta:resourcekey="Label3Resource1"></asp:Label></label><asp:textbox id="txtUserID" runat="server" CssClass="textbox" meta:resourcekey="txtUserIDResource1"></asp:textbox><br/>
  <label for="fm_pass"><asp:Label ID="Label4" runat="server" Text="Password" meta:resourcekey="Label4Resource1"></asp:Label></label><asp:textbox id="txtPassword" runat="server" CssClass="textbox" TextMode="Password" meta:resourcekey="txtPasswordResource1" ></asp:textbox>
  <WebCtlIpsmarx:RadCaptcha ID="RadCaptcha1" runat="server" ErrorMessage=" The code you entered is not valid." ProtectionMode="Captcha" EnableRefreshImage="true" Visible="false">
                                <CaptchaImage TextChars="LettersAndNumbers" TextLength="7" BackgroundNoise="Medium" LineNoise="Medium" FontWarp="Medium"  EnableCaptchaAudio="false"  />
                            </WebCtlIpsmarx:RadCaptcha>
  <div class="submit">
  <asp:button id="btnHLogin" runat="server" CssClass="Button" Text="Login" onclick="btnHLogin_Click" meta:resourcekey="btnHLoginResource1"></asp:button></div>
  <div class="lbox">
  <asp:CheckBox ID="chkRemember" runat="server" Font-Size="9pt" Font-Bold="False" ForeColor="#6F8CAE" TabIndex="4"></asp:CheckBox><asp:Label ID="lblRemember" runat="server" Text="Remember me on this computer." meta:resourcekey="lblRememberResource1" /><br />
  <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="8pt" NavigateUrl="~/ForgotPassword.aspx" meta:resourcekey="HyperLink1Resource1">Forgot Your Password ?</asp:HyperLink><br />
<asp:label id="lblError" runat="server" Font-Bold="True" ForeColor="Red" CssClass="error" meta:resourcekey="lblErrorResource1"></asp:label>
<asp:Label ID="Label6" runat="server" Text="Don't have an account?" Width="151px" meta:resourcekey="Label6Resource1" Visible="false"></asp:Label>&nbsp;
                                                                                    <asp:HyperLink ID="HyperLink2" Visible="false" runat="server" Font-Bold="True" Font-Names="Arial"
                                                                                        Font-Size="8pt" Font-Underline="True" onclick="closeWindowAndRegister(); return false;" NavigateUrl="register.aspx" meta:resourcekey="HyperLink2Resource1">Register with Us.</asp:HyperLink>
  
  
  	
            <asp:HiddenField ID="txtLoginAttempt" Value="0" runat="server" />
   </div>
            
		</form>
	
	</body>
</HTML>
