<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OTP.ascx.cs" Inherits="CCEstore.Controls.OTP" %>
<style type="text/css">
    BODY
    {
        background: #E3E3E3;
    }
    .loginpopup
    {
        background: transparent url(images_style/loginboxmiddle.png) no-repeat left top;
        height: 139px;
        padding-top: 0px !important;
        color: #FFF;
        width: 427px;
    }
    .loginpopup label {
	display: inline !important; 
	float: none; 
	width: auto !important; 
	text-align: right;
	margin: 0 0px 0 0 !important; 
	padding-bottom: 0px !important;
	clear: left;  
	color: #FFF;
}
.loginpopup .textbox {
	float: none !important; 
	display: inline !important; 
	width: 65%;
	margin-bottom: 0px !important;  
	padding: 3px;
    background: #E2F0FF;
}
</style>
<table id="tblGeneral" cellpadding="3" cellspacing="5" width="100%" runat="server"
    class="loginpopup">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMessage" runat="server" EnableViewState="False">As a part of our security measures, we have enabled the use of an OTP (One-Time Password) for your current session. The OTP is sent to your email address.</asp:Label>
            <asp:Label ID="lblToMsg" runat="server" Text="The OTP is sent to: " 
                Visible="False"></asp:Label>
            <asp:Label ID="lblEmailTO" runat="server" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblError0" runat="server" EnableViewState="False">One-Time Password</asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:TextBox runat="server" ID="txtOTP" CssClass="TextBox" Width="150px" />
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="2">
            
            <asp:CheckBox ID="chkTrust" runat="server" Text="Trust this computer and do not ask for OTP on this computer. " />
            
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;
            <asp:Button ID="btnHLogin" runat="server" CssClass="Button" Text="Login" meta:resourcekey="btnHLoginResource1" />
            <asp:ImageButton ImageUrl="~/Images/Login/LoginButton.jpg" Width="64px" Height="22px"
                Visible="false" ID="btnLogin" TabIndex="5" runat="server" CssClass="button" Text="LOGON"
                BorderWidth="0px"></asp:ImageButton>
            &nbsp;
            <asp:Label ID="lblError" runat="server" ForeColor="Red" EnableViewState="False" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    </table>
