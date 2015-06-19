<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CD_ChangePassword.aspx.cs"
    Inherits="CCEstore.CD_ChangePassword" MasterPageFile="~/MainService.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600"  strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table id="Table4" align="center" border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tr height="30px">
                        <td class="fontnormal" colspan="3" align="center">
                            <table border="0" cellpadding="5" cellspacing="0" width="100%" height="30px">
                                <tr>
                                    <td width="100%" class="heading">
                                        <asp:Label ID="Label7" runat="server" Text="Change Password" meta:resourcekey="Label7Resource1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <!-- <hr /> -->
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="left">
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                                meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%">
                            &nbsp;
                        </td>
                        <td align="left" class="fontnormal" width="30%">
                            <asp:Label ID="Label8" runat="server" Text="Email(*)"></asp:Label>
                        </td>
                        <td width="70%" align="left">
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox" meta:resourcekey="txtOldPasswordResource1"
                                Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%">
                        </td>
                        <td align="left" class="fontnormal" width="30%">
                            <asp:Label ID="Label2" runat="server" Text="Enter Old Password (*)" meta:resourcekey="Label2Resource1"></asp:Label>
                        </td>
                        <td width="70%" align="left">
                            <asp:TextBox ID="txtOldPassword" runat="server" CssClass="textbox" TextMode="Password"
                                meta:resourcekey="txtOldPasswordResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%">
                        </td>
                        <td align="left" class="fontnormal">
                            <asp:Label ID="Label4" runat="server" Text="Enter New Password (*)" meta:resourcekey="Label4Resource1"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="textbox" TextMode="Password"
                                meta:resourcekey="txtNewPasswordResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%">
                        </td>
                        <td align="left" class="fontnormal">
                            <asp:Label ID="Label5" runat="server" Text="Re-Enter New Password (*)" meta:resourcekey="Label5Resource1"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtRPassword" runat="server" CssClass="textbox" TextMode="Password"
                                meta:resourcekey="txtRPasswordResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%">
                        </td>
                        <td>
                        </td>
                        <td align="left">
                            <asp:Button ID="btnChange" runat="server" CssClass="Button" Text="Update" />
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
