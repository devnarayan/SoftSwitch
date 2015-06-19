<%@ Page Language="c#" CodeBehind="CDR_Report.aspx.cs" AutoEventWireup="False" Inherits="SipKernel.IPPBX.CDR_Report"
    MasterPageFile="~/mainService.Master" meta:resourcekey="PageResource1" %>

<%@ Register Src="Controls/TimeZone.ascx" TagName="TimeZone" TagPrefix="uc1" %>
<%@ Register TagPrefix="pnwc" Namespace="PNayak.Web.UI.WebControls" Assembly="PNayak.Web.UI.WebControls.ExportButton" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table class="toptitle"  cellspacing="0" cellpadding="5" width="700" border="0">
                    <tr>
                        <td width="100%" class="heading" colspan="4">
                            <asp:Label ID="Label3" runat="server" Text="CDR Report" meta:resourcekey="Label3Resource1"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" width="650" border="0">
                    <tr>
                        <td valign="top" width="100%">
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td style="width: 100%">
                                        <table cellspacing="0" cellpadding="5" width="100%" align="center" border="0">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True" 
                                                        meta:resourcekey="lblErrorResource1"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <table height="25" cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="top">
                                                    <table class="table1" height="25" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tr>
                                                            <td class="topa" width="15">
                                                                <div align="center">
                                                                    <div align="center">
                                                                        </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="top">
                                                    <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                                                        <tr>
                                                            <asp:Panel ID="pnlPackage" runat="server" Visible="False" 
                                                                meta:resourcekey="pnlPackageResource1">
                                                                <td class="main" valign="top" width="299">
                                                                    <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
                                                                        <tr>
                                                                            <td>
                                                                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                                    <tr>
                                                                                        <td>
                                                                                            &nbsp;
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                                    <tr>
                                                                                        <td>
                                                                                            &nbsp;
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </asp:Panel>
                                                            <td style="width: 1px; height: 15px;">
                                                                <img height="1" src="images/pix.gif" width="1">
                                                            </td>
                                                            <td class="main" valign="top" width="300" style="height: 15px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td style="width: 133px" valign="top">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td align="center" style="width: 100%">
                                                                            <strong>Call Types</strong>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width: 128px">
                                                                            <asp:CheckBox ID="chkInbound" runat="server" Text="Inbound" Width="100%" BackColor="LightBlue"
                                                                                Height="100%" Checked="True" meta:resourcekey="chkInboundResource1" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 128px">
                                                                            <asp:CheckBox ID="chkOutbound" runat="server" Text="Outbound" Width="100%" BackColor="LightPink"
                                                                                Height="100%" Checked="True" meta:resourcekey="chkOutboundResource1" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 128px">
                                                                            <asp:CheckBox ID="chkInternal" runat="server" Text="Internal" Width="100%" BackColor="PaleGreen"
                                                                                Height="100%" Checked="True" meta:resourcekey="chkInternalResource1" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 128px; height: 22px;">
                                                                            <asp:CheckBox ID="chkQueueCall" runat="server" Text="Queue Call" Width="100%" BackColor="PeachPuff"
                                                                                Height="100%" Visible="False" meta:resourcekey="chkQueueCallResource1" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td style="width: 300px" valign="top">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="height: 17px" align="center">
                                                                            <strong>View Columns</strong>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width: 144px; height: 22px">
                                                                            <asp:CheckBox ID="chkAccessNumber" runat="server" Text="Access Number" Width="100%"
                                                                                Checked="True" meta:resourcekey="chkAccessNumberResource1" />
                                                                        </td>
                                                                        <td style="height: 22px">
                                                                            <asp:CheckBox ID="chkDuration" runat="server" Text="Duration" Width="100%" 
                                                                                Checked="True" meta:resourcekey="chkDurationResource1" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 144px">
                                                                            <asp:CheckBox ID="chkDestNumber" runat="server" Text="Dest. Number" Width="100%"
                                                                                Checked="True" meta:resourcekey="chkDestNumberResource1" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:CheckBox ID="chkCallerID" runat="server" Text="Caller ID" Width="100%" 
                                                                                Checked="True" meta:resourcekey="chkCallerIDResource1" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 144px">
                                                                            <asp:CheckBox ID="chkStatus" runat="server" Text="City Code" Width="100%" 
                                                                                meta:resourcekey="chkStatusResource1" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:CheckBox ID="chkCost" runat="server" Text="Cost" Width="100%" 
                                                                                Checked="True" meta:resourcekey="chkCostResource1" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 144px">
                                                                            <asp:CheckBox ID="chkDate" runat="server" Text="City Name" Width="100%" 
                                                                                meta:resourcekey="chkDateResource1" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:CheckBox ID="chkRate" runat="server" Text="Rate" Width="100%" 
                                                                                meta:resourcekey="chkRateResource1" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td valign="top">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td align="center">
                                                                            <strong>Filters</strong>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Extension:
                                                                        </td>
                                                                        <td>
                                                                            <asp:ListBox ID="ddlExt" runat="server" Width="100%" SelectionMode="Multiple" 
                                                                                meta:resourcekey="ddlExtResource1"></asp:ListBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            View Rows
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlPagingSize" runat="server" Width="59px" 
                                                                                AutoPostBack="True" meta:resourcekey="ddlPagingSizeResource1">
                                                                                <asp:ListItem Value="10" meta:resourcekey="ListItemResource1">10</asp:ListItem>
                                                                                <asp:ListItem Value="20" meta:resourcekey="ListItemResource2">20</asp:ListItem>
                                                                                <asp:ListItem Value="50" meta:resourcekey="ListItemResource3">50</asp:ListItem>
                                                                                <asp:ListItem Value="100" meta:resourcekey="ListItemResource4">100</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    
                                                    <table cellpadding="2" cellspacing="0" width="100%" border="0">
                                                        <tr>
                                                            <td>
                                                                &nbsp;<strong>From</strong>
                                                            </td>
                                                            <td>
                                                                <strong>To</strong>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <WebCtlIpsmarx:RadDateTimePicker ID="rdtpFrom" runat="server" Skin="Sunset" Culture="English (United States)"
                                                                    meta:resourcekey="rdtpFromResource1">
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
                                                                <WebCtlIpsmarx:RadDateTimePicker ID="rdtpTo" runat="server" Skin="Sunset" Culture="English (United States)"
                                                                    meta:resourcekey="rdtpToResource1">
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
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <table cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td>
                                                    <asp:Label ID="Label29" runat="server" Text="Time Zone" meta:resourcekey="Label29Resource1"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                    <uc1:TimeZone ID="TimeZone1" runat="server" Width="460" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="tableblue" cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="dark">
                                                    <table class="tableblue" height="40" cellspacing="0" cellpadding="3" width="90%"
                                                        align="center" border="0">
                                                        <tr>
                                                            <td class="dark" width="32%" style="height: 40px">
                                                                <div align="center">
                                                                    <asp:Button ID="btnReport" runat="server" CssClass="Button" Text="Display" 
                                                                        meta:resourcekey="btnReportResource1"></asp:Button></div>
                                                            </td>
                                                            <td class="dark" width="31%" style="height: 40px">
                                                                <div align="center">
                                                                    <asp:Button ID="btnExport" runat="server" CssClass="Button" Text="Export" 
                                                                        meta:resourcekey="btnExportResource1"></asp:Button></div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="0" cellpadding="5" width="100%" align="center" border="0">
                                            <tr>
                                                <td bgcolor="#000099">
                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" 
                                                        meta:resourcekey="Label1Resource1"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <div>
                                <WebCtlIpsmarx:RadGrid ID="dgCallsFull" runat="server" Skin="Sunset" AllowPaging="True"
                                    AllowSorting="True" GridLines="None" Width="650px" meta:resourcekey="rgDetailsResource1">
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
                        </td>
                    </tr>
                </table>
                
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
                    <div class="ft">
                    </div>
        </div>
    </div>
</asp:Content>
