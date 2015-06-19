<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IPsmarxCustomer.aspx.cs"
    Inherits="CCEstore.IPsmarxCustomer" MasterPageFile="~/MainService.Master" %>

<%@ Register TagPrefix="cc" TagName="SupportContract" Src="~/Controls/wucSupportContractDetails.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="732" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="53" align="left" valign="bottom">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="322" height="45" align="left" valign="bottom" class="white" style="background: url(images/managesupport.jpg)left bottom  no-repeat;">
                            <asp:Label ID="lblEditSettings" runat="server" Text="Edit Settings"></asp:Label>
                        </td>
                        <td width="473">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="4" align="center" valign="top">
                            <img src="images/body_top.jpg" width="732" height="4" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" id="manage_bg">
                            <table width="730" border="0" cellspacing="0" cellpadding="0">
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
                                                    <td class="subtitle" colspan="4">
                                                        Voucher Deducted
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">
                                                        <WebCtlIpsmarx:RadGrid ID="rgVoucherDeducted" runat="server" AllowPaging="True" AllowSorting="True"
                                                            OnSortCommand="rgVoucherDeducted_SortCommand" GridLines="None" AllowFilteringByColumn="false"
                                                            AutoGenerateColumns="false" PageSize="25">
                                                            <HeaderContextMenu >
                                                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                            </HeaderContextMenu>
                                                            <ClientSettings EnableRowHoverStyle="True">
                                                            </ClientSettings>
                                                            <FilterMenu >
                                                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                                            </FilterMenu>
                                                            <MasterTableView CommandItemDisplay="Bottom" AllowMultiColumnSorting="false" DataKeyNames="TicketNumber">
                                                                <Columns>
                                                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Ticket Number" DataField="TicketNumber"
                                                                        UniqueName="TicketNumber" />
                                                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Voucher Deducted"
                                                                        DataField="DeductedVouchers" UniqueName="DeductedVouchers" />
                                                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" HeaderText="Date" DataField="CloseDate"
                                                                        UniqueName="CloseDate" />
                                                                </Columns>
                                                                <CommandItemTemplate>
                                                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                                </CommandItemTemplate>
                                                            </MasterTableView>
                                                            <PagerStyle Mode="Slider" />
                                                        </WebCtlIpsmarx:RadGrid>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <table height="30" cellspacing="0" cellpadding="2" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td style="width: 125px; height: 15px">
                                                                    Server Brand
                                                                </td>
                                                                <td style="width: 194px; height: 15px">
                                                                    <asp:DropDownList ID="ddlServerBrand" runat="server" Width="150px" CssClass="textbox"
                                                                        OnSelectedIndexChanged="ddlServerBrand_SelectedIndexChanged" AutoPostBack="True">
                                                                        <asp:ListItem Selected="True" Value="0">Select Brand</asp:ListItem>
                                                                        <asp:ListItem Value="1">IPSmarx</asp:ListItem>
                                                                        <asp:ListItem Value="2">Dell</asp:ListItem>
                                                                        <asp:ListItem Value="3">HP</asp:ListItem>
                                                                        <asp:ListItem Value="4">IBM</asp:ListItem>
                                                                        <asp:ListItem Value="5">Other</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="height: 15px" width="125">
                                                                    <asp:TextBox ID="txt_ServerBrand" runat="server" Visible="False" Width="150px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table height="30" cellspacing="0" cellpadding="2" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td style="width: 125px; height: 18px" class="letter">
                                                                    <strong>IP Address 1</strong>
                                                                </td>
                                                                <td style="width: 194px; height: 18px" class="letter">
                                                                </td>
                                                                <td style="width: 125px; height: 18px" class="letter">
                                                                    <strong>IP Address 2</strong>
                                                                </td>
                                                                <td style="height: 18px" class="letter">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px">
                                                                    IP Address
                                                                </td>
                                                                <td style="width: 194px">
                                                                    <asp:TextBox ID="txtServerIP1" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td style="width: 125px">
                                                                    IP Address
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtServerIP2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                    <asp:Label ID="lbl_SelectProfile" runat="server" Visible="False" Enabled="False"
                                                                        Text="Select Profile"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px">
                                                                    Subnet Mask
                                                                </td>
                                                                <td style="width: 194px">
                                                                    <asp:TextBox ID="txtSubnetMask1" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td style="width: 125px">
                                                                    Subnet Mask
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtSubnetMask2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                    <asp:DropDownList ID="ddlServerProfile" runat="server" Width="150px" CssClass="textbox"
                                                                        OnSelectedIndexChanged="ddlServerProfile_SelectedIndexChanged" AutoPostBack="true"
                                                                        CausesValidation="True">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px">
                                                                    Default Gateway
                                                                </td>
                                                                <td style="width: 194px">
                                                                    <asp:TextBox ID="txtServerDfg1" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td style="width: 125px">
                                                                    Default Gateway
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtServerDfg2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                    <asp:Label ID="lbl_ServerPFName" runat="server" Visible="False" Enabled="False" Text="Server Profile Name"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px; height: 25px">
                                                                    Username
                                                                </td>
                                                                <td style="width: 194px; height: 25px">
                                                                    <asp:TextBox ID="txtServerUser1" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td style="width: 125px; height: 25px">
                                                                    Username
                                                                </td>
                                                                <td style="height: 25px">
                                                                    <asp:TextBox ID="txtServerUser2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                    <asp:TextBox ID="txtProfName" runat="server" Visible="False" Enabled="False" Width="150px"
                                                                        CssClass="textbox" ReadOnly="True">DefaultServer</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px; height: 25px">
                                                                    Password
                                                                </td>
                                                                <td style="width: 194px; height: 25px">
                                                                    <asp:TextBox ID="txtServerPass1" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td style="width: 125px; height: 25px">
                                                                    Password
                                                                </td>
                                                                <td style="height: 25px">
                                                                    <asp:TextBox ID="txtServerPass2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                    <asp:Label ID="lbl_ServerComment" runat="server" Visible="False" Enabled="False"
                                                                        Text="Comment"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px; height: 25px">
                                                                    Primary DNS
                                                                </td>
                                                                <td style="width: 194px; height: 25px">
                                                                    <asp:TextBox ID="txtServerDNS1" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td style="width: 125px; height: 25px">
                                                                    Secondry DNS
                                                                </td>
                                                                <td style="height: 25px">
                                                                    <asp:TextBox ID="txtServerDNS2" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
                                                                    <asp:TextBox ID="txtServerComment" runat="server" Visible="False" Enabled="False"
                                                                        Width="80px" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 125px; height: 25px">
                                                                    IP Type
                                                                </td>
                                                                <td style="width: 194px; height: 25px">
                                                                    <asp:DropDownList ID="ddlIpType" runat="server" Width="150px" CssClass="textbox"
                                                                        OnSelectedIndexChanged="ddlIpType_SelectedIndexChanged" AutoPostBack="True">
                                                                        <asp:ListItem Selected="True" Value="0">Select Type</asp:ListItem>
                                                                        <asp:ListItem Value="1">Public</asp:ListItem>
                                                                        <asp:ListItem Value="2">Private</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="width: 125px; height: 25px">
                                                                    External NAT
                                                                </td>
                                                                <td style="height: 25px">
                                                                    <asp:TextBox ID="txtServerNAT" runat="server" Width="150px" CssClass="textbox" ToolTip="If Your Server IP Is Private then Provide External NAT"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 74px" class="top" colspan="4">
                                                                    <table width="50%" align="center">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td valign="middle" align="center" height="25">
                                                                                    &nbsp;
                                                                                </td>
                                                                                <td style="width: 47px; height: 25px" valign="middle" align="center">
                                                                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="Button" OnClick="btnUpdate_Click" />
                                                                                </td>
                                                                                <td style="height: 25px" valign="middle" align="center">
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <img src="images/body_bottom.jpg" width="732" height="9" />
            </td>
        </tr>
    </table>
</asp:Content>
