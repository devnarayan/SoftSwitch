<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchDID.ascx.cs" Inherits="CCEstore.Controls.SearchDID" %>

<table width="100%">
    <tr>
        <td class="main_container">
            <table width="100%">
                <tr>
                    <td class="subtitle">
                        <asp:Label ID="Label1" runat="server" Text="Find DID"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="errorbar">
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table id="Table4" align="center" border="0" cellpadding="5" cellspacing="0" class="tableblue"
                            width="100%">
                            <tr>
                                <td class="top">
                                    <asp:Label ID="lblSrchFor5" runat="server" Text="Search By"></asp:Label>
                                </td>
                                <td class="top">
                                    <WebCtlIpsmarx:RadComboBox ID="ddlSearchBy" runat="server" Width="160px" AutoPostBack="True">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Region" Value="1" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="City Code" Value="2" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td class="top">
                                    <asp:Label ID="lblSrchFor0" runat="server" Text="Provider"></asp:Label>
                                </td>
                                <td class="top">
                                    <WebCtlIpsmarx:RadComboBox ID="ddlDIDProvider" runat="server"  Width="150px">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Company Name"
                                                Value="CompanyName" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Customer ID" Value="CustomerID" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Email" Value="Email" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="First Name" Value="FirstName" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Last Name" Value="LastName" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Phone Number" Value="Phone Number" />
                                        </Items>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td class="top">
                                    <asp:Label ID="lblSrchFor1" runat="server" Text="DID Type"></asp:Label>
                                </td>
                                <td class="top">
                                    <WebCtlIpsmarx:RadComboBox ID="ddlDIDType" runat="server"  Width="150px">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="All" Value="0" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Regular" Value="1" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Toll Free" Value="2" />
                                        </Items>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr id="trregion" runat="server">
                                <td class="top">
                                    <asp:Label ID="lblSrchFor" runat="server" Text="Country"></asp:Label>
                                </td>
                                <td class="top">
                                    <WebCtlIpsmarx:RadComboBox ID="ddlCountry" runat="server" Width="160px" AutoPostBack="True"
                                        MarkFirstMatch="True">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Regular" Value="1" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Toll Free" Value="2" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td class="top">
                                    <asp:Label ID="lblSrchFor2" runat="server" Text="State"></asp:Label>
                                </td>
                                <td class="top" style="margin-left: 40px;">
                                    <WebCtlIpsmarx:RadComboBox ID="ddlProvince" runat="server" Width="160px" AutoPostBack="True"
                                        MarkFirstMatch="True">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Regular" Value="1" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Toll Free" Value="2" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td class="top">
                                    <asp:Label ID="lblSrchFor3" runat="server" Text="City"></asp:Label>
                                </td>
                                <td class="top">
                                    <WebCtlIpsmarx:RadComboBox ID="ddlCity" runat="server" Width="160px" MarkFirstMatch="True">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Regular" Value="1" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Toll Free" Value="2" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr id="trcitycode" runat="server" visible="false">
                                <td class="top">
                                    <asp:Label ID="lblSrchFor4" runat="server" Text="Search City Code"></asp:Label>
                                    <br />
                                </td>
                                <td class="top" colspan="3">
                                    <asp:TextBox ID="txtSearchFor" runat="server" CssClass="TextBox" meta:resourcekey="txtSearchForResource1"
                                        Width="150px"></asp:TextBox>
                                    <asp:CheckBox ID="chkExact" runat="server" EnableViewState="False" meta:resourcekey="chkExactResource1"
                                        Text="Exact" />
                                    <br />
                                    <span style="color: #3366ff">
                                        <asp:Label ID="Label89" runat="server" ForeColor="#0033FF" Font-Size="8pt" meta:resourcekey="Label3Resource1"
                                            Text="Note: City code must include country code"></asp:Label></span>
                                </td>
                                <td class="top">
                                    &nbsp;
                                </td>
                                <td class="top" valign="top">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" colspan="6">
                                    <table width="100%" style="border-style: none">
                                        <tr>
                                            <td width="50%">
                                                <div align="center">
                                                    <asp:Button ID="btnSearch" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                                                        BorderWidth="1px" CssClass="btn_style" meta:resourcekey="btnSearchResource1"
                                                        Text="Search" Width="100px" OnClick="btnSearch_Click" />
                                                </div>
                                            </td>
                                            <td width="50%">
                                                <div align="center">
                                                    <input id="Button1" type="button" class="btn_style" value="Close" style="width: 93px"
                                                        onclick="closeWindow()" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="trDetail" runat="server">
                    <td width="100%">
                        <WebCtlIpsmarx:RadGrid ID="dgDetail" runat="server" AllowPaging="True" AllowSorting="True"
                            GridLines="None" OnItemCommand="dgDetail_ItemCommand" OnItemCreated="dgDetail_ItemCreated"
                            OnPageIndexChanged="dgDetail_PageIndexChanged">
                            <HeaderContextMenu Skin="Office2007">
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </HeaderContextMenu>
                            <MasterTableView CommandItemDisplay="Bottom">
                                <Columns>
                                    <WebCtlIpsmarx:GridTemplateColumn UniqueName="Select" HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkDID" runat="server" AutoPostBack="false" meta:resourcekey="optToResource1" />
                                        </ItemTemplate>
                                    </WebCtlIpsmarx:GridTemplateColumn>
                                </Columns>
                                <CommandItemTemplate>
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                </CommandItemTemplate>
                            </MasterTableView>
                            <PagerStyle Mode="Slider" />
                            <FilterMenu Skin="Office2007">
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </FilterMenu>
                            <ClientSettings EnableRowHoverStyle="True">
                                <Selecting AllowRowSelect="True" />                                
                            </ClientSettings>
                        </WebCtlIpsmarx:RadGrid>
                    </td>                    
                </tr>
                <tr>
                <td>
                    <asp:Button ID="btnAddDIDs" runat="server" Visible="false" Text="Add Selected DID" />
                </td>                
                </tr>
            </table>
        </td>
    </tr>
</table>
<script language="javascript">
    function GetRadWindow() {
        var oWindow = null;
        if (window.radWindow)
            oWindow = window.radWindow;
        else if (window.frameElement.radWindow)
            oWindow = window.frameElement.radWindow;
        return oWindow;
    }  
    function closeWindow() {
        
        var currentWindow = GetRadWindow();

        currentWindow.argument = "reload";
        currentWindow.Close();
    }
</script>