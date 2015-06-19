<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucUsageHistoryCard.ascx.cs"
    Inherits="CCEstore.wucUsageHistoryCard" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Src="Controls/TimeZone.ascx" TagName="TimeZone" TagPrefix="uc1" %>
<style type="text/css">
    .style3
    {
        width: 62px;
    }
    .style4
    {
        width: 99px;
    }
    .style5
    {
        width: 59px;
    }
</style>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <contenttemplate>
    

  
       <table  border="0" cellpadding="0" cellspacing="0" width="100%">
            <!-- START HEADER -->
            <tr>
                <td width="100%" style="height: 17px" align="left" colspan="4" class="heading">
                    
                        <asp:Label ID="Label3" runat="server" Text="Usage History" meta:resourcekey="Label3Resource1" ></asp:Label>
                </td>
            </tr>
            <tr>
            <td colspan="4">
            <%--<hr />--%>
            </td>
            </tr>

            
            <tr align="left">
                <td colspan="4">
                    <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label></td>
            </tr>
            <tr align="left">
                <td width="10%">
                </td>
                <td width="20%" class="fontnormal">
                    <asp:Label ID="Label1" runat="server" Text="Period From" meta:resourcekey="Label1Resource1"></asp:Label></td>
                <td style="height: 20px" width="40%">
                    <WebCtlIpsmarx:RadDateTimePicker ID="rdtpFrom" runat="server" Skin="Forest" Culture="English (United States)" meta:resourcekey="rdtpFromResource1">
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" /><Calendar Skin="Forest" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                            ViewSelectorText="x">
                        </Calendar>
                        <DateInput LabelCssClass="" Width="">
                        </DateInput>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                    <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" /></WebCtlIpsmarx:RadDateTimePicker>
                </td>
                <td width="50%">
                </td>
            </tr>
            <tr>
                <td width="10%">
                </td>
                <td align="left" class="fontnormal" style="height: 24px" valign="middle">
                    <asp:Label ID="Label2" runat="server" Text="Period To " meta:resourcekey="Label2Resource1"></asp:Label></td>
                <td style="height: 24px">
                    <WebCtlIpsmarx:RadDateTimePicker ID="rdtpTo" runat="server" Skin="Forest" Culture="English (United States)" meta:resourcekey="rdtpToResource1">
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" /><Calendar Skin="Forest" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                            ViewSelectorText="x">
                        </Calendar>
                        <DateInput LabelCssClass="" Width="">
                        </DateInput>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                    <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" /></WebCtlIpsmarx:RadDateTimePicker>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="left" class="fontnormal" style="height: 24px" valign="middle">
                    <asp:Label ID="Label7" runat="server" meta:resourcekey="Label7Resource1" 
                        Text="Time Zone"></asp:Label>
                </td>
                <td style="height: 24px">
                    <uc1:TimeZone ID="TimeZone1" runat="server" Width="400" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10%">
                    &nbsp;</td>
                <td align="left" class="fontnormal" style="height: 24px" valign="middle">
                    &nbsp;</td>
                <td style="height: 24px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10%">
                    &nbsp;</td>
                <td align="left" class="fontnormal" style="height: 24px" valign="middle">
                    &nbsp;</td>
                <td style="height: 24px">
                    <asp:Button ID="btnDisplay" runat="server" CssClass="Button" 
                        meta:resourcekey="btnDisplayResource1" OnClick="btnDisplay_Click" Text="Show" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr valign="top">
                
                <td colspan="4">
                    <table border="0" cellpadding="3" cellspacing="1" width="650px" bgcolor="#ffffff">
                        <tr>
                            <td>
                                <strong>
                                    <asp:Label ID="Label4" runat="server" Text="Calls" meta:resourcekey="Label4Resource1"  Width="60px"></asp:Label>
                                </strong>
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal">
                                <asp:Label ID="lblCalls" runat="server" CssClass="NotEditable"  Width="60px" meta:resourcekey="lblCallsResource1"></asp:Label>
                            </td>
                            <td>
                                <strong>
                                    <asp:Label ID="Label5" runat="server" Text="Minutes" meta:resourcekey="Label5Resource1"></asp:Label></strong>
                            </td>
                            <td class="fontnormal">
                                <asp:Label ID="lblMinutes" runat="server" CssClass="NotEditable" readonly="True"  Width="60px" meta:resourcekey="lblMinutesResource1"></asp:Label>
                            </td>
                            <td>
                                <strong>
                                    <asp:Label ID="Label6" runat="server" Text="Cost" meta:resourcekey="Label6Resource1"></asp:Label></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblCost" runat="server" CssClass="NotEditable" readonly="True"  Width="60px" meta:resourcekey="lblCostResource1"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                
            </tr>
        </table>
      
      
      <table width="100%" >
            <tr>
                <td width="100%">
                    <br />
                    <WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" Skin="Forest" AllowPaging="True" AllowSorting="True"
                        GridLines="None" OnLoad="rgDetails_Load" OnPageIndexChanged="rgDetails_PageIndexChanged"
                        OnItemDataBound="rgDetails_ItemDataBound" Width="100%" meta:resourcekey="rgDetailsResource1">
                        
                        <ClientSettings EnableRowHoverStyle="True">
                        </ClientSettings>
                        <MasterTableView>
                            <PagerStyle Mode="NumericPages" NextPageText="Next" PrevPageText="Previous" />
                        </MasterTableView>
                        
                        <PagerStyle AlwaysVisible="True" Wrap="False" Mode="NumericPages" />
                        <filtermenu skin="Forest">
                            <collapseanimation duration="200" type="OutQuint" />
                        <collapseanimation duration="200" type="OutQuint" /></filtermenu>
                        <headercontextmenu skin="Forest">
                            <collapseanimation duration="200" type="OutQuint" />
                        <collapseanimation duration="200" type="OutQuint" /></headercontextmenu>
                    </WebCtlIpsmarx:RadGrid>
                    &nbsp;&nbsp;<br />
                    &nbsp;</td>
            </tr>
        </table>




       
        
        
        
    </contenttemplate>
    <triggers>
        <asp:AsyncPostBackTrigger ControlID="btnDisplay" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID="rgDetails" EventName="PageIndexChanged" />
    </triggers>
</asp:UpdatePanel>
