<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddNewDID.ascx.cs" Inherits="CCEstore.Controls.AddNewDID" %>
<script type="text/javascript" language="javascript">
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);

    function EndRequestEventHandler(sender, args) {
        scrollTo(0, 0)
    }
</script>
<div class="module" style="width: 700px">
    <div class="container">
        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
        <div class="content">
            <table width="100%">
                <tr>
                    <td colspan="6" class="heading">
                        <asp:Label ID="lblTitle" runat="server" Text="Purchase DID" meta:resourcekey="lblTitleResource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <hr />
                        <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                            meta:resourcekey="lblErrorResource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <strong>
                            <asp:Label ID="lblAccountInfo" runat="server" Text="Search DID" meta:resourcekey="lblAccountInfoResource1"
                                ForeColor="#C0C000"></asp:Label></strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td colspan="4">
                        <asp:RadioButton ID="radRagular" runat="server" Checked="True" GroupName="DIDType"
                            Text="Regular DIDs" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radRagular0" runat="server" GroupName="DIDType" Text="Toll Free DIDs" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCountry" runat="server" Text="Country" meta:resourcekey="lblCountryResource1"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadComboBox ID="ddlCountry" runat="server" Width="142px" Enabled="False"
                            meta:resourcekey="rcbAccountResource1">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource1"
                                    Owner="ddlCountry" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource2"
                                    Owner="ddlCountry" />
                            </Items>
                            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                    <td>
                        <asp:Label ID="lblProvince" runat="server" Text="State" meta:resourcekey="lblProvinceResource1"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadComboBox ID="ddlState" runat="server" Width="142px" Enabled="False"
                            meta:resourcekey="rcbAccountResource1">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource1"
                                    Owner="ddlState" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource2"
                                    Owner="ddlState" />
                            </Items>
                            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                    <td>
                        <asp:Label ID="lblCity" runat="server" Text="State" meta:resourcekey="lblProvinceResource1"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadComboBox ID="ddlCity" runat="server" Width="142px" Enabled="False"
                            meta:resourcekey="rcbAccountResource1">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource1"
                                    Owner="ddlCity" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource2"
                                    Owner="ddlCity" />
                            </Items>
                            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center">
                        <asp:Button ID="btnSearchDID" runat="server" Text="Search DID" 
                            CssClass="Button" meta:resourcekey="btnUpdateResource1" />
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
                    <td>
                        <strong>
                            <asp:Label ID="lblCompanyInfo" runat="server" Text="DID Search Result" meta:resourcekey="lblCompanyInfoResource1"
                                ForeColor="#C0C000"></asp:Label></strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <WebCtlIpsmarx:RadGrid ID="gvDIDs" AllowMultiRowSelection="false" runat="server"
                            AllowSorting="True" GridLines="None">
                            <MasterTableView>
                                <Columns>
                                    <WebCtlIpsmarx:GridClientSelectColumn UniqueName="ClientSelectColumn">
                                    </WebCtlIpsmarx:GridClientSelectColumn>
                                </Columns>
                            </MasterTableView>
                            <ClientSettings EnableRowHoverStyle="true">
                                <Selecting AllowRowSelect="True"></Selecting>
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
<div class="module" style="width: 700px">
    <div class="container">
        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
        <div class="content">
            <table width="100%">
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="lblIpPbxSetting" runat="server" Text="Selected DID" meta:resourcekey="lblIpPbxSettingResource1"></asp:Label></strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblExtLimit" runat="server" Text="Number of Extension Available" meta:resourcekey="lblExtLimitResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExtLimit" runat="server" Enabled="False" meta:resourcekey="txtExtLimitResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblNumOfExtension" runat="server" Text="Number of Extensions Used"
                            meta:resourcekey="lblNumOfExtensionResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumOfExtension" runat="server" Enabled="False" meta:resourcekey="txtNumOfExtensionResource1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLengthOfExtension" runat="server" Text="Length of Extension" meta:resourcekey="lblLengthOfExtensionResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLengthExtension" runat="server" Enabled="False" meta:resourcekey="txtLengthExtensionResource1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblNumOfLine" runat="server" Text="Max. Simultaneous Calls" meta:resourcekey="lblNumOfLineResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumOfLine" runat="server" Enabled="False" meta:resourcekey="txtNumOfLineResource1"></asp:TextBox>
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
            <table style="text-align: center; width: 100%;">
                <tr>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Checkout" CssClass="Button" meta:resourcekey="btnUpdateResource1" />
                    </td>
                </tr>
            </table>
        </div>
        <!--[if IE]></v:roundrect><![endif]-->
        <div class="ft">
        </div>
    </div>
</div>
