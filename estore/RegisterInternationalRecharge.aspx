<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" CodeBehind="RegisterInternationalRecharge.aspx.cs"
    Inherits="CCEstore.RegisterInternationalRecharge" MasterPageFile="main.master"
    meta:resourcekey="PageResource1" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="~/Controls/InternationalRecharge.ascx" %>
<%@ Register Src="wucOnlineDepositAD.ascx" TagName="ad" TagPrefix="cc" %>
<%@ Register Src="Controls/PaymentForm.ascx" TagName="creditcardform" TagPrefix="cc" %>
<%@ Register TagPrefix="cc" TagName="RegisterCustomer" Src="RegisterCustomer.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td class="errorbar" colspan="2">
                <asp:Literal ID="lblError" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <cc:RegisterCustomer ID="RegisterCustomer" ShowAutoRecharge="false" ShowSaveCreditCardPanel="false" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <cc:creditcardform ID="CreditCardForm" runat="server" ShowVoucher="true" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <cc:tag ID="ucInternationalRecharge" runat="server" />
            </td>
        </tr>
        <tr runat="server" visible="true">
            <td align="center">
                <table width="100%">
                    <tr>
                        <td width="50%" align="center" id="tdAdd2Cart" runat="server">
                            &nbsp;
                        </td>
                        <td align="center">
                            <asp:Button ID="btnPurchase" runat="server" Text="Recharge" Enabled="true" CssClass="Button"
                                OnClientClick="return confirm('Please make sure the information you entered in the amount and phone number is correct becuase once you confirm you cannot revert the mobile top up transaction.')"
                                meta:resourcekey="btnPurchaseResource1" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
