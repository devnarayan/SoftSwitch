<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMakePayment.ascx.cs"
    Inherits="SipKernel.Controls.OnlinePayment.wucMakePayment" %>
<%@ Register TagPrefix="cc" TagName="CreditCardForm" Src="~/Controls/OnlinePayment/PaymentForm.ascx" %>
<%@ Register TagPrefix="cc" TagName="AD" Src="~/Controls/OnlinePayment/wucOnlineDepositAD.ascx" %>
<table style="table-layout: fixed;">
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td colspan="3" class="heading">
                        <asp:Label ID="lblTitle" runat="server" Text="Make Payment" meta:resourcekey="lblTitleResource1"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="3">
                        <!-- <hr /> -->
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                            meta:resourcekey="lblErrorResource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="30%" colspan="2">
                        <asp:Label ID="lblPurchase" runat="server" CssClass="bg_blue" Font-Bold="False" Text="Purchase"
                            meta:resourcekey="lblPurchaseResource1"></asp:Label>
                        (<%= PayCentral.Library.General.GetCurrencySymbol() %>)
                    </td>
                    <td width="70%">
                        <WebCtlIpsmarx:RadComboBox ID="ddlPayment" runat="server" meta:resourcekey="ddlPaymentResource1">
                        </WebCtlIpsmarx:RadComboBox>
                        <asp:TextBox ID="txtPayment" runat="server" CssClass="textbox" meta:resourcekey="txtPaymentResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    </td>
                    <td>
                        <cc:AD ID="AD" runat="server" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <cc:CreditCardForm ID="CreditCardForm" runat="server" ShowVoucher="true" />
        </td>
    </tr>
    <tr align="center">
        <td align="center">
            <asp:Button ID="btnPurchase" runat="server" Text="Make Payment" CssClass="btn_style"
                OnClick="btnPurchase_Click" meta:resourcekey="btnPurchaseResource1" />
        </td>
    </tr>
</table>
