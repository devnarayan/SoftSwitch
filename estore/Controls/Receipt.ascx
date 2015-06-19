<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Receipt.ascx.cs" Inherits="SipKernel.Controls.OnlinePayment.Receipt" %>
<table align="center">
    <tr>
        <td>
            <asp:Panel ID="Panel_Logo" runat="server" Visible="False" meta:resourcekey="Panel_LogoResource1">
                <table width="774" height="107" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td background="images/bg_white.png">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="73%">
                                        <img src="Images/logo_company.gif" alt="CCEstore.com" hspace="10">
                                    </td>
                                    <td width="27%">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <div class="module" style="width: 700px">
                <div class="container">
                    <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                    <div class="content">
                        <!-- content -->
                        <!-- START INNER CONTENT -->
                        <center>
                            <table id="tblGoogleCheckout" runat="server" visible="false">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="Your transaction is in process. The receipt will be sent to you once it's processed."
                                            meta:resourcekey="Label1Resource1"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table id="tblrlegular" runat="server">
                                <tr>
                                    <td>
                                        <table cellspacing="0" cellpadding="0" border="0">
                                            <tr>
                                                <td style="color: red">
                                                    <br>
                                                    &nbsp;<asp:Label ID="lblPrintMessage" runat="server" Text="*Print this receipt for your records"
                                                        meta:resourcekey="lblPrintMessageResource1"></asp:Label>
                                                    <font color="red">
                                                        <br>
                                                        &nbsp;</font>
                                                </td>
                                            </tr>
                                        </table>
                                        <table id="tbBeenProcessed" runat="server" visible="false" cellspacing="0" cellpadding="5"
                                            border="0">
                                            <tr>
                                                <td>
                                                    <strong>
                                                        <asp:Label ID="lblBeenProcessedLine1" runat="server" Text="The payment is currently being processed."
                                                            meta:resourcekey="lblBeenProcessedLine1Resource1"></asp:Label></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <strong>
                                                        <asp:Label ID="lblBeenProcessedLine2" runat="server" Text="Please verify in a few minutes if the payment was approved and processed."
                                                            meta:resourcekey="lblBeenProcessedLine2Resource1"></asp:Label></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <strong>
                                                        <asp:Label ID="lblBeenProcessedLine3" runat="server" Text="To verify, login with your account and click on 'Payment History'."
                                                            meta:resourcekey="lblBeenProcessedLine3Resource1"></asp:Label></strong>
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="0" cellpadding="5" border="0">
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="Right">
                                                    <strong>
                                                        <asp:Label ID="lblDescription" runat="server" Text="Description:" meta:resourcekey="lblDescriptionResource1"></asp:Label></strong>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblDesc" runat="server" CssClass="fontnormal" meta:resourcekey="lblDescResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="Right">
                                                    <strong>
                                                        <asp:Label ID="lblTransactionStatus" runat="server" Text="Transaction Status:" meta:resourcekey="lblTransactionStatusResource1"></asp:Label></strong>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblStatus" runat="server" CssClass="fontnormal" meta:resourcekey="lblStatusResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="Right">
                                                    <strong>
                                                        <asp:Label ID="lblReferenceID" runat="server" Text="Reference ID:" meta:resourcekey="lblReferenceIDResource1"></asp:Label></strong>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblTrnasID" runat="server" CssClass="fontnormal" meta:resourcekey="lblTrnasIDResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="Right">
                                                    <strong>
                                                        <asp:Label ID="lblDateTime" runat="server" Text="Date / Time:" meta:resourcekey="lblDateTimeResource1"></asp:Label></strong>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblDate" runat="server" CssClass="fontnormal" meta:resourcekey="lblDateResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="Right">
                                                    <strong>
                                                        <asp:Label ID="lblAmountLabel" runat="server" Text="Amount:" meta:resourcekey="lblAmountLabelResource1"></asp:Label></strong>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblAmount" runat="server" CssClass="fontnormal" meta:resourcekey="lblAmountResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="Right">
                                                    <strong>
                                                        <asp:Label ID="lblTransactionID" runat="server" Text="Transaction ID:" meta:resourcekey="lblTransactionIDResource1"></asp:Label></strong>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblApproveCdoe" runat="server" CssClass="fontnormal" meta:resourcekey="lblApproveCdoeResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2">
                                                    <table class="style1" id="tblInternationalRecharge" runat="server" visible="false">
                                                        <tr>
                                                            <td>
                                                    <strong>International&nbsp; Recharge ID:</strong>
                                                            </td>
                                                            <td>
                                                    <asp:Label ID="lblInternationalRechargeID" runat="server" CssClass="fontnormal"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <strong>International Recharge Status:</strong>
                                                            </td>
                                                            <td>                                                               
                                                                <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                                                                    <ContentTemplate>
                                                                        <asp:Timer runat="server" ID="Timer1" Interval="10000">
                                                                        </asp:Timer>
                                                                         <asp:Label ID="lblInternationalRechargeStatus" runat="server" CssClass="fontnormal"></asp:Label>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <table id="tbPIN" runat="server" cellpadding="8" cellspacing="0" border="1">
                                                        <tr>
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <strong>
                                                                                <asp:Label ID="lblPin" runat="server" meta:resourcekey="lblPinResource1">Pin:</asp:Label></strong>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Label ID="lblPinNo" runat="server" CssClass="fontnormal" meta:resourcekey="lblPinNoResource1"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="Right">
                                                                            <asp:Label ID="lblSerial" runat="server" Font-Bold="True" meta:resourcekey="lblSerialResource1">Serial Number:</asp:Label>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Label ID="lblSerialNo" runat="server" CssClass="fontnormal" meta:resourcekey="lblSerialNoResource1"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <asp:Panel ID="Panel_Username_Password" runat="server" Visible="False" meta:resourcekey="Panel_Username_PasswordResource1">
                                                                    <table>
                                                                        <tr>
                                                                            <td align="Right">
                                                                                <strong>
                                                                                    <asp:Label ID="lblUsername" runat="server" meta:resourcekey="lblUsernameResource1">Username:</asp:Label></strong>
                                                                            </td>
                                                                            <td align="left">
                                                                                <asp:Label ID="lblUsernameNo" runat="server" CssClass="fontnormal" meta:resourcekey="lblUsernameNoResource1"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="Right">
                                                                                <asp:Label ID="lblPassword" runat="server" Font-Bold="True" meta:resourcekey="lblPasswordResource1">Password:</asp:Label>
                                                                            </td>
                                                                            <td align="left">
                                                                                <asp:Label ID="lblPasswordNo" runat="server" CssClass="fontnormal" meta:resourcekey="lblPasswordNoResource1"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="lblSIPTrunkingMsg" runat="server" ForeColor="Red" 
                                                        Font-Bold="True" Font-Italic="True" Visible="False">Note: The route settings and DIDs need to be congfigured in order to use the SIP service</asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <br />
                                                    <input id="btnPrint" runat="server" class="Button" type="button" value="Print" meta:resourcekey="btnPrintResource1"
                                                        onclick="window.print();">
                                                    <%-- <asp:button id="btnLogin" runat="server" Text="Continue" CssClass="button"></asp:button> --%>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </center>
                        <!-- END INNER CONTENT -->
                        <!-- content ends -->
                    </div>
                    <!--[if IE]></v:roundrect><![endif]-->
                    <div class="ft">
                    </div>
                </div>
            </div>
        </td>
    </tr>
</table>
