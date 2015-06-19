<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VoucherHistory.aspx.cs"
    Inherits="CCEstore.VoucherHistory" MasterPageFile="~/MainService.Master" %>

<%@ Register TagPrefix="cc" TagName="SupportContract" Src="~/Controls/wucSupportContractDetails.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    
        <table width="732" border="0" align="left" cellpadding="0" cellspacing="0">           
            <tr>
                <td align="left" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="4" align="left" valign="top">
                                <img src="images/body_top.jpg" width="732" height="4" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top" id="manage_bg">
                                <table width="730" border="1" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" valign="top" id="manage_vert">
                                            <div class="content">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td colspan="4">
                                                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Available Vouchers:"></asp:Label>
                                                            <asp:Label ID="lblvouchers" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td colspan="4">
                                                            <webctlipsmarx:radgrid id="rgVoucherDeducted" runat="server" allowpaging="True" allowsorting="True"
                                                                onsortcommand="rgVoucherDeducted_SortCommand" gridlines="None" allowfilteringbycolumn="false"
                                                                autogeneratecolumns="false" pagesize="25">
                                                                <headercontextmenu>
                                                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                            </headercontextmenu>
                                                                <clientsettings enablerowhoverstyle="True">
                                                            </clientsettings>
                                                                <filtermenu>
                                                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                            </filtermenu>
                                                                <mastertableview commanditemdisplay="Bottom" allowmulticolumnsorting="false" datakeynames="TicketNumber">
                                                                <Columns>
                                                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Ticket Number" DataField="TicketNumber"
                                                                        UniqueName="TicketNumber" />
                                                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Voucher Deducted"
                                                                        DataField="DeductedVouchers" UniqueName="DeductedVouchers" />
                                                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Date" DataField="CloseDate"
                                                                        UniqueName="CloseDate" />
                                                                <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Reason" DataField="Reeason"
                                                                        UniqueName="Reeason" />
                                                                </Columns>
                                                                <CommandItemTemplate>
                                                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                                </CommandItemTemplate>
                                                            </mastertableview>
                                                                <pagerstyle mode="Slider" />
                                                            </webctlipsmarx:radgrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        
                </td>
            </tr>
        </table>
    </asp:Content>
