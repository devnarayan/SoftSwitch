<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" MasterPageFile="main.master"
    CodeBehind="billinginfo.aspx.cs" Inherits="CCEstore.billinginfo" Trace="false"
    TraceMode="SortByCategory" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucSteps.ascx" %>
<%@ Register TagPrefix="cc" TagName="CreditCardForm" Src="~/Controls/CreditCard.ascx" %>
<%@ Register TagPrefix="cc" TagName="RegisterCustomer" Src="RegisterCustomer.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <script src="js/global.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/JavaScript">
        // PopUp('/tell_friend.cfm', 'tell_friend', 300, 210)
        function PopUp(url, title, width, height) {
            var win = 'toolbar=0,location=0,directories=0,menubar=0,status=0,resizable=1,scrollbars=1,target=_blank,width=' + width + ',height=' + height;
            window.open(url, title, win);
        }


        function SelectOne(rdo, gridName) {

            all = document.getElementsByTagName("input"); /* Getting an array of all the "INPUT" controls on the form.*/
            for (i = 0; i < all.length; i++) {
                if (all[i].type == "radio") {/*Checking if it is a radio button*/

                    var count = all[i].id.indexOf(gridName + '__ctl'); /*I have added '__ctl' ASP.NET adds '__ctl' to all the controls of DataGrid.*/
                    if (count != -1) {
                        all[i].checked = false;
                    }
                }
            }
            rdo.checked = true; /* Finally making the clicked radio button CHECKED */
        }


        function GoUrl(obj) {
            var myindex = obj.selectedIndex
            if (obj.options[myindex].value != 0) {
                location = obj.options[myindex].value;
            }
        }

      

    </script>
    <script language="JavaScript">
        function BackOneScreen() {
            var aurl = 'voip_911_info.cfm';
            window.location = aurl;
        }
    </script>
    <script src="js/sifr.js" type="text/javascript"></script>
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
            <tr>
                <td class="main" valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td>
                                    <cc:tag ID="stepUserControl" runat="server" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="page_cont">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="page">
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td style="height: 404px">
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <span class="error"></span>
                                                                                    <asp:Label ID="Label8" runat="server" Text="marked are required fields." meta:resourcekey="Label8Resource1"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="trRegisterCustomer" runat="server">
                                                                                <td>
                                                                                    <cc:RegisterCustomer ID="RegisterCustomer" runat="server" ShowAutoRecharge="false" ShowSaveCreditCardPanel="false"></cc:RegisterCustomer>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0" runat="server" id="tblShippingTitle">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_blue">
                                                                                    <strong>
                                                                                        <asp:Label ID="Label9" runat="server" Text="Shipping Address" meta:resourcekey="Label9Resource1"></asp:Label>
                                                                                    </strong><span class="error">
                                                                                        <asp:Label ID="Label10" runat="server" Text="Do not enter a P.O. Box" meta:resourcekey="Label10Resource1"></asp:Label>
                                                                                    </span>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0" runat="server" id="tblShippingAddress">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_grey" width="29%">
                                                                                    <div align="right">
                                                                                        <font face="Verdana"><span class="error"></span>
                                                                                            <asp:Label ID="Label11" runat="server" Text="Address (*)" meta:resourcekey="Label11Resource1"></asp:Label>
                                                                                        </font>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="bg_grey" colspan="3">
                                                                                    <asp:TextBox ID="txtStreet" runat="server" Width="428px" meta:resourcekey="txtStreetResource1"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="bg_grey1">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        <asp:Label ID="Label12" runat="server" Text="City (*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <asp:TextBox ID="txtCity" runat="server" meta:resourcekey="txtCityResource1"></asp:TextBox>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        <asp:Label ID="Label13" runat="server" Text="State (*)" meta:resourcekey="Label13Resource1"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <asp:TextBox ID="txtState" runat="server" meta:resourcekey="txtStateResource1"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="bg_grey1">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        <asp:Label ID="Label14" runat="server" Text="Country (*)" meta:resourcekey="Label14Resource1"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <asp:DropDownList ID="ddlCountries" runat="server" meta:resourcekey="ddlCountriesResource1"
                                                                                        Width="170px">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        <asp:Label ID="Label15" runat="server" Text="Zip Code (*)" meta:resourcekey="Label15Resource1"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <asp:TextBox ID="txtZipCode" runat="server" meta:resourcekey="txtZipCodeResource1"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_blue">
                                                                                    <strong>
                                                                                        <asp:Label ID="Label16" runat="server" Text="Your order contains the following Item(s):"
                                                                                            meta:resourcekey="Label16Resource1"></asp:Label>
                                                                                    </strong>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="4" width="100%" border="0" valign="MIDDLE" class="bg_grey1">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="TableTitles" width="15%">
                                                                                    <p align="center">
                                                                                        <font size="1"></font>
                                                                                    </p>
                                                                                </td>
                                                                                <td class="TableTitles" width="40%">
                                                                                    <font size="1"><b>
                                                                                        <asp:Label ID="Label17" runat="server" Text="Item" meta:resourcekey="Label17Resource1"></asp:Label>
                                                                                    </b></font>
                                                                                </td>
                                                                                <td class="TableTitles" align="center" width="20%">
                                                                                    <div align="center">
                                                                                        <font size="1"><b>
                                                                                            <asp:Label ID="Label18" runat="server" Text="Price" meta:resourcekey="Label18Resource1"></asp:Label>
                                                                                        </b></font>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            <!-- <tr class="selecttr" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'"> -->
                                                                            <tr class="selecttr">
                                                                                <!-- <td valign="middle" onclick="ViewItem(7);"> -->
                                                                                <td valign="middle">
                                                                                    <center>
                                                                                        <asp:Image Height="48px" ID="imgService" runat="server" meta:resourcekey="imgServiceResource1">
                                                                                        </asp:Image>
                                                                                    </center>
                                                                                </td>
                                                                                <td valign="middle">
                                                                                    <!-- <a href="index.cfm?action=ViewDetails&amp;ItemID=7">iGO Unlimited Resdential<br>
																					<b>w/International Phone Number</b>: .</a> -->
                                                                                    <asp:Label ID="lblServiceDesc" runat="server" meta:resourcekey="lblServiceDescResource1"></asp:Label>
                                                                                </td>
                                                                                <!-- <td onclick="ViewItem(7);"> -->
                                                                                <td>
                                                                                    <div align="center">
                                                                                        <asp:Label ID="lblServicePrice" runat="server" meta:resourcekey="lblServicePriceResource1"></asp:Label>
                                                                                    </div>
                                                                                    <div align="center">
                                                                                        <asp:Label ID="lblYouSave" runat="server"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <input type="hidden" value="1" name="CartIndex" />
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="3">
                                                                                    <asp:Table ID="tblDID" runat="server" Width="80%" border="0" align="center" CellPadding="3"
                                                                                        CellSpacing="1" meta:resourcekey="tblDIDResource1">
                                                                                        <asp:TableRow BackColor="#3E65BF" meta:resourcekey="TableRowResource1" runat="server">
                                                                                            <asp:TableCell class="style5" Text="Phone No" meta:resourcekey="TableCellResource1"
                                                                                                runat="server"></asp:TableCell>
                                                                                            <asp:TableCell class="style5" Text="Phone Type" meta:resourcekey="TableCellResource2"
                                                                                                runat="server"></asp:TableCell>
                                                                                            <asp:TableCell class="style5" Text="Price" meta:resourcekey="TableCellResource3"
                                                                                                runat="server"></asp:TableCell>
                                                                                            <asp:TableCell class="style5" Text="PlanType" meta:resourcekey="TableCellResource4"
                                                                                                runat="server"></asp:TableCell>
                                                                                        </asp:TableRow>
                                                                                    </asp:Table>
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="selecttr">
                                                                                <td valign="middle">
                                                                                </td>
                                                                                <td valign="middle">
                                                                                    <asp:Label ID="lblDID" runat="server" meta:resourcekey="lblDIDResource1"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <div align="center">
                                                                                        <asp:Label ID="lblDIDPrice" runat="server" meta:resourcekey="lblDIDPriceResource1"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <input type="hidden" value="1" name="CartIndex" />
                                                                            </tr>
                                                                            <!-- <tr class="selecttr" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'"> -->
                                                                            <tr>
                                                                                <td colspan="3">
                                                                                    <asp:Panel ID="pnlDevice" runat="server" meta:resourcekey="pnlDeviceResource1">
                                                                                        <asp:Table ID="tblDevices" runat="server" Width="80%" border="0" align="center" CellPadding="3"
                                                                                            CellSpacing="1" meta:resourcekey="tblDevicesResource1">
                                                                                            <asp:TableRow BackColor="#3E65BF" meta:resourcekey="TableRowResource2" runat="server">
                                                                                                <asp:TableCell class="style5" Text="image" meta:resourcekey="TableCellResource5"
                                                                                                    runat="server"></asp:TableCell>
                                                                                                <asp:TableCell class="style5" Text="Device " meta:resourcekey="TableCellResource6"
                                                                                                    runat="server"></asp:TableCell>
                                                                                                <asp:TableCell class="style5" Text="Price" meta:resourcekey="TableCellResource7"
                                                                                                    runat="server"></asp:TableCell>
                                                                                                <asp:TableCell class="style5" Text="Qauntity" meta:resourcekey="TableCellResource8"
                                                                                                    runat="server"></asp:TableCell>
                                                                                                <asp:TableCell class="style5" Text="Cost" meta:resourcekey="TableCellResource9" runat="server"></asp:TableCell>
                                                                                            </asp:TableRow>
                                                                                        </asp:Table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="selecttr">
                                                                                <td valign="middle" />
                                                                                <td valign="middle" />
                                                                                <!-- <a href="index.cfm?action=ViewDetails&amp;ItemID=4">D-Link VTA</a> -->
                                                                                <asp:Label ID="lblDeviceDesc" runat="server" meta:resourcekey="lblDeviceDescResource1"></asp:Label><td />
                                                                                <div align="center">
                                                                                    <asp:Label ID="lblDevicePrice" runat="server" meta:resourcekey="lblDevicePriceResource1"></asp:Label></div>
                                                                                <input type="hidden" value="2" name="CartIndex" />
                                                                                <tr class="selecttr">
                                                                                    <td valign="middle" style="height: 17px" colspan="3" width="100%">
                                                                                        <asp:Table ID="tbOtherChages" runat="server" EnableViewState="true" Width="100%" meta:resourcekey="tbOtherChagesResource1">
                                                                                        </asp:Table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td valign="middle" colspan="5" style="height: 21px">
                                                                                        <input type="hidden" value="Checkout" name="Action" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td valign="middle" style="height: 21px">
                                                                                        <input type="hidden" value="UpdateCart" name="action" />
                                                                                    </td>
                                                                                    <td valign="middle" style="height: 21px">
                                                                                        <div align="right">
                                                                                            <b>
                                                                                                <asp:Label ID="Label19" runat="server" Text="Total" meta:resourcekey="Label19Resource1"></asp:Label>:</b></div>
                                                                                    </td>
                                                                                    <td valign="middle" align="center" style="height: 21px">
                                                                                        <asp:Label ID="lblTotalPrice" runat="server" meta:resourcekey="lblTotalPriceResource1"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td valign="middle" colspan="5" style="height: 21px">
                                                                                        <br />
                                                                                        <asp:Label ID="lblChargesInvoice" runat="server" meta:resourcekey="lblChargesInvoiceResource1"
                                                                                            Text="* Additional fees/charges will be in your first invoice." Visible="false"
                                                                                            ForeColor="Red"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <div id="divCCinfo" runat="server">
                                                                        <br />
                                                                        <br />
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td>
                                                                                    <cc:CreditCardForm ID="CreditCardInfo" runat="server"></cc:CreditCardForm>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div id="divPayAsYouGo" runat="server">
                                                                        <br />
                                                                        <br />
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td>
                                                                                </td>
                                                                                <td width="29%">
                                                                                    <strong>
                                                                                        <asp:Label ID="lblPurchage" runat="server" Text="Purchase" Font-Bold="True" meta:resourcekey="lblPurchageResource1"></asp:Label>
                                                                                        (<%= PayCentral.Library.General.GetCurrencySymbol() %>) </strong>
                                                                                </td>
                                                                                <td>
                                                                                    <WebCtlIpsmarx:RadComboBox ID="ddlPayment" runat="server" meta:resourcekey="ddlPaymentResource1">
                                                                                    </WebCtlIpsmarx:RadComboBox>
                                                                                    <asp:TextBox ID="txtPayment" runat="server" CssClass="textbox" Width="150px" meta:resourcekey="txtPaymentResource1"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <br />
                                                                    <br />
                                                                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    &nbsp;<input class="buttonDefault" onclick="history.back();" type="button" value="Back"
                                                                                        name="Back" runat="server" meta:resourcekey="Button1Resource1" />
                                                                                </td>
                                                                                <td align="center">
                                                                                    <asp:Button ID="btnContinueShopping" OnClick="btnContinueShopping_Click" CssClass="buttonproceed" 
                                                                                        runat="server" Text="Continue Shopping" meta:resourcekey="btnContinueShoppingResource1">
                                                                                    </asp:Button>
                                                                                </td>
                                                                                <td align="center">
                                                                                    <asp:Button ID="submit" OnClick="submit_Click" CssClass="buttonproceed" runat="server" 
                                                                                        Text="Proceed to Checkout" meta:resourcekey="submitResource1"></asp:Button>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
