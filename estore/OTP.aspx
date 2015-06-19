<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OTP.aspx.cs" Inherits="CCEstore.OTP" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="~/Controls/OTP.ascx" TagName="OTP" TagPrefix="uc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Login</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="Css/CCEstore.css" type="text/css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    
</head>
<body leftmargin="0" topmargin="0" onload="document.all('txtUserID').focus();" ms_positioning="GridLayout"
    background="Images/bg_grey.jpg">
    <script type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow)
                oWindow = window.radWindow;
            else if (window.frameElement.radWindow)
                oWindow = window.frameElement.radWindow;
            return oWindow;
        }
        function closeWindow() {
            var currentWindow = GetRadWindow();
            //var result = document.getElementById('RadioButtonList1_0').checked;
            //currentWindow.argument = result;
            currentWindow.Close();
        }


        function closeWindowAndRegister() {
            var currentWindow = GetRadWindow();
            var result = "Register";
            currentWindow.argument = result;

            currentWindow.Close(result);


        }

        function Login(result) {
            var currentWindow = GetRadWindow();
            currentWindow.argument = result;

            currentWindow.Close(result);
        }

        
    </script>
    <form class="loginpopup" id="Form1" method="post" runat="server">
    <WebCtlIpsmarx:RadScriptManager ID="RadScriptManager1" runat="server">
    </WebCtlIpsmarx:RadScriptManager>
    <uc1:OTP ID="ucOTP" runat="server">
    </uc1:OTP>
    </form>
</body>
</html>
