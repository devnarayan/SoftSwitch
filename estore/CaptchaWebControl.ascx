<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CaptchaWebControl.ascx.cs" Inherits="CCEstore.CaptchaWebControl" %>

<table cellpadding="0" cellspacing="0" border="0">
<tr><td>
    <img src="JpegImage.aspx">
			</td>
			<td nowrap>&nbsp;&nbsp;&nbsp;</td>
			<td class="fontnormal">
                <asp:Label ID="Label1" runat="server" Text="Please enter the code:" meta:resourcekey="Label1Resource1"></asp:Label><br>
				<asp:TextBox CssClass="textbox" id="CodeNumberTextBox" runat="server"  Width="50px" meta:resourcekey="CodeNumberTextBoxResource1"></asp:TextBox>
		</td></tr>	
			</table>