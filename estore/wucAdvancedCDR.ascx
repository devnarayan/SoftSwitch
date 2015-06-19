<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucAdvancedCDR.ascx.cs" Inherits="CCEstore.wucAdvancedCDR" %>
<%@ Register Src="Controls/TimeZone.ascx" TagName="TimeZone" TagPrefix="uc1" %>
<%@ Register TagPrefix="pnwc" Namespace="PNayak.Web.UI.WebControls" Assembly="PNayak.Web.UI.WebControls.ExportButton" %>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        


                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <!-- START HEADER -->
                        <tr>
                            <td align="left" colspan="4" width="100%" class="heading">
                                    <asp:Label ID="Label3" runat="server" Text="Advanced Usage History" meta:resourcekey="Label3Resource1"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <!-- <hr /> -->
                            </td>
                        </tr>
                        <tr align="left">
                            <td colspan="4">
                                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td class="fontnormal">
                                <asp:Label ID="Label8" runat="server" Text="Service Selection" meta:resourcekey="Label8Resource1"></asp:Label></td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="ddlServices" runat="server" meta:resourcekey="ddlServicesResource1">
                                    
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                    
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr align="left">
                            <td width="10%" style="height: 21px">
                            </td>
                            <td class="fontnormal" width="20%" style="height: 21px">
                                <asp:Label ID="Label1" runat="server" Text="Period From" meta:resourcekey="Label1Resource1"></asp:Label></td>
                            <td style="height: 21px" width="40%">
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
                            <td width="50%" style="height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td width="10%">
                            </td>
                            <td align="left" class="fontnormal" style="height: 24px" valign="middle">
                                <asp:Label ID="Label2" runat="server" Text="Period To " meta:resourcekey="Label2Resource1"></asp:Label></td>
                            <td style="height: 24px">
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
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td class="fontnormal">
                                <asp:Label ID="Label7" runat="server" Text="Time Zone" meta:resourcekey="Label7Resource1"></asp:Label>
                            </td>
                            <td colspan="2">
                                <uc1:TimeZone ID="TimeZone1" runat="server" Width="400" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="fontnormal">
                                <asp:Label ID="Label9" runat="server" Text="Report Type" meta:resourcekey="Label9Resource1"></asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="ddlReportType" runat="server" meta:resourcekey="ddlReportTypeResource1">
                                    <Items>
<WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Country" Value="Country" meta:resourcekey="RadComboBoxItemResource1" />
<WebCtlIpsmarx:RadComboBoxItem runat="server" Text="City" Value="City" meta:resourcekey="RadComboBoxItemResource2" />
<WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Date" Value="Date" meta:resourcekey="RadComboBoxItemResource3" />
</Items>
                                    
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                    
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td>
                                <pnwc:ExportButton ID="btnCSV" runat="server" BackColor="#E0E0E0" ExportType="CSV"
                                    FileNameToExport="Books.csv" meta:resourcekey="btnCSVResource1" Separator="Comma"
                                    Text="CSV" Visible="False" /></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            
                            <td colspan="4">
                                <table width="100%">
                                    <tr>
                                       
                                    <td>
                                        <div align="center">
                                        <asp:Button ID="btnDisplay" runat="server" CssClass="Button" OnClick="btnDisplay_Click"
                                            Text="Show" meta:resourcekey="btnDisplayResource1" />
                                        </div>
                                    </td>
                                    
                                    <td>
                                        <div align="center">
                                        <asp:Button ID="btnExport" runat="server" CssClass="Button" 
                                            Text="Export" OnClick="btnExport_Click" meta:resourcekey="btnExportResource1" />
                                        </div>
                                    
                                    </td>
                                    
                                    </tr>
                                </table>

                            </td>
                        </tr>
                        <tr valign="top">
                            
                            <td colspan="4">
                                <table border="0" cellpadding="3" cellspacing="1" width="100%">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCount" runat="server" Text="Countries" meta:resourcekey="lblCountResource1" Visible="false"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;<asp:TextBox ID="txtCount" runat="server" CssClass="NotEditable" meta:resourcekey="txtCountResource1" Visible="false"
                                                ReadOnly="True" Width="95px"></asp:TextBox></td>
                                        <td class="fontnormal">
                                            <strong>
                                                <asp:Label ID="Label4" runat="server" Text="Calls" meta:resourcekey="Label4Resource1"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="fontnormal">
                                            &nbsp;<asp:TextBox ID="txtTQuantity" runat="server" CssClass="NotEditable" meta:resourcekey="txtTQuantityResource1"
                                                Width="95px"></asp:TextBox></td>
                                        <td class="fontnormal">
                                            <strong>
                                                <asp:Label ID="Label5" runat="server" Text="Minutes" meta:resourcekey="Label5Resource1"></asp:Label></strong>
                                        </td>
                                        <td class="fontnormal">
                                            &nbsp;<asp:TextBox ID="txtTClientUsage" runat="server" CssClass="NotEditable" meta:resourcekey="txtTClientUsageResource1"
                                                Width="95px"></asp:TextBox></td>
                                        <td class="fontnormal">
                                            <strong>
                                                <asp:Label ID="Label6" runat="server" Text="Cost" meta:resourcekey="Label6Resource1"></asp:Label></strong>
                                        </td>
                                        <td class="fontnormal">
                                            <asp:TextBox ID="txtTClientCost" runat="server" CssClass="NotEditable" meta:resourcekey="txtTClientCostResource1"
                                                Width="60px"></asp:TextBox>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                    </table>
                    <table width="100%">
                        
                        <tr>
                            <td colspan="4" width="100%">
                                <br />
                                <WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" AllowPaging="True"
                                    GridLines="None"  
                                    Skin="Sunset" Width="100%" meta:resourcekey="rgDetailsResource1" >
                                    
                                    <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                    <MasterTableView>
<PagerStyle Mode="NextPrevAndNumeric" NextPageText="Next" PrevPageText="Previous" />
</MasterTableView>
                                   
                                    <ClientSettings EnableRowHoverStyle="True"></ClientSettings>
                                    <FilterMenu Skin="Sunset">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </FilterMenu>
                                    <HeaderContextMenu Skin="Sunset">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </HeaderContextMenu>
                                </WebCtlIpsmarx:RadGrid>
                                &nbsp;&nbsp;<br />
                                &nbsp;</td>
                        </tr>
                    </table>
                                     
            
                  
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnDisplay" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID="rgDetails" EventName="PageIndexChanged" />
        <asp:PostBackTrigger ControlID="btnExport" />
    </Triggers>
</asp:UpdatePanel>

