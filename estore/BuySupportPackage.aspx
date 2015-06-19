<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true"
    CodeBehind="BuySupportPackage.aspx.cs" Inherits="CCEstore.BuySupportPackage" %>

<%@ Register Src="wucOnlineDepositAD.ascx" TagName="ad" TagPrefix="cc" %>
<%@ Register Src="Controls/PaymentForm.ascx" TagName="creditcardform" TagPrefix="cc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <script language="javascript" type="text/javascript">
        function fchkTerms(obj) {
            if (obj.checked) {
                document.getElementById('<%=btnPurchase.ClientID%>').disabled = false;
            }
            else {
                document.getElementById('<%=btnPurchase.ClientID%>').disabled = true;
            }
        }
    </script>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]>
            <v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt">
            <![endif]-->
            <div class="content">
                <asp:Panel ID="pnlSearch" runat="server" meta:resourcekey="pnlSearchResource1">
                    <table style="table-layout: fixed;">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td colspan="2" class="heading">
                                            <asp:Label ID="lblTitle" runat="server" Text="Buy Support Package" meta:resourcekey="lblTitleResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <!-- <hr /> -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                                                meta:resourcekey="lblErrorResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">
                                            &nbsp;
                                        </td>
                                        <td width="70%" style="font-size: large">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">
                                            <asp:Label ID="lblPurchase" runat="server" CssClass="bg_blue" Font-Bold="False" meta:resourcekey="lblPurchaseResource1"
                                                Text="Purchase"></asp:Label>
                                            (<%= PayCentral.Library.General.GetCurrencySymbol() %>)
                                        </td>
                                        <td width="70%">
                                            <webctlipsmarx:radcombobox id="ddlPayment" width="300px"  runat="server" meta:resourcekey="ddlPaymentResource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                                <items>
                                                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="1" Value="1" />
                                                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="400" Value="400" />
                                                </items>
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </webctlipsmarx:radcombobox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                       
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <cc:ad ID="AD" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <cc:creditcardform ID="CreditCardForm" runat="server" ShowVoucher="true" />
                            </td>
                        </tr>
                        <tr id="trTermHeader" runat="server" visible="False">
                            <td runat="server">
                                <strong>
                                    <asp:Label ID="lblManageExtGroups" runat="server" Text="Terms & Agreement"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr id="trTerm" runat="server" visible="true">
                            <td id="Td1" align="center" runat="server">
                                <br />
                                <iframe width="85%" src="./TermsIPsmarx.aspx" scrolling="auto"></iframe>
                                <br />
                                <asp:Label ID="lblAgree" runat="server">Do you agree?</asp:Label>
                                <br />
                                <input id="chkTerms" type="checkbox" onclick="fchkTerms(this);" /><asp:Label ID="Label1"
                                    runat="server">I have read and agree with the term above.</asp:Label>
                            </td>
                        </tr>

                        <tr id="trfc" runat="server" visible="true">
                            <td id="Td2" align="center" runat="server">
                                <asp:Label ForeColor="Blue" Text="Please note that your balance will not take affect until next business day. For this reason, it is recommended that you make payments ahead of time" ID="lblmsg111" runat="server" />
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table width="100%">
                                    <tr>
                                        <td width="50%" align="center" id="tdAdd2Cart" runat="server">
                                            &nbsp;
                                        </td>
                                        <td align="center">
                                            <asp:Button ID="btnPurchase" runat="server" Text="Purchase" Enabled="false" CssClass="Button"
                                                meta:resourcekey="btnPurchaseResource1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <!--[if IE]>
            </v:roundrect>
            <![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
