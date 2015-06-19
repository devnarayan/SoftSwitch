<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallingCards.ascx.cs" Inherits="CCEstore.CallingCards" %>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1">   
                    <tr>
                        <td colspan="3">
                            &nbsp;&nbsp;
                            <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
                            <asp:HiddenField ID="hdnPin" runat="server" />
                            <asp:DropDownList ID="ddlService" runat="server" Width="300px" CssClass="textbox"
                                AutoPostBack="True" meta:resourcekey="ddlServiceResource1">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left" bgcolor="#f4f4f4" class="fontnormal" colspan="3" style="height: 24px">
                            &nbsp;<asp:DataList ID="dtCards" runat="server" BackColor="White" BorderColor="Silver"
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="Smaller" RepeatColumns="2"
                                RepeatDirection="Horizontal" Width="100%" meta:resourcekey="dtCardsResource1">
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <ItemStyle BackColor="White" Font-Size="11px" ForeColor="Navy" />
                                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <HeaderStyle BackColor="#939FB0" Font-Bold="True" ForeColor="#FFFFCC" />
                                <ItemTemplate>
                                    <table border="0">
                                        <tr>
                                            <td colspan="3">
                                            <asp:Image runat="server" ID="imgCardImage" Height="100px" Width="200px" ImageUrl='<%# Page.ResolveUrl("~") + "images/" + DataBinder.Eval(Container.DataItem,  "image") %>' meta:resourcekey="imgCardImageResource1" />
                                            <asp:Label ID="lblCCEstoreID" runat="server" ForeColor="DarkGreen" Font-Bold="True"
                                                    Font-Size="13px" Text='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                    Visible="False" meta:resourcekey="lblCCEstoreIDResource1" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <asp:Label ID="Label2" runat="server" Text="Name" meta:resourcekey="Label2Resource1"></asp:Label>:
                                                <asp:Label ID="lblCardName" runat="server" ForeColor="DarkGreen" Font-Bold="True"
                                                    Font-Size="13px" Text='<%# DataBinder.Eval(Container.DataItem, "card_name") %>' meta:resourcekey="lblCardNameResource1" />
                                                    
                                                <asp:Label ID="lblpromotionID" runat="server" Visible="False" 
                                                Text='<%# DataBinder.Eval(Container.DataItem, "PromotionID") %>' meta:resourcekey="lblpromotionIDResource1"
                                                />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <asp:Label ID="Label3" runat="server" Text="Description" meta:resourcekey="Label3Resource1"></asp:Label>:
                                                <asp:Label ID="lblDescription" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "description") %>' meta:resourcekey="lblDescriptionResource1" />
                                                <br />
                                                <a id="lnkRates" runat="server" href="#">Rates</a>
                                            </td>
                                        </tr>
                                        <tr><td colspan="3" class="pricing_dotdotdot"><table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr>
                                            <td align="left" valign="bottom">
                                            <span class="pricing_retail_desc">
                                                <asp:Label ID="Label4" runat="server" Text="Amount" meta:resourcekey="Label4Resource1"></asp:Label>
                                                </span>
                                            </td>
                                            <td>
                                            <img src="<%= Page.ResolveUrl("~")%>images/spacer.gif" alt="" border="0" height="1" width="10" />
                                            </td>
                                            <td align="right" valign="bottom" nowrap="true">
                                        <span name="pricing_retail_price" class="pricing_retail_price">
                                        <asp:Label ID="lblValue" runat="server" Font-Bold="True" Font-Size="Medium"
                                            Text='<%# PayCentral.Library.General.GetCurrencySymbol() +  DataBinder.Eval(Container.DataItem, "amount") %>' meta:resourcekey="lblValueResource1"></asp:Label>
                                        </span>
                                        </td>
                                        </tr>
                                        </table>
                                        </td>
                                        </tr>
                                        <tr><td colspan="3" class="pricing_dotdotdot"><table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr id="trDiscount" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "discount").ToString())>0 %>'>
                                            <td align="left" valign="bottom" runat="server">
                                            <span class="pricing_discount_desc">
                                                <asp:Label ID="Label6" runat="server" Text="You Save" meta:resourcekey="Label6Resource1"></asp:Label>
                                            </span>
                                            </td>
                                            <td runat="server"><img src="<%= Page.ResolveUrl("~")%>images/spacer.gif" alt="" border="0" height="1" width="10" /></td>
                                            <td align="right" valign="bottom" nowrap="nowrap" runat="server">
                                        <span name="pricing_retail_price" class="pricing_discount_price">
                                        <asp:Label ID="lblDiscount" runat="server" Font-Bold="True" Font-Size="Medium"
                                            Text='<%# PayCentral.Library.General.GetCurrencySymbol() +  DataBinder.Eval(Container.DataItem, "discount") %>'></asp:Label>
                                        </span>
                                        </td>
                                        </tr>
                                        </table></td></tr>
                                        <tr><td colspan="3" class="pricing_dotdotdot"><table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr id="trFinal" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "discount").ToString())>0 %>' >
                                            <td align="left" valign="bottom" runat="server" >
                                            <span class="pricing_sale_desc">
                                                <asp:Label ID="Label5" runat="server" Text="Price Now"
                                                meta:resourcekey="Label5Resource1"
                                                ></asp:Label>
                                            </span>
                                            </td>
                                            <td runat="server"><img src=""<%= Page.ResolveUrl("~")%>images/spacer.gif" alt="" border="0" height="1" width="10" /></td>
                                            <td align="right" valign="bottom" nowrap="nowrap" runat="server">
                                        <span name="pricing_retail_price" class="pricing_sale_price">
                                        <asp:Label ID="lblFinal" runat="server" Font-Bold="True" Font-Size="Medium"
                                            Text='<%# PayCentral.Library.General.GetCurrencySymbol() +  DataBinder.Eval(Container.DataItem, "UnitPrice") %>'></asp:Label>
                                        </span>
                                        </td>
                                        </tr>
                                        </table></td></tr>
                                        
                                        
                                        <tr><td colspan="3" ><table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr id="trExpire" runat="server"
                                        visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "discount").ToString())>0 %>'
                                        
                                         >
                                            <td align="left" valign="bottom" runat="server">
                                            <span class="pricing_discount_desc">
                                                <asp:Label ID="lblExpire" runat="server" 
                                                Text='<%# SipKernel.common.Translation.Lookup("hurry_up_the_promotion_end") + " " + 
                                                DateTime.Parse( DataBinder.Eval(Container.DataItem, "ExpirationDate").ToString()).ToLongDateString() + "." %>'
                                                
                                                ></asp:Label>
                                            </span>
                                            </td>
                                        </tr>
                                        </table></td></tr>
                                        
                                        
                                        
                                        <tr id="trNote" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "MinPurchase").ToString())>0 || decimal.Parse(DataBinder.Eval(Container.DataItem, "MaxPurchase").ToString())>0 %>'>
                                            <td colspan="3" runat="server">
                                            Note:
                                            </td>
                                        </tr>
                                        <tr><td colspan="3">
                                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                        <tr id="trMin" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "MinPurchase").ToString())>0 %>' >
                                            <td runat="server" ><span class="pricing_retail_desc">
                                                <asp:Label ID="Label7" runat="server" Text="Min Purchase required for discount:"></asp:Label>
                                                <asp:Label ID="lblMin" runat="server" 
                                                Text ='<%# DataBinder.Eval(Container.DataItem, "MinPurchase") %>'></asp:Label>      
                                                </span>
                                            </td>
                                            
                                            
                                        </tr>
                                        </td></tr>
                                        </table>

                                        <tr id="trMax" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "MaxPurchase").ToString())>0 %>' >
                                            <td colspan="3" runat="server">
                                                <asp:Label ID="Label8" runat="server" Text="Max Purchase allowed for discount:"></asp:Label>
                                                <asp:Label ID="Label1" runat="server" 
                                                Text ='<%# DataBinder.Eval(Container.DataItem, "MaxPurchase") %>'
                                                ></asp:Label>      
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td colspan="3">

                                                <asp:Label ID="Label9" runat="server" Text="Quantity" meta:resourcekey="Label9Resource1"></asp:Label>:
                                    <asp:TextBox ID="txtQty" runat="server" CssClass="textbox" Width="40px" MaxLength="3" meta:resourcekey="txtQtyResource1"></asp:TextBox>
                                    <asp:RangeValidator ID="rngRange" runat="server" ControlToValidate="txtQty" Type="Integer" ErrorMessage="Please enter valid quantity" MaximumValue="999"
                                        MinimumValue="1" meta:resourcekey="rngRangeResource1"></asp:RangeValidator>
                                    <asp:Label ID="lblTariffID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "tariff_id") %>'
                                        Visible="False" meta:resourcekey="lblTariffIDResource1" />
                                    <asp:Label ID="lblProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                        Visible="False" meta:resourcekey="lblProductIDResource1" />
                                        </td>
                                        </tr>
                                   </table>
                                </ItemTemplate>
                            </asp:DataList>
                            </td>
                    </tr>
                 </table>
