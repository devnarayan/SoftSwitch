<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgentReport.aspx.cs" Inherits="CCEstore.Reports.AgentReport"
    MasterPageFile="~/mainService.Master" %>

<%@ Register Src="~/Controls/TimeZone.ascx" TagName="TimeZone" TagPrefix="uc1" %>
<%@ Register TagPrefix="pnwc" Namespace="PNayak.Web.UI.WebControls" Assembly="PNayak.Web.UI.WebControls.ExportButton" %>
<%@ Register TagPrefix="WebCtlIpsmarx" Namespace="Telerik.Charting" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table class="toptitle" cellspacing="0" cellpadding="5" width="700" border="0">
                    <tr>
                        <td width="100%" class="heading" colspan="4">
                            <asp:Label ID="Label3" runat="server" Text="ACD Report" meta:resourcekey="Label3Resource1"></asp:Label>
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
                                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True" meta:resourcekey="lblErrorResource1"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="top">
                                                    <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                                                        <tr>
                                                            <asp:Panel ID="pnlPackage" runat="server" Visible="False" meta:resourcekey="pnlPackageResource1">
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
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td>
                                                    <table height="40" cellspacing="0" cellpadding="3" width="90%" align="center" border="0">
                                                        <tr>
                                                            <td width="32%" style="height: 40px">
                                                                <div align="center">
                                                                    <asp:Button ID="btnReport" runat="server" CssClass="Button" Text="Display" meta:resourcekey="btnReportResource1">
                                                                    </asp:Button></div>
                                                            </td>
                                                            <td class="dark" width="31%" style="height: 40px">
                                                                <div align="center">
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="0" cellpadding="5" width="100%" align="center" border="0">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" meta:resourcekey="Label1Resource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <WebCtlIpsmarx:RadGrid ID="rgReport" runat="server" Skin="Sunset" AllowPaging="True"
                                                        AutoGenerateColumns="false" AllowSorting="True" GridLines="None" Width="650px">
                                                        <HeaderContextMenu Skin="Sunset">
                                                            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                        </HeaderContextMenu>
                                                        <PagerStyle AlwaysVisible="True" Wrap="False" Mode="NumericPages" />
                                                        <MasterTableView>
                                                            <Columns>
                                                                <WebCtlIpsmarx:GridBoundColumn DataField="PBXWebUsername" HeaderText="Agent Name"
                                                                    UniqueName="PBXWebUsername">
                                                                </WebCtlIpsmarx:GridBoundColumn>
                                                                <WebCtlIpsmarx:GridBoundColumn DataField="PBXExtension" HeaderText="Extension" ItemStyle-Width="100px"
                                                                    UniqueName="PBXExtension" Visible="true">
                                                                </WebCtlIpsmarx:GridBoundColumn>
                                                                <WebCtlIpsmarx:GridBoundColumn DataField="average(min)" HeaderText="Avg(Min)"
                                                                    UniqueName="average" Visible="true" ItemStyle-Width="100px">
                                                                </WebCtlIpsmarx:GridBoundColumn>
                                                                <WebCtlIpsmarx:GridBoundColumn DataField="duration(min)" HeaderText="Duration(Min)"
                                                                    UniqueName="duration" Visible="true">
                                                                </WebCtlIpsmarx:GridBoundColumn>
                                                                <WebCtlIpsmarx:GridBoundColumn DataField="CallsCount" HeaderText="Calls" UniqueName="Calls"
                                                                    Visible="true">
                                                                </WebCtlIpsmarx:GridBoundColumn>
                                                                <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3">
                                                                    <HeaderTemplate>
                                                                       Total  ttTime%
                                                                    </HeaderTemplate>
                                                                    <ItemTemplate>
                                                                       <asp:Image ID="imgTime" runat="server" ImageUrl="~/Images/green/bg.png" Width="1%" Height="10px"  /><asp:Label ID="lblTimePer" Text="10%" runat="server" ></asp:Label>
                                                                       
                                                                    </ItemTemplate>
                                                                </WebCtlIpsmarx:GridTemplateColumn>
                                                                <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3">
                                                                    <HeaderTemplate>
                                                                        Completed%
                                                                    </HeaderTemplate>
                                                                    <ItemTemplate>
                                                                       <asp:Image ID="imgCompleted" runat="server" ImageUrl="~/Images/orange/bg.png" Width="1%" Height="10px" /><asp:Label ID="lblCompletedPer" runat="server" Text = "10%" ></asp:Label>
                                                                       
                                                                    </ItemTemplate>
                                                                </WebCtlIpsmarx:GridTemplateColumn>
                                                            </Columns>
                                                        </MasterTableView>
                                                        <ClientSettings EnableRowHoverStyle="True">
                                                        </ClientSettings>
                                                        <FilterMenu Skin="Sunset">
                                                            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                        </FilterMenu>
                                                    </WebCtlIpsmarx:RadGrid>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <div>
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
