<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true"
    CodeBehind="LoginHistory.aspx.cs" Inherits="CCEstore.LoginHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <table width="100%">
        <tr>
            <td colspan="4" class="heading">
                <asp:Label ID="Label1" runat="server" Text="Login Hisotry" meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <!-- <hr /> -->
                <asp:Literal ID="lblMessage" runat="server"
                    meta:resourcekey="lblErrorResource1"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td colspan="2" width="100px" class="fontnormal">
                <asp:Label ID="lblExtensionDID" runat="server" Text="Period From" meta:resourcekey="lblExtensionDIDResource1"></asp:Label>
            </td>
            <td>
                <WebCtlIpsmarx:RadDateTimePicker ID="rdFrom" runat="server" Culture="(Default)" Width="244px">
                    <TimePopupButton HoverImageUrl="" ImageUrl="" />
                    <TimeView CellSpacing="-1" Culture="(Default)">
                    </TimeView>
                    <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                    </Calendar>
                    <DatePopupButton HoverImageUrl="" ImageUrl="" />
                </WebCtlIpsmarx:RadDateTimePicker>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr id="trmessagetype" runat="server">
            <td colspan="2" width="100px" class="fontnormal">
                <asp:Label ID="Label3" runat="server" Text="Period To" meta:resourcekey="Label3Resource1"></asp:Label>
            </td>
            <td style="height: 23px">
                <WebCtlIpsmarx:RadDateTimePicker ID="rdTo" runat="server" Culture="(Default)" Width="244px">
                    <TimePopupButton HoverImageUrl="" ImageUrl="" />
                    <TimeView CellSpacing="-1" Culture="(Default)">
                    </TimeView>
                    <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                    </Calendar>
                    <DatePopupButton HoverImageUrl="" ImageUrl="" />
                </WebCtlIpsmarx:RadDateTimePicker>
            </td>
            <td style="height: 23px">
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table id="Table1" align="center" border="0" cellpadding="10" cellspacing="0" width="90%">
                    <tr>
                        <td style="height: 21px;">
                            <div align="center">
                                <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display"
                                    CssClass="Button" meta:resourcekey="btnDisplayResource1" />
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table width="100%" cellpadding="0" cellspacing="0" id="tblReport" runat="server">
                    <tr>
                        <td>
                            <WebCtlIpsmarx:RadGrid ID="rgReport" runat="server" AllowSorting="true" AllowPaging="True"
                                PageSize="10" AutoGenerateColumns="false" GridLines="None" Skin="Sunset">
                                <HeaderContextMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <FilterMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </FilterMenu>
                                <ExportSettings OpenInNewWindow="true" IgnorePaging="true" FileName="LoginReport"
                                    HideStructureColumns="false">
                                </ExportSettings>
                                <MasterTableView CommandItemDisplay="Top">
                                    <CommandItemSettings ShowExportToWordButton="false" ShowExportToExcelButton="false"
                                        ShowRefreshButton="false" ShowAddNewRecordButton="false" ShowExportToCsvButton="true"
                                        ExportToCsvText="Export Data" ShowExportToPdfButton="false"></CommandItemSettings>
                                    <Columns>
                                        <WebCtlIpsmarx:GridBoundColumn UniqueName="column1" HeaderText="ID" DataField="LogLoginID"
                                            SortExpression="LogLoginID">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn UniqueName="Username" HeaderText="Username" DataField="Username"
                                            SortExpression="Username">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn UniqueName="IPAddress" HeaderText="IPAddress" DataField="IPAddress"
                                            SortExpression="IPAddress">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn UniqueName="LogDateTime" HeaderText="Login Time" DataFormatString="{0:dd-MMM-yyyy HH:mm}"
                                            DataField="LogDateTime" SortExpression="LogDateTime">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn UniqueName="Browser" HeaderText="Browser" DataField="Browser"
                                            SortExpression="Browser">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn UniqueName="LoginURL" HeaderText="LoginURL" DataField="LoginURL"
                                            SortExpression="LoginURL">
                                        </WebCtlIpsmarx:GridBoundColumn> 
                                    </Columns>
                                    <CommandItemTemplate>
                                        <div style="float: right; display: inline; padding-right: 5px;">
                                            <asp:LinkButton ID="lbDeleteLogs" runat="server" Font-Bold="true" Text="Delete Logs"
                                                OnClientClick="return confirm('Are you sure, you want to delete the logs for selected period ?');" />
                                            |
                                            <asp:LinkButton ID="lbExport" runat="server" Font-Bold="true" Text="Export Excel" />
                                            <asp:ImageButton ID="btnExport" runat="server" ImageUrl="~/Images/note2.gif" />
                                        </div>
                                    </CommandItemTemplate>
                                    <PagerStyle Mode="NextPrevAndNumeric" Position="Bottom"></PagerStyle>
                                </MasterTableView>
                            </WebCtlIpsmarx:RadGrid>
                        </td>
            </tr> </table> </td>
        </tr>
    </table>
</asp:Content>
