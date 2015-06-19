<%@ Control Language="C#" AutoEventWireup="true" Codebehind="wucPaymentHistory.ascx.cs"
    Inherits="CCEstore.wucPaymentHistory" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

    
          
        <table    border="0" cellspacing="0" width="100%">
            <tr>
                <td colspan="4" align="center">
                    <table border="0" cellpadding="2" cellspacing="0" width="100%" height="30px">
                        <tr >
                            <td width="100%"  class="heading">
                                
                                    <asp:Label ID="Label7" runat="server" Text="Payment History" meta:resourcekey="Label7Resource1" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><!-- <hr /> --></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="left">
                <td colspan="4">
                    <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal></td>
            </tr>
            <tr>
                <td width="10%">
                </td>
                <td width="20%" class="fontnormal">
                    <asp:Label ID="Label9" runat="server" Text="Period From (*)" meta:resourcekey="Label9Resource1"></asp:Label></td>
                <td style="height: 20px" width="40%">
                    <WebCtlIpsmarx:RadDateTimePicker ID="rdtpFrom" runat="server" Skin="Forest" Culture="English (United States)" meta:resourcekey="rdtpFromResource1">
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <Calendar Skin="Forest" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                            ViewSelectorText="x">
                        </Calendar>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <DateInput LabelCssClass="" Width="">
                        </DateInput>
                    </WebCtlIpsmarx:RadDateTimePicker>
                </td>
                <td width="50%">
                </td>
            </tr>
            <tr>
                <td width="10%">
                </td>
                <td align="left"   class="fontnormal" style="height: 24px" valign="middle">
                    <asp:Label ID="Label10" runat="server" Text="Period To (*)" meta:resourcekey="Label10Resource1"></asp:Label></td>
                <td   style="height: 24px">
                    <WebCtlIpsmarx:RadDateTimePicker ID="rdtpTo" runat="server" Skin="Forest" Culture="English (United States)" meta:resourcekey="rdtpToResource1">
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <Calendar Skin="Forest" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                            ViewSelectorText="x">
                        </Calendar>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <DateInput LabelCssClass="" Width="">
                        </DateInput>
                    </WebCtlIpsmarx:RadDateTimePicker>
                </td>
                <td>
                    <asp:Button ID="btnDisplay" runat="server" CssClass="Button" OnClick="btnDisplay_Click"
                        Text="Show" autopostback="true" meta:resourcekey="btnDisplayResource1" />
                </td>
            </tr>
            <tr valign="top">
                <td colspan="4">
                    <table bgcolor="#ffffff" border="0" cellpadding="3" cellspacing="1" width="100%">
                        <tr> 
                            <td bgcolor="#ffffff" class="fontnormal" width="100px">
                                <strong>
                                    <asp:Label ID="Label4" runat="server" Text="Balance" meta:resourcekey="Label4Resource1"></asp:Label>
                                    <asp:Label ID="lblCurrencySymbol1" runat="server" meta:resourcekey="lblCurrencySymbol1Resource1"></asp:Label></strong></td>
                            <td bgcolor="#ffffff" class="fontnormal" width="100px">
                                <asp:Label ID="lblAccBal" runat="server" CssClass="NotEditable" Width="70px" meta:resourcekey="lblAccBalResource1"></asp:Label>
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" style="width: 150px">
                                <strong>
                                    <asp:Label ID="Label5" runat="server" Text="Total Deposit" meta:resourcekey="Label5Resource1"></asp:Label>
                                    <asp:Label ID="lblCurrencySymbol2" runat="server" meta:resourcekey="lblCurrencySymbol2Resource1"></asp:Label></strong>
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" width="100px">
                                <asp:Label ID="txtDeposit" runat="server" CssClass="NotEditable" readonly="True" Width="70px" meta:resourcekey="txtDepositResource1"></asp:Label>
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" style="width: 100px">
                                <strong>
                                    <asp:Label ID="Label6" runat="server" Text="Total Credit" 
                                    meta:resourcekey="Label6Resource1" Visible="False"></asp:Label>
                                    <asp:Label ID="lblCurrencySymbol3" runat="server" 
                                    meta:resourcekey="lblCurrencySymbol3Resource1" Visible="False"></asp:Label></strong>
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" >
                                <asp:Label ID="txtCredit" runat="server" CssClass="NotEditable" readonly="True" 
                                    Width="70px" meta:resourcekey="txtCreditResource1" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="4" >
                    <br />
                    <div >
                    <WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" Skin="Forest" AllowPaging="True" AllowSorting="True"
                        GridLines="None" OnLoad="rgDetails_Load" OnPageIndexChanged="rgDetails_PageIndexChanged"
                        OnItemDataBound="rgDetails_ItemDataBound" meta:resourcekey="rgDetailsResource1">
                        
<HeaderContextMenu Skin="Forest">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

                        <PagerStyle AlwaysVisible="True" Wrap="False" Mode="NumericPages" />
                        <MasterTableView>
                            <PagerStyle Mode="NumericPages" NextPageText="Next" PrevPageText="Previous" />
                        </MasterTableView>
                        
                        <ClientSettings EnableRowHoverStyle="True">
                        </ClientSettings>

<FilterMenu Skin="Forest">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
                    </WebCtlIpsmarx:RadGrid>
                    </div>
                    <br />
                    &nbsp;</td>
            </tr>
            
        </table>
      
    
             

    
    
    
 
