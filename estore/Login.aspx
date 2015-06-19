<%@ Page language="c#" Codebehind="Login.aspx.cs" AutoEventWireup="True" Inherits="CCEstore.Login" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="CaptchaWebControl.ascx" TagName="CaptchaWebControl" TagPrefix="uc1" %>
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
		<style type="text/css">BODY { BACKGROUND-COLOR: #ffffff }
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


		<form id="Form1" method="post" runat="server">
		
		
			<table width="774" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><img src="Images/greytop.png" width="774" height="13"></td>
										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td background="Images/bg_grey.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td ></td>
														<td valign="top" runat="server" id="tdCustomer"><table width="351" border="0" align="center" cellpadding="0" cellspacing="0">
																<tr>
																	<td colspan="3"><img src="images/1.png" width="351" height="133" border="0"></td>
																</tr>
																<tr>
																	<td width="11" height="11" background="images/orange/2.png">&nbsp;</td>
																	<td width="329" bgcolor="#ffffff">
																		<table width="100%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td>&nbsp;</td>
																			</tr>
																		</table>
																		<table width="100%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td><asp:label id="lblError" runat="server" Font-Bold="True" ForeColor="Red" CssClass="error" meta:resourcekey="lblErrorResource1"></asp:label></td>
																			</tr>
																		</table>
																		<table cellSpacing="0" cellPadding="3" width="100%" border="0">
																			<tr>
																				<td class="heading" colSpan="2">
                                                                                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Customer Login" meta:resourcekey="Label5Resource1"></asp:Label></td>
																			</tr>
																			<tr>
																				<td class="font" style="HEIGHT: 23px">
                                                                                    <asp:Label ID="Label3" runat="server" Text="Email" meta:resourcekey="Label3Resource1"></asp:Label></td>
																				<td style="HEIGHT: 23px">&nbsp;
																					<asp:textbox id="txtUserID" runat="server" CssClass="textbox" meta:resourcekey="txtUserIDResource1"></asp:textbox></td>
																			</tr>
																			<tr>
																				<td><span class="font">
                                                                                    <asp:Label ID="Label4" runat="server" Text="Password" meta:resourcekey="Label4Resource1"></asp:Label></span></td>
																				<td>&nbsp;
																					<asp:textbox id="txtPassword" runat="server" CssClass="textbox" TextMode="Password" meta:resourcekey="txtPasswordResource1" ></asp:textbox></td>
																			</tr>
																			
																			<tr>
																			<td colspan=2>
																			<center>
                                                                                <uc1:CaptchaWebControl ID="CaptchaWebControl_HomeService" Visible=False runat="server" />
																			</center>
																			</td>
																			</tr>
																			<tr>
																				<td align="center" colSpan="2"><asp:button id="btnHLogin" runat="server" CssClass="Button" Text="Login" onclick="btnHLogin_Click" meta:resourcekey="btnHLoginResource1"></asp:button>
																					&nbsp;&nbsp;
                                                                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial"
                                                                                        Font-Size="8pt" NavigateUrl="~/ForgotPassword.aspx" meta:resourcekey="HyperLink1Resource1">Forgot Your Password ?</asp:HyperLink></td>
																			</tr>
																			<TR>
																				<TD colspan="2">
                                                                                    <asp:Label ID="Label6" runat="server" Text="Don't have an account?" Width="151px" meta:resourcekey="Label6Resource1"></asp:Label>&nbsp;
                                                                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Arial"
                                                                                        Font-Size="8pt" Font-Underline="True"  NavigateUrl="register.aspx" meta:resourcekey="HyperLink2Resource1">Register with Us.</asp:HyperLink></TD>
																			</TR>
																		</table>

																		
																		<table width="100%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td><img src="Images/pix.gif" width="1" height="6"></td>
																			</tr>
																		</table>
																	</td>
																	<td width="11" height="11" background="images/orange/6.png">&nbsp;</td>
																</tr>
																<tr>
																	<td><img src="images/orange/3.png" width="11" height="11"></td>
																	<td background="images/orange/4.png"><img src="images/orange/4.png" width="11" height="11"></td>
																	<td><img src="images/orange/5.png" width="11" height="11"></td>
																</tr>
															</table>
														</td>
														<td width="20">&nbsp;</td>
														<td valign="top" runat="server" id="tdCallingCard">
														
														<table width="351" border="0" align="center" cellpadding="0" cellspacing="0">
																<tr>
																	<td colspan="3"><img src="images/2.png" width="352" height="133" border="0"></td>
																</tr>
																<tr>
																	<td width="11" height="11" background="images/green/2.png">&nbsp;</td>
																	<td width="330" bgcolor="#ffffff"><table cellSpacing="0" cellPadding="5" width="100%" border="0">
																			<tr>
																				<td class="heading" colSpan="2">
																					<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
																						<TR>
																							<TD height="25">
																								<asp:label id="lblErrorC" runat="server" ForeColor="Red" Font-Bold="True" CssClass="error" meta:resourcekey="lblErrorCResource1"></asp:label></TD>
																						</TR>
																					</TABLE>
                                                                                    <asp:Label ID="Label7" runat="server" Text="Calling Card Login " meta:resourcekey="Label7Resource1"></asp:Label></td>
																			</tr>
																			<TR>
																			</TR>
																			<tr>
																				<td style="HEIGHT: 23px"><span class="font">
                                                                                    <asp:Label ID="lblPin" runat="server" Text="Pin" meta:resourcekey="lblPinResource1"></asp:Label></span></td>
																				<td style="HEIGHT: 23px">&nbsp;&nbsp;
																					<asp:textbox id="txtPin" runat="server" CssClass="textbox" TextMode="Password" meta:resourcekey="txtPinResource1"></asp:textbox>
																					<asp:textbox id="txtSerial" runat="server" CssClass="textbox" Visible="False" Width="17px" meta:resourcekey="txtSerialResource1"></asp:textbox>
                                                                                    <asp:Label ID="Label2" runat="server" Text="Serial" Visible="False" meta:resourcekey="Label2Resource1"></asp:Label></td>
																			</tr>
																			<tr>
																				<td class="font" style="HEIGHT: 23px">
                                                                                    </td>
																				<td>&nbsp;
																					</td>
																			</tr>
																			
																				<tr>
																			<td colspan=2>
																			<center>
																			<uc1:CaptchaWebControl ID="CaptchaWebControl_CallingCard" Visible=False runat="server" />
																			
																			</center>
																			</td>
																			</tr>
																			
																			<tr>
																				<td align="center" colSpan="2">&nbsp;&nbsp;
																					<asp:button id="btnCLogin" runat="server" CssClass="button" Text="Login" onclick="btnCLogin_Click" meta:resourcekey="btnCLoginResource1"></asp:button></td>
																			</tr>
																		</table>
																		<table width="100%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td width="54%"></td>
																				<td width="46%"></td>
																			</tr>
																		</table>
																	</td>
																	<td width="11" height="11" background="images/green/6.png">&nbsp;</td>
																</tr>
																<tr>
																	<td><img src="images/green/3.png" width="11" height="11"></td>
																	<td width="11" height="11" background="images/green/4.png"><img src="images/green/4.png" width="11" height="11"></td>
																	<td><img src="images/green/5.png" width="11" height="11"></td>
																</tr>
															</table>
														</td>
														<td></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><img src="Images/greybot.png" width="774" height="13"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

			
            <asp:HiddenField ID="txtLoginAttempt" Value="0" runat="server" />
            <WebCtlIpsmarx:RadScriptManager ID="RadScriptManager1" runat="server">
            </WebCtlIpsmarx:RadScriptManager>
		</form>
	
	</body>
</HTML>
