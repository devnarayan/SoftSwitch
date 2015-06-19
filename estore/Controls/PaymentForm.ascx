<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PaymentForm.ascx.cs"
    Inherits="SipKernel.Controls.OnlinePayment.PaymentForm" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<!-- table width="100%" border="0" bgcolor="#f4f4f4" cellspacing="0" cellpadding="8">
      <tr><td>
      <table cellspacing="0" cellpadding="4" -->
<script type="text/javascript" language="javascript">


    function openTerms() {
        var OLT = null;
        OLT = window.open('Terms.aspx', 'OLT', 'toolbar=no, width=700, height=650, left=100, top=0,status=yes, scrollbars=yes');
        OLT.focus();
        return false;
    }
         
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="white" id="maintable"
    runat="server" style="table-layout: fixed;">
    <tr>
        <td width="100%" align="left" height="30px">
            <strong>&nbsp;&nbsp;<asp:Label ID="Label21" runat="server" Text="Payment Infomation"
                meta:resourcekey="Label21Resource1"></asp:Label>
            </strong>
        </td>
    </tr>
    <tr>
        <td>
            <!-- <hr /> -->
        </td>
    </tr>
    <tr>
        <td width="100%">
            <asp:Panel ID="pnlGateWayOptions" Width="100%" runat="server" Visible="False" meta:resourcekey="pnlGateWayOptionsResource1">
                <table width="100%">
                    <tr>
                        <td><!-- deleted CssClass="error" Font-Bold="True" ForeColor="Red" from literal lblMessage-->
                            <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <table width="100%" border="0">
                                        <tr>
                                            <td width="160">
                                                <asp:Label ID="Label30" runat="server" Text="First Name (*)" meta:resourcekey="Label30Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFirstNameM" runat="server" CssClass="textbox" Width="150px" meta:resourcekey="txtFirstNameMResource1"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label39" runat="server" Text="Middle Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtMiddleName" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label32" runat="server" meta:resourcekey="Label32Resource1" Text="Last Name (*)"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtLastNameM" runat="server" CssClass="textbox" meta:resourcekey="txtLastNameMResource1"
                                                    Width="150px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label31" runat="server" Text="Email (*)" meta:resourcekey="Label31Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEmailM" runat="server" CssClass="textbox" Width="150px" meta:resourcekey="txtEmailMResource1"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr id="trTelephoneNumber" runat="server">
                                            <td>
                                                <asp:Label ID="Label34" runat="server" Text="Telephone Number (*)" meta:resourcekey="Label34Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTelephoneM" runat="server" CssClass="textbox" Width="150px" meta:resourcekey="txtTelephoneMResource1"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*"
                                                    ControlToValidate="txtTelephoneM" ValidationExpression="^[0-9+()#.\s/ext-]+$"></asp:RegularExpressionValidator>
                                                <!-- 2012.08.21 D-01413 David Y -->
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <!-- <hr /> -->
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:Panel ID="pnlddlPaymentGateways" Width="100%" runat="server" meta:resourcekey="pnlddlPaymentGatewaysResource1">
                                <table width="100%" border="0">
                                    <tr>
                                        <td width="160px">
                                            <b>
                                                <asp:Label ID="lblPaymentProvider" runat="server" Text="Payment Method" meta:resourcekey="lblPaymentProviderResource1"></asp:Label></b>
                                        </td>
                                        <td>
                                            <!-- 2012.08.18 David Y D-01409 -->
                                            <WebCtlIpsmarx:RadComboBox ID="ddlPaymentGateways" runat="server" Width="150px" OnSelectedIndexChanged="ddlPaymentGateways_SelectedIndexChanged"
                                                CausesValidation="false" AutoPostBack="True" meta:resourcekey="ddlPaymentGatewaysResource3">
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pnlRadioCreditCard" Width="100%" runat="server" Visible="False" meta:resourcekey="pnlRadioCreditCardResource1">
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <asp:RadioButton AutoPostBack="True" ID="rdbCreditCard" GroupName="rdbGateWaySelection"
                                                runat="server" OnCheckedChanged="rdbCreditCard_CheckedChanged" meta:resourcekey="rdbCreditCardResource1" />
                                        </td>
                                        <td class="fontnormal">
                                            <b>
                                                <asp:Label ID="Label5" runat="server" meta:resourcekey="Label5Resource1" Text="Pay By Visa, MasterCard, or American Express"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pnlRadioPayPal" Width="100%" runat="server" Visible="False" meta:resourcekey="pnlRadioPayPalResource1">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton AutoPostBack="True" ID="rdbPayPal" GroupName="rdbGateWaySelection"
                                                runat="server" OnCheckedChanged="rdbPayPal_CheckedChanged" meta:resourcekey="rdbPayPalResource1" />
                                        </td>
                                        <td class="fontnormal">
                                            <b>
                                                <asp:Label ID="Label6" runat="server" Text="Pay using PayPal" meta:resourcekey="Label6Resource1"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pnlRadioGoogle" Width="100%" runat="server" Visible="False" meta:resourcekey="pnlRadioGoogleResource1">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton AutoPostBack="True" ID="rdbGoogle" GroupName="rdbGateWaySelection"
                                                runat="server" OnCheckedChanged="rdbGoogle_CheckedChanged" meta:resourcekey="rdbGoogleResource1" />
                                        </td>
                                        <td class="fontnormal">
                                            <b>
                                                <asp:Label ID="Label11" runat="server" Text="Pay using Google Checkout" meta:resourcekey="Label1Resource1"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Panel ID="pnlVoucher" runat="server" Visible="False" Width="100%">
                                    <table width="100%">
                                        <tr>
                                            <td colspan="4">
                                                <strong>
                                                    <asp:Label ID="Label33" runat="server" Text="Note : Full Amount of the Voucher will be used."></asp:Label>
                                                </strong>
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <td width="160px">
                                                <asp:Label ID="Label15" runat="server" Text="Voucher Pin (*)"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtVoucherPin" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                            <td class="fontnormal">
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlPayPal" runat="server" Visible="False" Width="100%" meta:resourcekey="pnlPayPalResource1">
                                    <table>
                                        <tr valign="middle">
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <img src="Images/paypal.jpg" />
                                            </td>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="fontnormal">
                                                <b>
                                                    <asp:Label ID="Label22" runat="server" Text="Save time. Check out securely. Pay without sharing your financial information."
                                                        meta:resourcekey="Label22Resource1"></asp:Label></b>
                                            </td>
                                        </tr>
                                        <tr id="trpaypalfee" runat="server" visible="false">
                                            <td colspan="4">
                                                <asp:Label ID="Label35" runat="server" ForeColor="Red" Font-Bold="true" Text="Note: Additional 2.5% Paypal fees will be applied to all payments"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlGoogle" runat="server" Visible="False" Width="100%" meta:resourcekey="pnlGoogleResource1">
                                    <table>
                                        <tr>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <img src="Images/google_checkout.gif" />
                                            </td>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="fontnormal">
                                                <b>
                                                    <asp:Label ID="Label23" runat="server" Text="You will be redirected to Google Checkout."
                                                        meta:resourcekey="Label23Resource1"></asp:Label></b>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlBarClayCard" runat="server" Visible="False" Width="100%" meta:resourcekey="pnlGoogleResource100">
                                    <table>
                                        <tr>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <img src="Images/barclaycard.gif" />
                                            </td>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="fontnormal">
                                                <b>
                                                    <asp:Label ID="Label36" runat="server" Text="You will be redirected to BarClayCard Checkout."></asp:Label></b>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlMoneybookers" runat="server" Visible="False" Width="100%">
                                    <table>
                                        <tr>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <img src="Images/mb-logo-the-future.png" />
                                            </td>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="fontnormal">
                                                <b>
                                                    <asp:Label ID="Label37" runat="server" Text="You will be redirected to Moneybookers(SKRILL) Checkout."></asp:Label></b>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlMoneris" runat="server" Visible="False" Width="100%">
                                    <table>
                                        <tr>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <img src="Images/moneris-logo.gif" />
                                            </td>
                                            <td nowrap>
                                                &nbsp;&nbsp;
                                            </td>
                                            <td class="fontnormal">
                                                <b>
                                                    <asp:Label ID="Label38" runat="server" Text="You will be redirected to Moneris(eSelect Plus) Checkout."></asp:Label></b>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <!-- PayPal Pro -->
                                <asp:Panel ID="pnlPayPalPro" runat="server" Visible="False" Width="100%" meta:resourcekey="pnlPayPalProResource1">
                                    <asp:UpdatePanel ID="UpdatePanelPPP" runat="server">
                                        <ContentTemplate>
                                            <table width="100%" border="0">
                                                <tr>
                                                    <td colspan="4">
                                                        <img src="images\PayPalPro.gif" />
                                                        <asp:Label ID="Label14" runat="server" CssClass="fontnormal" Font-Bold="True" Font-Italic="True"
                                                            Text="Check out with PayPal Pro. The easier, the safer way to pay." Width="423px"
                                                            meta:resourcekey="Label14Resource1"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%" border="0" id="tblPayPalPro" runat="server">
                                                <tr id="Tr1" runat="server">
                                                    <td id="Td1" width="160px" runat="server">
                                                        <asp:Label ID="Label1" runat="server" Text="Credit Card Type (*)" meta:resourcekey="Label16Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td2" width="160px" runat="server">
                                                        <WebCtlIpsmarx:RadComboBox ID="ddlCTypesPPP" runat="server" Width="150px">
                                                            <Items>
                                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="American Express" Value="1" />
                                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Discover" Value="2" />
                                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Master Card" Value="3" />
                                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Visa Card" Value="4" Selected="True" />
                                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Other" Value="5" />
                                                            </Items>
                                                        </WebCtlIpsmarx:RadComboBox>
                                                    </td>
                                                    <td id="Td3" width="100px" runat="server">
                                                    </td>
                                                    <td id="Td4" runat="server">
                                                    </td>
                                                </tr>
                                                <tr id="Tr2" runat="server">
                                                    <td id="Td5" runat="server">
                                                        <asp:Label ID="Label2" runat="server" Text="Card Number (*)" meta:resourcekey="Label19Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td6" runat="server">
                                                        <asp:TextBox ID="txtCNumberPPP" runat="server" CssClass="textbox" Width="150px" MaxLength="16"></asp:TextBox>
                                                    </td>
                                                    <td id="Td7" runat="server">
                                                    </td>
                                                    <td id="Td8" runat="server">
                                                    </td>
                                                </tr>
                                                <tr id="Tr3" runat="server">
                                                    <td id="Td9" runat="server">
                                                        <asp:Label ID="Label3" runat="server" Text="Expiration (*)" meta:resourcekey="Label18Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td10" runat="server">
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                            <ContentTemplate>
                                                                <asp:TextBox ID="txtCExpirePPP" runat="server" Columns="4" MaxLength="4" CssClass="textbox"
                                                                    Width="60px"></asp:TextBox>(MMYY)
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCExpirePPP"
                                                                    ErrorMessage="Please Enter Valid expire date" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                                                                <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                                                    Enabled="True" FilterType="Numbers" TargetControlID="txtCExpirePPP">
                                                                </ajaxIPSmarx:FilteredTextBoxExtender>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </td>
                                                    <td id="Td11" runat="server">
                                                        <asp:Label ID="Label4" runat="server" Text="Security Code (*)" meta:resourcekey="Label4Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td12" runat="server">
                                                        <asp:TextBox ID="txtSecCodePPP" runat="server" CssClass="textbox" MaxLength="5" meta:resourcekey="txtSecCodeResource1"
                                                            Width="60px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr id="Tr4" runat="server">
                                                    <td id="Td13" runat="server">
                                                        <asp:Label ID="Label7" runat="server" Text="Street Line 1 (*)" meta:resourcekey="Label7Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td14" colspan="3" runat="server">
                                                        <asp:TextBox ID="txtStreetLine1" runat="server" Width="435px" CssClass="textbox"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr id="Tr5" runat="server">
                                                    <td id="Td15" runat="server">
                                                        <asp:Label ID="Label8" runat="server" Text="Street Line 2" meta:resourcekey="Label8Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td16" colspan="3" runat="server">
                                                        <asp:TextBox ID="txtStreetLine2" runat="server" Width="435px" CssClass="textbox"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr id="Tr6" runat="server">
                                                    <td id="Td17" runat="server">
                                                        <asp:Label ID="Label9" runat="server" Text="City (*)" meta:resourcekey="Label9Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td18" runat="server">
                                                        <asp:TextBox ID="txtCity" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                                    </td>
                                                    <td id="Td19" runat="server">
                                                        <asp:Label ID="Label12" runat="server" Text="State (*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td20" runat="server">
                                                        <WebCtlIpsmarx:RadComboBox ID="ddlProvinces" runat="server" Height="150px">
                                                        </WebCtlIpsmarx:RadComboBox>
                                                    </td>
                                                </tr>
                                                <tr id="Tr7" runat="server">
                                                    <td id="Td21" runat="server">
                                                        <asp:Label ID="Label13" runat="server" Text="Zip Code (*)" meta:resourcekey="Label13Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td22" runat="server">
                                                        <asp:TextBox ID="txtZipCode" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                                    </td>
                                                    <td id="Td23" runat="server">
                                                        <asp:Label ID="Label10" runat="server" Text="Country (*)" meta:resourcekey="Label10Resource1"></asp:Label>
                                                    </td>
                                                    <td id="Td24" runat="server">
                                                        <WebCtlIpsmarx:RadComboBox ID="ddlCountries" runat="server" Height="150px">
                                                        </WebCtlIpsmarx:RadComboBox>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chkExpress" runat="server" Text="Express CheckOut"
                                                            AutoPostBack="True" OnCheckedChanged="chkExpress_CheckedChanged" Visible="true"
                                                            meta:resourcekey="chkExpressResource1" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="chkExpress" EventName="CheckedChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                                <asp:Panel ID="pnlCreditCard" runat="server" Visible="False" Width="100%" meta:resourcekey="pnlCreditCardResource1">
                                    <table width="100%" border="0">
                                        <tr>
                                            <td width="160px">
                                                <asp:Label ID="Label16" runat="server" Text="Credit Card Type (*)" meta:resourcekey="Label16Resource1"></asp:Label>
                                            </td>
                                            <td colspan="160px">
                                                <WebCtlIpsmarx:RadComboBox ID="ddlCTypes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCTypes_SelectedIndexChanged"
                                                    Width="150px">
                                                    <Items>
                                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="American Express" Value="1" />
                                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Discover" Value="2" />
                                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Master Card" Value="3" />
                                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Visa Card" Value="4" Selected="True" />
                                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Other" Value="5" />
                                                    </Items>
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td width="100px">
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text="Card Number (*)" meta:resourcekey="Label19Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCNumber" runat="server" CssClass="textbox" MaxLength="16" meta:resourcekey="txtCNumberResource1"
                                                    Width="150px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCNumber"
                                                    ErrorMessage="*" ValidationExpression="^\d+$" Enabled="False"></asp:RegularExpressionValidator>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text="Expiration (*)" meta:resourcekey="Label18Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCExpire" runat="server" Columns="4" MaxLength="4" CssClass="textbox"
                                                    meta:resourcekey="txtCExpireResource1"></asp:TextBox>
                                                <font class="font">(MMYY)</font>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCExpire"
                                                    ErrorMessage="*" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label20" runat="server" Text="Security Code (*)" meta:resourcekey="Label4Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSecCode" runat="server" CssClass="textbox" MaxLength="5" meta:resourcekey="txtSecCodeResource1"
                                                    Columns="3"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSecCode"
                                                    ErrorMessage="*" ValidationExpression="^\d+$" Enabled="False"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <!-- Authorize.Net Address Verification service -->
                                        <tr id="trAddressAN" runat="server">
                                            <td id="Td25" runat="server">
                                                <asp:Label ID="Label24" runat="server" Text="Address (*)" meta:resourcekey="Label24Resource1"></asp:Label>
                                            </td>
                                            <td id="Td26" colspan="3" runat="server">
                                                <asp:TextBox ID="txtAddressAN" runat="server" CssClass="textbox" Width="435px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr id="trCityAN" runat="server">
                                            <td id="Td27" runat="server">
                                                <asp:Label ID="Label25" runat="server" Text="City (*)" meta:resourcekey="Label9Resource1"></asp:Label>
                                            </td>
                                            <td id="Td28" runat="server">
                                                <asp:TextBox ID="txtCityAN" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                            </td>
                                            <td id="Td29" runat="server">
                                                <asp:Label ID="Label26" runat="server" Text="State (*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                            </td>
                                            <td id="Td30" runat="server">
                                                <WebCtlIpsmarx:RadComboBox ID="ddlProvincesAN" runat="server" Width="160px" Height="150px">
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                        </tr>
                                        <tr id="trZipCodeAN" runat="server">
                                            <td id="Td31" runat="server">
                                                <asp:Label ID="Label28" runat="server" Text="Zip Code(*)" meta:resourcekey="Label13Resource1"></asp:Label>
                                            </td>
                                            <td id="Td32" runat="server">
                                                <asp:TextBox ID="txtZipCodeAN" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                            </td>
                                            <td id="Td33" runat="server">
                                                <asp:Label ID="Label29" runat="server" Text="Country (*)" meta:resourcekey="Label10Resource1"></asp:Label>
                                            </td>
                                            <td id="Td34" runat="server">
                                                <WebCtlIpsmarx:RadComboBox ID="ddlCountriesAN" runat="server" Width="160px" Height="150px">
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                <asp:Panel ID="Panel_Recharge" Visible="False" runat="server" meta:resourcekey="Panel_RechargeResource1">
                                                    <br />
                                                    <strong>&nbsp;
                                                        <asp:Label ID="Label27" runat="server" Text="Automatic Rebilling" meta:resourcekey="Label27Resource1"></asp:Label></strong>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:CheckBox ID="chkRecharge" Checked="True" runat="server" Text="Automatically rebill my credit card &lt;b&gt;$&lt;/b&gt; "
                                                                    CssClass="fontnormal" meta:resourcekey="chkRechargeResource1"></asp:CheckBox>
                                                            </td>
                                                            <td style="width: 84px">
                                                                <asp:DropDownList ID="ddlRechargeAmount" CssClass="textbox" runat="server" meta:resourcekey="ddlRechargeAmountResource1">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="fontnormal">
                                                                &nbsp;&nbsp;When my balance goes below <b>$</b>
                                                            </td>
                                                            <td style="width: 69px">
                                                                <asp:DropDownList ID="ddlAlertLimit" CssClass="textbox" runat="server" meta:resourcekey="ddlAlertLimitResource1">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlTermAndCondition" Visible="false" runat="server">
                                    <table>
                                        <tr>
                                            <td>
                                                <strong>
                                                    <asp:Label ID="lblTermTitle" Text="Terms and Conditions" runat="server" CssClass="">
                                                </strong></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtTerms" runat="server" TextMode="MultiLine" Width="600px" Height="200px">
                  
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblTerms" Text="By clicking on 'I accept' below you are agreeing to the "></asp:Label>
                                                <asp:LinkButton ID="LinkButton1" runat="server" AutoPostback="false" OnClientClick="return openTerms(); "
                                                    Text="Terms and Conditions ">
                                                </asp:LinkButton>
                                                <asp:Label ID="lblAbove" Text=" above." runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chkTerms" runat="server" Text="I accept the" />
                                                <asp:LinkButton ID="lbTerms" runat="server" AutoPostback="false" OnClientClick="return openTerms(); "> Terms and Conditions 
                                                </asp:LinkButton>
                                                <asp:Label ID="Label17" runat="server" Text=" of the carrier service."></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="rdbCreditCard" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="rdbPayPal" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="rdbGoogle" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ddlPaymentGateways" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
        </td>
    </tr>
</table>
