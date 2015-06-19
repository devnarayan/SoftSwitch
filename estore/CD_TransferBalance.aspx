<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CD_TransferBalance.aspx.cs"
    Inherits="CCEstore.CD_TransferBalance" MasterPageFile="~/MainService.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600"  strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%" border="0" cellpadding="5" cellspacing="2" bgcolor="#ffffff">
                    <tr>
                        <td align="center" colspan="2" class="heading">
                            <asp:Label ID="Label1" runat="server" Text="Transfer Balance From Calling Card" meta:resourcekey="Label1Resource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True"    
                                EnableViewState="false" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="fontStrong" width="160px">
                            <asp:Label ID="Label6" runat="server" Text="Current Balance" meta:resourcekey="Label6Resource1"></asp:Label>
                            <asp:Label ID="lblPin" Visible="false" runat="server"></asp:Label>
                            <asp:Label ID="lblCurrencySymbol1" runat="server" Text="Label" meta:resourcekey="lblCurrencySymbol2Resource1"></asp:Label>
                            :
                        </td>
                        <td class="fontnormal" width="160px" style="width: 320px">
                            <asp:Label ID="lblbalance" runat="server" meta:resourcekey="lblbalanceResource1"
                                Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="fontStrong" width="160px">
                            <asp:Label ID="Label7" runat="server" Text="Calling Card Pin:" meta:resourcekey="Label7Resource1"></asp:Label>
                        </td>
                        <td class="fontnormal" width="160px" style="width: 320px">
                            <asp:TextBox ID="txtFromPin" runat="server" CssClass="textbox" Width="165px" meta:resourcekey="txtSearchForResource1"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="fontStrong" width="160px">
                            &nbsp;
                        </td>
                        <td class="fontnormal" width="160px" style="width: 320px">
                            <asp:Label ID="Label8" runat="server" ForeColor="Blue" Text="Note: Enter the calling card pin from which you are transfering the balance from. Full amount of the pin will be used"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="fontStrong" width="160px">
                            <asp:Label ID="Label2" runat="server" Text="Type the code from the image"></asp:Label>
                            &nbsp;
                        </td>
                        <td class="fontnormal" width="160px" style="width: 320px">
                            <WebCtlIpsmarx:RadCaptcha ID="RadCaptcha1" runat="server" ErrorMessage=" The code you entered is not valid." ProtectionMode="Captcha" EnableRefreshImage="true">
                                <CaptchaImage TextChars="LettersAndNumbers" TextLength="7" BackgroundNoise="Low" LineNoise="Low" FontWarp="Low"  EnableCaptchaAudio="false"  />
                            </WebCtlIpsmarx:RadCaptcha>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnTransfer" runat="server" CausesValidation="True   " CssClass="Button"
                                Text="Transfer Balance" Width="130px" />
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
