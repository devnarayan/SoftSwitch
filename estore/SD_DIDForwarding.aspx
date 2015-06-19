<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_DIDForwarding.aspx.cs"
    MasterPageFile="mainService.master" Inherits="CCEstore.SD_DIDForwarding" %>

<%@ Register TagPrefix="pnwc" Namespace="PNayak.Web.UI.WebControls" Assembly="PNayak.Web.UI.WebControls.ExportButton" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <pnwc:ExportButton ID="btnCSV" runat="server" BackColor="#E0E0E0" ExportType="CSV"
        FileNameToExport="Books.csv" meta:resourcekey="btnCSVResource1" Separator="Comma"
        Text="CSV" Visible="False" />
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <table border="0" cellpadding="2" cellspacing="0" width="100%" height="30px">
                    <tr>
                        <td class="heading">
                            <asp:Label ID="Label4" runat="server" Text="DID Forwarding Details" meta:resourcekey="Label4Resource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <!-- <hr /> -->
                        </td>
                    </tr>
                </table>
                <table id="Table5" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table id="Table4" border="0" cellpadding="3" cellspacing="1" width="100%">
                                <tr>
                                    <td colspan="4">
                                        <!-- START INNER INNER -->
                                        <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Label>&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontnormal">
                                        <asp:Label ID="Label6" runat="server" Text="Select Country (*)"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="ddlCountry" runat="server" Width="170px"   
                                             MarkFirstMatch="True" AutoPostBack="True">
                                            <Items>
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox> 
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontnormal">
                                        <asp:Label ID="Label8" runat="server" Text="Select City (*)"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="ddlCity" runat="server" Width="170px"   
                                             MarkFirstMatch="True" AutoPostBack="True">
                                            <Items>
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox> 
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontnormal">
                                        <asp:Label ID="Label2" runat="server" Text="Select Local Number (*)"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="ddlAccessNumber" runat="server" Width="170px"   
                                             MarkFirstMatch="True">
                                            <Items>
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                        <asp:HiddenField ID="txtID" runat="server" />
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr id="name" runat="server">
                                    <td id="Td1" runat="server">
                                        <span style="fontnormal">
                                            <asp:Label ID="Label1" runat="server" Text="Name (*)"></asp:Label></span>
                                    </td>
                                    <td id="Td2" runat="server">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="160px" BackColor="White"></asp:TextBox>&nbsp;
                                    </td>
                                    <td id="Td3" runat="server">
                                    </td>
                                    <td id="Td4" runat="server">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fontnormal">
                                        <asp:Label ID="Label3" runat="server" Text="Phone Number (*)" meta:resourcekey="Label3Resource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="textbox" Width="160px" MaxLength="25"
                                            BackColor="White" meta:resourcekey="txtPhoneNoResource1"></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 30px">
                                    </td>
                                    <td style="height: 30px">
                                    </td>
                                    <td style="height: 30px">
                                    </td>
                                    <td style="height: 30px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="top" colspan="4">
                                        <table id="Table1" align="center" border="0" cellpadding="10" cellspacing="0" width="90%">
                                            <tr>
                                                <td style="height: 21px">
                                                    <div align="center">
                                                        <asp:Button ID="btnReset" runat="server" CausesValidation="False" CssClass="Button"
                                                            Text="Reset" OnClick="btnReset_Click" AutoPostBack="True" meta:resourcekey="btnResetResource1" /></div>
                                                </td>
                                                <td style="height: 21px">
                                                    <div align="center">
                                                        <asp:Button ID="btnAdd" runat="server" CssClass="Button" Text="Add" OnClick="btnAdd_Click"
                                                            meta:resourcekey="btnAddResource1" /></div>
                                                </td>
                                                <td style="height: 21px">
                                                    <div align="center">
                                                        <asp:Button ID="btnModify" runat="server" CssClass="Button" Text="Modify" OnClick="btnModify_Click"
                                                            meta:resourcekey="btnModifyResource1" /></div>
                                                </td>
                                                <td style="height: 21px">
                                                    <div align="center">
                                                        <asp:Button ID="btnDelete" runat="server" CssClass="Button" Text="Delete" OnClientClick="return confirm('Are you sure, You want to remove this number?')"
                                                            OnClick="btnDelete_Click" meta:resourcekey="btnDeleteResource1" /></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tr>
                        <td align="left" class="fontnormal">
                            <asp:Label ID="Label5" runat="server" Text="DID Forwardingl Phone Numbers" meta:resourcekey="Label5Resource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <hr />
                        </td>
                    </tr>
                </table>
                <table id="Table8" align="center" border="0" cellpadding="3" cellspacing="0" width="100%">
                    <tr>
                        
                            <td colspan="4" align="right">
                                <asp:LinkButton ID="Linkbutton1" runat="server" CssClass="PageLink" Text="Export Phone Numbers"
                                    ForeColor="#0066FF" meta:resourcekey="Linkbutton1Resource1" 
                                    onclick="Linkbutton1_Click"></asp:LinkButton><asp:ImageButton
                                        ID="imgExport" Style="cursor: hand" runat="server" ToolTip="Export Data" BorderStyle="None"
                                        ImageUrl="Images/export.gif" OnClick="imgExport_Click"></asp:ImageButton>
                            </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table id="Table6" width="100%">
                                <tr>
                                    <td class="fontnormal">
                                        &nbsp;<WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" AllowPaging="True" AllowSorting="True"
                                            GridLines="None" OnLoad="RadGrid1_Load" meta:resourcekey="rgDetailsResource1"
                                            AutoGenerateColumns="false">
                                            <ClientSettings EnableRowHoverStyle="True">
                                                <Selecting AllowRowSelect="True" />
                                            </ClientSettings>
                                            <MasterTableView>
                                                <Columns>
                                                    <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column">
                                                    </WebCtlIpsmarx:GridButtonColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="DIDForwardingId" HeaderText="ID" UniqueName="ID">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="Name" HeaderText="Name" UniqueName="Name"
                                                        meta:resourcekey="GridBoundColumnResource2">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="DIDNumber" HeaderText="Local Number" UniqueName="Local Numbe"
                                                        Visible="true">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="InternationalNumber" HeaderText="International Number"
                                                        UniqueName="International Number" Visible="true">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                            <FilterMenu>
                                                <CollapseAnimation Duration="200" Type="OutQuint" />
                                            </FilterMenu>
                                            <HeaderContextMenu>
                                                <CollapseAnimation Duration="200" Type="OutQuint" />
                                            </HeaderContextMenu>
                                        </WebCtlIpsmarx:RadGrid>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                            <ajaxIPSmarx:FilteredTextBoxExtender ID="Filteredtextboxextender2" runat="server"
                                Enabled="False" FilterType="Numbers" TargetControlID="txtPhoneNo">
                            </ajaxIPSmarx:FilteredTextBoxExtender>
                        </td>
                    </tr>
                </table>
                <!-- END INNER CONTENT -->
            </td>
        </tr>
    </table>
</asp:Content>
