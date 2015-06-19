<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" MasterPageFile="main.master"
    CodeBehind="Basket.aspx.cs" Inherits="CCEstore.Basket" Trace="false" TraceMode="SortByCategory" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="cc" TagName="CCF" Src="~/Controls/PaymentForm.ascx" %>
<%@ Register TagPrefix="cc" TagName="CaptchaWebControl" Src="CaptchaWebControl.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

   

    <table cellspacing="0" cellpadding="0" width="100%" border="0" align="center">
        <tbody>
            <tr>
                <td class="page_cont">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="page">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 404px">
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <div class="module" style="width: 700px">
                                                                <div class="container">
                                                                    <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
                                                                                    "21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                                                                    <div class="content">
                                                                        <table cellspacing="0" cellpadding="0" width="90%" border="0">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td class="bg_blue">
                                                                                        <strong>
                                                                                            <asp:Label ID="Label4" runat="server" Text="Your order contains the following Item(s):"
                                                                                                meta:resourcekey="Label4Resource1"></asp:Label></strong>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <table cellspacing="0" cellpadding="0" width="680px" border="0" valign="MIDDLE">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td colspan="8">
                                                                                        <asp:DataList ID="dlBasket" runat="server" BackColor="White" BorderColor="Silver"
                                                                                            BorderStyle="None" BorderWidth="1px" CellPadding="0" Font-Size="Smaller" RepeatColumns="1"
                                                                                            RepeatDirection="Horizontal" Width="680px" OnItemCommand="Item_Command" meta:resourcekey="dlBasketResource1">
                                                                                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                                                            <ItemStyle BackColor="White" Font-Size="11px" ForeColor="Navy" />
                                                                                            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                                                            <ItemTemplate>
                                                                                                <table id="contentTable" cellspacing="0" cellpadding="0" width="650" border="0" valign="MIDDLE"
                                                                                                    runat="server">
                                                                                                    <tr id="Tr1" class="upsell_background" runat="server">
                                                                                                        <td id="Td1" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td2" class="TableTitles" width="15%" style="height: 21px" runat="server">
                                                                                                            <p align="center">
                                                                                                                <font size="1"></font>
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td id="Td3" width="1" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td4" class="TableTitles" align="center" width="45%" style="height: 21px"
                                                                                                            runat="server">
                                                                                                            <font size="1"><b>
                                                                                                                <asp:Label ID="Label8" runat="server" Text="Item" meta:resourcekey="Label8Resource1"></asp:Label></b></font>
                                                                                                        </td>
                                                                                                        <td id="Td5" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td6" class="TableTitles" align="left" width="15%" style="height: 21px" runat="server">
                                                                                                            <font size="1"><b>
                                                                                                                <asp:Label ID="Label9" runat="server" Text="Quantity" meta:resourcekey="Label9Resource1"></asp:Label>
                                                                                                            </b></font>
                                                                                                        </td>
                                                                                                        <td id="Td7" width="1" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td8" width="25%" class="TableTitles" align="center" style="height: 21px"
                                                                                                            runat="server">
                                                                                                            <div align="right">
                                                                                                                <font size="1"><b>
                                                                                                                    <asp:Label ID="Label10" runat="server" Text="Unit Price" meta:resourcekey="Label10Resource1"></asp:Label>
                                                                                                                </b></font>
                                                                                                            </div>
                                                                                                        </td>
                                                                                                        <td id="Td9" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr2" valign="top" runat="server">
                                                                                                        <td id="Td10" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td11" width="15%" runat="server">
                                                                                                            <asp:Image Height="48" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ImageURL") %>'
                                                                                                                ID="ProductImage" runat="server" />
                                                                                                        </td>
                                                                                                        <td id="Td12" width="1" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td13" width="50%" align="left" runat="server">
                                                                                                            <asp:Label ID="lblProductName" runat="server" Font-Bold="True" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName") %>'></asp:Label><br />
                                                                                                            <asp:Label ID="lblDescription" runat="server" Font-Bold="False" Text='<%# GetProductDescription( DataBinder.Eval(Container.DataItem, "Description"), DataBinder.Eval(Container.DataItem, "Category") ) %>'></asp:Label><br />
                                                                                                            <asp:Label ID="lblCategory" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Category") %>'
                                                                                                                Visible="False"></asp:Label><br />
                                                                                                            <asp:Label ID="lblProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>'
                                                                                                                Visible="False"></asp:Label><br />
                                                                                                        </td>
                                                                                                        <td id="Td14" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td15" width="10%" align="left" class="gridCellAlt" runat="server">
                                                                                                            <asp:TextBox ID="txtQuantity" Width="40px" MaxLength="3" runat="server" Font-Bold="False"
                                                                                                                Text='<%# DataBinder.Eval(Container.DataItem, "Quantity") %>' Enabled='<%# int.Parse(DataBinder.Eval(Container.DataItem, "Category").ToString())==64 ||
                                                                                                                                            int.Parse(DataBinder.Eval(Container.DataItem, "Category").ToString())==9 ||
                                                                                                                                            int.Parse(DataBinder.Eval(Container.DataItem, "Category").ToString())==300 
                                                                                                                                 %>'></asp:TextBox>
                                                                                                            <asp:LinkButton ID="lbUpdateTotal" Text="Update" AutoPostBack="True" runat="server"
                                                                                                                CommandName="UpdateTotal" Visible='<%# int.Parse(DataBinder.Eval(Container.DataItem, "Category").ToString())==64 ||
                                                                                                                                            int.Parse(DataBinder.Eval(Container.DataItem, "Category").ToString())==9 ||
                                                                                                                                            int.Parse(DataBinder.Eval(Container.DataItem, "Category").ToString())==300 %>'
                                                                                                                meta:resourcekey="lbUpdateTotalResource1" />
                                                                                                            <br />
                                                                                                            <br />
                                                                                                            <asp:LinkButton ID="lbRemove" Text="Remove Item" AutoPostBack="True" runat="server"
                                                                                                                CommandName="RemoveItem" meta:resourcekey="lbRemoveResource1" />
                                                                                                        </td>
                                                                                                        <td id="Td16" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td17" width="25%" align="right" class="gridCellAlt" runat="server">
                                                                                                            <span class="price_text">
                                                                                                                <asp:Label ID="lblUnitPrice" runat="server" class="price_text" Text='<%#  PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "UnitPrice") %>'></asp:Label>
                                                                                                            </span>
                                                                                                        </td>
                                                                                                        <td id="Td18" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr3" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "ItemSystemDefinedNetDiscountPerArticle").ToString())>0 %>'
                                                                                                        runat="server">
                                                                                                        <td id="Td19" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td20" colspan="2" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td21" runat="server">
                                                                                                            <span class="discount_text">
                                                                                                                <asp:Label ID="Label11" runat="server" Text="You have qualified for Great Saving Discount!"
                                                                                                                    meta:resourcekey="Label11Resource1"></asp:Label>
                                                                                                            </span>
                                                                                                        </td>
                                                                                                        <td id="Td22" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td23" align="right" class="gridCellAlt" width="20%" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td24" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td25" align="right" valign="bottom" class="gridCellAlt" runat="server">
                                                                                                            <span class="discount_price_text">-
                                                                                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "ItemSystemDefinedNetDiscountPerArticle") %>'></asp:Label>
                                                                                                                <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                            </span>
                                                                                                        </td>
                                                                                                        <td id="Td26" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr4" runat="server" visible='<%#BuyingSIPTrunkingService() == false %>'>
                                                                                                        <td id="Td27" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td28" colspan="2" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td29" runat="server">
                                                                                                            <span><b>
                                                                                                                <asp:Label ID="Label12" runat="server" Text="Coupon Entry" meta:resourcekey="Label12Resource1"></asp:Label></b>
                                                                                                            </span>
                                                                                                            <asp:TextBox ID="txtCoupon" Width="100px" MaxLength="20" runat="server" Font-Bold="False"></asp:TextBox>
                                                                                                            <asp:LinkButton ID="lbApplyCoupon" Text="Apply Coupon" AutoPostBack="True" runat="server"
                                                                                                                CommandName="ApplyCoupon" meta:resourcekey="lbApplyCouponResource1" />
                                                                                                        </td>
                                                                                                        <td id="Td30" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td31" align="right" class="gridCellAlt" width="20%" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td32" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td33" align="right" valign="bottom" class="gridCellAlt" runat="server">
                                                                                                            <span class="discount_price_text">-
                                                                                                                <asp:Label ID="lblCouponDiscount" runat="server" Font-Bold="True" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "ItemCouponNetDiscountPerArticle") %>'></asp:Label>
                                                                                                                <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                            </span>
                                                                                                        </td>
                                                                                                        <td id="Td34" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr5" runat="server">
                                                                                                        <td id="Td35" colspan="10" width="100%" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr6" height="20" valign="middle" runat="server">
                                                                                                        <td id="Td36" colspan="4" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td37" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td38" align="right" runat="server">
                                                                                                            <b>
                                                                                                                <asp:Label ID="Label13" runat="server" Text="Sub-total" meta:resourcekey="Label13Resource1"></asp:Label></b>
                                                                                                        </td>
                                                                                                        <td id="Td39" width="1" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                        <td id="Td40" align="right" class="price_text_bold" runat="server">
                                                                                                            <span class="price_text_Bold">
                                                                                                                <asp:Label ID="lblSubTotal" runat="server" Font-Bold="True" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "ItemNetTotalMinusDiscounts") %>'></asp:Label>
                                                                                                                <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                            </span>
                                                                                                        </td>
                                                                                                        <td id="Td41" width="1" bgcolor="#cccccc" runat="server">
                                                                                                            <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr7" runat="server">
                                                                                                        <td id="Td42" colspan="5" runat="server">
                                                                                                        </td>
                                                                                                        <td id="Td43" colspan="5" bgcolor="#cccccc" runat="server">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr id="Tr8" runat="server">
                                                                                                        <td colspan="10" height="30" runat="server">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </ItemTemplate>
                                                                                        </asp:DataList>
                                                                                        <!-- <tr class="selecttr" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'"> -->
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <table cellspacing="0" cellpadding="0" width="650" border="0" valign="MIDDLE">
                                                                                            <tr height="20" valign="middle" id="trShipping" runat="server">
                                                                                                <td colspan="4" width="70%" style="height: 20px">
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" witdh="15%" style="width: 83px; height: 20px">
                                                                                                    <b>
                                                                                                        <asp:Label ID="lblShippingCaption" runat="server" Text="Shipping" meta:resourcekey="Label5Resource1"></asp:Label></b>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" class="price_text" width="15%" style="height: 20px">
                                                                                                    <span class="price_text_Bold">
                                                                                                        <asp:Label ID="lblShipping" runat="server" meta:resourcekey="lblShippingResource1"></asp:Label>
                                                                                                        <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                    </span>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr height="20" valign="middle" id="trTax" runat="server">
                                                                                                <td colspan="4" width="70%" style="height: 20px">
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" witdh="15%" style="width: 83px; height: 20px">
                                                                                                    <b>
                                                                                                        <asp:Label ID="Label6" runat="server" Text="Tax" meta:resourcekey="Label6Resource1"></asp:Label></b>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" class="price_text" width="15%" style="height: 20px">
                                                                                                    <span class="price_text_Bold">
                                                                                                        <asp:Label ID="lblTax" runat="server" meta:resourcekey="lblTaxResource1"></asp:Label>
                                                                                                        <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                    </span>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr height="20" valign="middle" id="trDevice" runat="server">
                                                                                                <td colspan="4" width="70%" style="height: 20px">
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" witdh="15%" style="width: 83px; height: 20px">
                                                                                                    <b>
                                                                                                        <asp:Label ID="Label5" runat="server" Text="Device"></asp:Label></b>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" class="price_text" width="15%" style="height: 20px">
                                                                                                    <span class="price_text_Bold">
                                                                                                        <asp:Label ID="lblDevicePrice" runat="server"></asp:Label>
                                                                                                        <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                    </span>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr height="20" valign="middle" id="trdid" runat="server">
                                                                                                <td colspan="4" width="70%" style="height: 20px">
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" witdh="15%" style="width: 83px; height: 20px">
                                                                                                    <b>
                                                                                                        <asp:Label ID="Label15" runat="server" Text="DID Cost"></asp:Label></b>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" class="price_text" width="15%" style="height: 20px">
                                                                                                    <span class="price_text_Bold">
                                                                                                        <asp:Label ID="lblDIDCost" runat="server"></asp:Label>
                                                                                                        <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                    </span>
                                                                                                </td>
                                                                                                <td width="1" style="height: 20px">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr height="20" valign="middle">
                                                                                                <td colspan="4" width="70%">
                                                                                                </td>
                                                                                                <td width="1">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" witdh="15%" style="width: 83px">
                                                                                                    <b>
                                                                                                        <asp:Label ID="Label7" runat="server" Text="TOTAL" meta:resourcekey="Label7Resource1"></asp:Label></b>
                                                                                                </td>
                                                                                                <td width="1">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td align="right" class="price_text_bold" width="15%">
                                                                                                    <span class="price_text_Bold">
                                                                                                        <asp:Label ID="lblTotal" runat="server" Font-Bold="True" meta:resourcekey="lblTotalResource1"></asp:Label>
                                                                                                        <img src="images/spacer.gif" width="3" height="1" alt="" border="0" />
                                                                                                    </span>
                                                                                                </td>
                                                                                                <td width="1">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td height="30px">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <table id="tblExtraDeposit" runat="server" width="650px" border="0" cellpadding="0"
                                                                                            cellspacing="0" visible="false">
                                                                                            <tr height="30px">
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td class="upsell_background" colspan="2">
                                                                                                    <strong>&nbsp; &nbsp;<asp:Label ID="lblExtraDeposit" runat="server" Text="Extra Deposit"
                                                                                                        meta:resourcekey="lblExtraDepositResource1"></asp:Label>
                                                                                                    </strong>
                                                                                                </td>
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr height="30px">
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td width="190px" align="right">
                                                                                                    &nbsp; &nbsp; <b>
                                                                                                        <asp:Label ID="Label14" runat="server" Text="Purchase" meta:resourcekey="Label14Resource1"></asp:Label>
                                                                                                        (<%= PayCentral.Library.General.GetCurrencySymbol() %>) </b>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <WebCtlIpsmarx:RadComboBox ID="ddlExtraDeposit" runat="server" meta:resourcekey="ddlExtraDepositResource1">
                                                                                                        <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                                                                    </WebCtlIpsmarx:RadComboBox>
                                                                                                </td>
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="4" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <table id="tblCoupon" runat="server" width="650px" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr height="30px">
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td class="upsell_background" colspan="2">
                                                                                                    <strong>&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Apply Coupon to all items"
                                                                                                        meta:resourcekey="Label2Resource1"></asp:Label>
                                                                                                    </strong>
                                                                                                </td>
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr height="30px">
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                                <td width="190px" align="right">
                                                                                                    &nbsp; &nbsp; <b>
                                                                                                        <asp:Label ID="Label3" runat="server" Text="Coupon Entry" meta:resourcekey="Label12Resource1"></asp:Label>
                                                                                                    </b>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtCouponAll" runat="server" class="TextBox" Width="100px"></asp:TextBox>
                                                                                                    <asp:LinkButton ID="lbApplyAllCoupon" Text="Apply Coupon" AutoPostBack="True" runat="server"
                                                                                                        OnClick="lblApplyAllCoupon_Click" meta:resourcekey="lbApplyCouponResource1" />
                                                                                                </td>
                                                                                                <td width="1" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" width="1" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="4" bgcolor="#cccccc">
                                                                                                    <img src="images/spacer.gif" height="1" alt="" border="0" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <!--[if IE]></v:roundrect><![endif]-->
                                                                    <div class="ft">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                    <table style="table-layout: fixed;" align="center">
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="3">
                                                                </td>
                                                            </tr>
                                                            <!-- from here, shipping info panel if needed -->
                                                            <!-- Payment Info -->
                                                            <tr>
                                                                <td width="100%">
                                                                    <div class="module" style="width: 700px">
                                                                        <div class="container">
                                                                            <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                                                                            <div class="content">
                                                                                <cc:CCF DisplayAutoBilling="false" ID="CreditCardForm" runat="server" PaymentFrom="Estore" />
                                                                            </div>
                                                                            <!--[if IE]></v:roundrect><![endif]-->
                                                                            <div class="ft">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr class="selecttr">
                                                                <td valign="middle">
                                                                </td>
                                                                <td valign="middle">
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        &nbsp;</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" align="center">
                                                                    <cc:CaptchaWebControl ID="CaptchaWebControl1" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <!-- <tr class="selecttr" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'"> -->
                                                            <tr class="selecttr" />
                                                        </tbody>
                                                    </table>
                                                    <input type="hidden" value="2" name="CartIndex" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                    <br />
                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td align="center">
                                    <!-- this hidden field cause post back 
                                                    <input type="hidden" value="UpdateCart" name="action" />
                                                    -->
                                    <div align="center">
                                        <asp:Button ID="btnContinue" CssClass="buttonproceed" runat="server" Text="Continue Shopping"  
                                            OnClick="btnContinue_Click" meta:resourcekey="btnContinueResource2"></asp:Button>
                                    </div>
                                </td>
                                <td>
                                    <div align="center">
                                        <asp:Button ID="submit" OnClick="submit_Click" CssClass="buttonproceed" runat="server" 
                                            Text="Check Out" meta:resourcekey="submitResource1"></asp:Button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
