<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageFaxToEmail.aspx.cs"
    MasterPageFile="mainService.master" Inherits="CCEstore.ManageFaxToEmail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
 
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table border="0" cellpadding="3" cellspacing="3">
                 <tr>
                        <td colspan="4" class="heading">
                            <strong>
                                <asp:Label ID="lblManage" runat="server" Text="Manage Fax To Email"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Select Phone Number"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="ddlDIDs" runat="server" Skin="Default" Width="178px">
                                <Items>
                                </Items>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Enable"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="ddlFaxToEmail" runat="server" Skin="Default" Width="178px">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" Owner="ddlFaxToEmail"
                                        Selected="True" />
                                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Owner="ddlFaxToEmail" />
                                </Items>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Fax Extension"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="ddlFaxExtension" runat="server" Skin="Default" Width="178px">
                                <Items>
                                </Items>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Fax Email" Visible="false"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFaxToEmail" runat="server" CssClass="TextBox" Width="175px" TabIndex="4" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <asp:HiddenField ID="hfID" runat="server" />
                </table>
                <br />
                <table style="width: 100%; text-align: center;">
                    <tr>
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" Enabled="false" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" Enabled="false" /><br />
                            <br />
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%">
                    <tr>
                        <td style="width: 100%;">
                            <br />
                            <WebCtlIpsmarx:RadGrid ID="rgGroups" runat="server" AllowPaging="True" AllowSorting="true"
                                GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="false">
                                <HeaderContextMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                <MasterTableView>
                                    <Columns>
                                        <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column">
                                        </WebCtlIpsmarx:GridButtonColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="DIDID" HeaderText="ID" UniqueName="ID">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="didNumber" HeaderText="Phone" UniqueName="didNumber"
                                            ItemStyle-Width="50%">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="FaxToEmailEnable" HeaderText="FaxToEmailEnable"
                                            UniqueName="FaxToEmailEnable">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="FaxExtension" HeaderText="FaxExtension"
                                            UniqueName="FaxExtension">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="FaxEmail" HeaderText="FaxEmail" UniqueName="FaxEmail">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                                <FilterMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </FilterMenu>
                                <ClientSettings EnableRowHoverStyle="True">
                                </ClientSettings>
                            </WebCtlIpsmarx:RadGrid>
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
