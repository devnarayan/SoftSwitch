<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucInternationalRechargeReport.ascx.cs" Inherits="CCEstore.Controls.wucInternationalRechargeReport" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

    
          
        <table    border="0" cellspacing="0" width="100%">
            <tr>
                <td colspan="4" align="center">
                    <table border="0" cellpadding="2" cellspacing="0" width="100%" height="30px">
                        <tr >
                            <td width="100%"  class="heading">
                                
                                    <asp:Label ID="Label7" runat="server" Text="International Recharge Report" 
                                        meta:resourcekey="Label7Resource1" ></asp:Label>
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
                    <WebCtlIpsmarx:RadDateTimePicker ID="rdtpFrom" runat="server" Skin="Sunset" Culture="English (United States)" meta:resourcekey="rdtpFromResource1">
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <Calendar Skin="Sunset" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
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
                    <WebCtlIpsmarx:RadDateTimePicker ID="rdtpTo" runat="server" Skin="Sunset" Culture="English (United States)" meta:resourcekey="rdtpToResource1">
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <Calendar Skin="Sunset" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" >
                    <br />
                    <div >
                    <WebCtlIpsmarx:RadGrid ID="rgInternationalRecharge" runat="server" Skin="Sunset" 
                            AllowPaging="True" AllowSorting="True"
                        GridLines="None" OnLoad="rgInternationalRecharge_Load" OnPageIndexChanged="rgInternationalRecharge_PageIndexChanged"
                        
                            >
                        
<HeaderContextMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

                        <PagerStyle AlwaysVisible="True" Wrap="False" Mode="NumericPages" />
                        <MasterTableView>
                            <PagerStyle Mode="NumericPages" NextPageText="Next" PrevPageText="Previous" />
                        </MasterTableView>
                        
                        <ClientSettings EnableRowHoverStyle="True">
                        </ClientSettings>

<FilterMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
                    </WebCtlIpsmarx:RadGrid>
                    </div>
                    <br />
                    &nbsp;</td>
            </tr>
            </table>
      
    
             

    
    
    
 
