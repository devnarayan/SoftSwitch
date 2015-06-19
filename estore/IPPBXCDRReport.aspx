<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IPPBXCDRReport.aspx.cs" Inherits="CCEstore.IPPBXCDRReport" MasterPageFile="~/mainService.Master" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Src="Controls/TimeZone.ascx" TagName="TimeZone" TagPrefix="uc1" %>
<%@ Register TagPrefix="pnwc" Namespace="PNayak.Web.UI.WebControls" Assembly="PNayak.Web.UI.WebControls.ExportButton" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
    <ContentTemplate>
          


                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <!-- START HEADER -->
                        <tr>
                            <td width="100%"  class="heading" colspan="4">
                                
                                    <asp:Label ID="Label3" runat="server" Text="CDR Report" meta:resourcekey="Label3Resource1" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" width="650px">
                                <hr />
                            </td>
                        </tr>
                        <tr align="left">
                            <td colspan="4">
                                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label></td>
                        </tr>
                        
                        <%-- 
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Service Selection" meta:resourcekey="Label8Resource1"></asp:Label></td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="ddlServices" runat="server" Width="171px" meta:resourcekey="ddlServicesResource1">
                                    
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        --%>
                        
                        <tr align="left">
                            <td width="10%">
                            </td>
                            <td width="20%" class="fontnormal">
                                <asp:Label ID="Label1" runat="server" Text="Period From (*)" meta:resourcekey="Label1Resource1"></asp:Label></td>
                            <td style="height: 20px" width="40%">
                                <WebCtlIpsmarx:RadDateTimePicker ID="rdtpFrom" runat="server" Skin="Sunset" Culture="English (United States)" meta:resourcekey="rdtpFromResource1">
                                    <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                                    <TimeView Culture="(Default)" cellspacing="-1"></TimeView>
                                    <Calendar Skin="Sunset" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                                        ViewSelectorText="x"></Calendar>
                                    <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                                    <DateInput LabelCssClass="" Width="">
                                    </DateInput>
                                </WebCtlIpsmarx:RadDateTimePicker>
                            </td>
                            <td width="50%">
                                <pnwc:ExportButton ID="btnCSV" runat="server" BackColor="#E0E0E0" ExportType="CSV"
                                    FileNameToExport="Books.csv" meta:resourcekey="btnCSVResource1" Separator="Comma"
                                    Text="CSV" Visible="False" /></td>
                        </tr>
                        <tr>
                            <td width="10%">
                            </td>
                            <td align="left" class="fontnormal" style="height: 24px" valign="middle">
                                <asp:Label ID="Label2" runat="server" Text="Period To (*)" meta:resourcekey="Label2Resource1"></asp:Label></td>
                            <td style="height: 24px">
                                <WebCtlIpsmarx:RadDateTimePicker ID="rdtpTo" runat="server" Skin="Sunset" Culture="English (United States)" meta:resourcekey="rdtpToResource1">
                                    <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                                    <TimeView Culture="(Default)" cellspacing="-1"></TimeView>
                                    <Calendar Skin="Sunset" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                                        ViewSelectorText="x"></Calendar>
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
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Time Zone" meta:resourcekey="Label7Resource1"></asp:Label>
                            </td>
                            <td colspan="2">
                                <uc1:TimeZone ID="TimeZone1" runat="server" Width="400" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <div align="center">
                                    <asp:Button ID="btnDisplay" runat="server" CssClass="Button" OnClick="btnDisplay_Click"
                                        Text="Show" meta:resourcekey="btnDisplayResource1" />
                                </div>
                            </td>
                        </tr>
                        <tr valign="top">
                            
                            <td colspan="4">
                                <table border="0" cellpadding="3" cellspacing="1" width="650px" bgcolor="#ffffff">
                                    <tr>
                                        <td bgcolor="#ffffff" class="fontnormal">
                                            <strong>
                                                <asp:Label ID="Label4" runat="server" Text="Calls" meta:resourcekey="Label4Resource1"></asp:Label>
                                            </strong>
                                        </td>
                                        <td bgcolor="#ffffff" class="fontnormal">
                                            <asp:Label ID="lblCalls" runat="server" CssClass="NotEditable" Width="60px" meta:resourcekey="lblCallsResource1"></asp:Label>
                                        </td>
                                        <td  bgcolor="#ffffff" class="fontnormal">
                                            <strong>
                                                <asp:Label ID="Label5" runat="server" Text="Minutes" meta:resourcekey="Label5Resource1"></asp:Label></strong>
                                        </td>
                                        <td bgcolor="#ffffff" class="fontnormal">
                                            <asp:Label ID="lblMinutes" runat="server" CssClass="NotEditable" readonly="True" Width="60px" meta:resourcekey="lblMinutesResource1"></asp:Label>
                                        </td>
                                        <td  bgcolor="#ffffff" class="fontnormal">
                                            <strong>
                                                <asp:Label ID="Label6" runat="server" Text="Cost" meta:resourcekey="Label6Resource1" ></asp:Label>
                                            <asp:Label ID="lblCurrencySymbol1" runat="server" Text="Label" meta:resourcekey="lblCurrencySymbol1Resource1"></asp:Label>
                                            </strong>
                                            </td>
                                        <td bgcolor="#ffffff" class="fontnormal">
                                            <asp:Label ID="lblCost" runat="server" CssClass="NotEditable" readonly="True" Width="60px" meta:resourcekey="lblCostResource1"></asp:Label>
                                        </td>
                                        <td bgcolor="#ffffff" style="width: 76px">
                                            <strong>
                                                <asp:Label ID="Label9" runat="server" Text="Charge" meta:resourcekey="Label9Resource1"></asp:Label>
                                                <asp:Label ID="lblCurrencySymbol2" runat="server" Text="Label" meta:resourcekey="lblCurrencySymbol2Resource1"></asp:Label></strong></td>
                                        <td bgcolor="#ffffff">
                                            <asp:Label ID="lblCharge" runat="server" CssClass="NotEditable" readonly="True" Width="60px" meta:resourcekey="lblChargeResource1"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td bgcolor="#3b72d9">
                                <asp:Button ID="btnGetFirst" runat="server" Enabled="False"
                                    Text="&lt;&lt;" ToolTip="First Page" Width="43px" meta:resourcekey="btnGetFirstResource1" OnClick="btnGetFirst_Click" AutoPostBack="true" />
                                    
                                    
                                <asp:Button
                                        ID="btnGetPrev" runat="server" Enabled="False" Text="&lt;" ToolTip="Previous Page"
                                        Width="35px" meta:resourcekey="btnGetPrevResource1" OnClick="btnGetPrev_Click" AutoPostBack="true"/>
                                        
                                <asp:Button ID="btnGetNext"
                                            runat="server" Enabled="False" Text="&gt;" ToolTip="Next Page"
                                            Width="41px" meta:resourcekey="btnGetNextResource1" OnClick="btnGetNext_Click" AutoPostBack="true"/>
                                            
                               <asp:Button ID="btnGetLast"
                                                runat="server" Enabled="False" Text="&gt;&gt;" ToolTip="Last Page"
                                                Width="40px" meta:resourcekey="btnGetLastResource1" OnClick="btnGetLast_Click" AutoPostBack="true" />
                                                
                               <asp:Label ID="lblMoreRecR"
                                                    runat="server" Visible="False" ForeColor="Red" meta:resourcekey="lblMoreRecRResource1"></asp:Label>
                                <asp:Label ID="lblMoreRecL" runat="server" Visible="False" ForeColor="Red" meta:resourcekey="lblMoreRecLResource1"></asp:Label>
                                
                            </td>
                            <td align="center" colspan="2" bgcolor="#3b72d9">
                                <strong style="color: white">
                                    <asp:Label ID="lblPageSize" runat="server" meta:resourcekey="lblPageSizeResource1"
                                        Text="Page Size"></asp:Label></strong>&nbsp;
                                <WebCtlIpsmarx:RadComboBox ID="ddlPageSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged"
                                    Width="60px" meta:resourcekey="ddlPageSizeResource1">
                                    
                                </WebCtlIpsmarx:RadComboBox>
                                &nbsp;</td>
                            <td align="right" bgcolor="#3b72d9">
                                <asp:LinkButton ID="Linkbutton1" runat="server" CssClass="PageLink" Text="Export Call Logs"
                                    ForeColor="White" meta:resourcekey="Linkbutton1Resource1" OnClick="Linkbutton1_Click"></asp:LinkButton><asp:ImageButton
                                        ID="imgExport" Style="cursor: hand" runat="server" ToolTip="Export Data" BorderStyle="None"
                                        ImageUrl="Images/export.gif" meta:resourcekey="imgExportResource1" OnClick="imgExport_Click"></asp:ImageButton></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <br />
                                <WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" Skin="Sunset" AllowPaging="True"
                                    AllowSorting="True" GridLines="None" OnLoad="rgDetails_Load" 
                                    OnItemDataBound="rgDetails_ItemDataBound" Width="650px" meta:resourcekey="rgDetailsResource1">
                                    
                                    <PagerStyle AlwaysVisible="True" Wrap="False" Mode="NumericPages" />
                                    <MasterTableView>
                                        <PagerStyle Mode="NumericPages" NextPageText="Next" PrevPageText="Previous" />
                                    </MasterTableView>
                                    
                                    <ClientSettings EnableRowHoverStyle="True">
                                    </ClientSettings>
                                </WebCtlIpsmarx:RadGrid>
                                &nbsp;&nbsp;<br />
                                &nbsp;</td>
                        </tr>
                    </table>
                   
          


    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnDisplay" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID="rgDetails" EventName="PageIndexChanged" />
        <asp:PostBackTrigger ControlID="imgExport" />
        <asp:PostBackTrigger ControlID="Linkbutton1" />
    </Triggers>
</asp:UpdatePanel>
	        
                
                
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
