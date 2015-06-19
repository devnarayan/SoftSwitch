<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="wucAutoProvisioning.ascx.cs"
    Inherits="SipKernel.wucAutoProvisioning" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<table cellpadding="0" cellspacing="0" width="100%" border="0">
    <tr>
        <td colspan="4" class="subtitle">
            <asp:Label ID="lblCreateConfigFile" runat="server" Text="Auto Provisioning (Create Configuration File)"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4" class="errorbar">
            <input type="hidden" id="hidsip" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblError" runat="server" Text="" Visible="False"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td style="width: 117px">
            <asp:Label ID="lblVendor" runat="server" Text="Vendor (*)"></asp:Label>
        </td>
        <td style="width: 250px">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <WebCtlIpsmarx:RadComboBox ID="cmbVendor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlVendor_Change"
                        Width="180px">
                        <CollapseAnimation Duration="200" Type="OutQuint" />
                        <Items>
                            <WebCtlIpsmarx:RadComboBoxItem Text="Please Select" Value="" />
                            <WebCtlIpsmarx:RadComboBoxItem Text="Grand Stream" Value="GrandStream" />
                            <WebCtlIpsmarx:RadComboBoxItem Text="Linksys/Cisco" Value="Linksys" />
                            <WebCtlIpsmarx:RadComboBoxItem Text="Polycom" Value="Polycom" />
                            <WebCtlIpsmarx:RadComboBoxItem Text="Snom" Value="Snom" />
                            <WebCtlIpsmarx:RadComboBoxItem Text="Yealink" Value="Yealink" />
                        </Items>
                    </WebCtlIpsmarx:RadComboBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td style="width: 125px">
            <asp:Label ID="lblMACAddress" runat="server" Text="MAC Address (*)"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMAC" runat="server" Width="175px" CssClass="TextBox" OnTextChanged="txtMAC_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblModel" runat="server" Text="Model (*)"></asp:Label>
        </td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <WebCtlIpsmarx:RadComboBox ID="cmbModel" runat="server" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="cmbModel_Change">
                        <CollapseAnimation Duration="200" Type="OutQuint" />
                    </WebCtlIpsmarx:RadComboBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Administrator Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAdministratorPassword" runat="server" CssClass="TextBox" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblFactoryReset" runat="server" Text="Allow Factory  Reset"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                <ContentTemplate>
                    <WebCtlIpsmarx:RadComboBox ID="ddlAllowFactoryReset" runat="server" Width="180px">
                        <Items>
                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" />
                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" />
                        </Items>
                        <CollapseAnimation Duration="200" Type="OutQuint" />
                    </WebCtlIpsmarx:RadComboBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblDialPlans" runat="server" Text="Dial Plans" Visible="false"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td colspan="3">
            <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="txtDialPlans" runat="server" CssClass="TextBox" Width="475px" Visible="false"
                        ToolTip="The Dial Plan specifies how to interpret digit sequences dialed by the user, and how to convert those sequences into an outbound dial string."></asp:TextBox><br />
                    <b>
                        <asp:Label ID="lblHelpDialPlans" runat="server" Text="" Visible="false"></asp:Label></b>
                    <asp:Button runat="server" Text="Reset"></asp:Button>
                    <asp:Button ID="defaultDP" runat="server" Text="Default"></asp:Button>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <font color="#3366FF">1-Do a factory reset on your IP phone.<br />
                        <!-- 2012.06.25 David Y -->
                        2-Click on Add/Modify button to save the information on the GUI and re-generate
                        the provisioning file
                        <br />
                        <asp:Label runat="server" ID="lblNoteVendor" Text=""></asp:Label>
                    </font>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
</table>
<table style="width: 100%; visibility: hidden;" cellpadding="0" cellspacing="0" class="tableblue">
    <tr class="top" style="height: 35px;">
        <td style="text-align: center;" class="dark">
            <asp:Button ID="btnCreate" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                BorderWidth="1px" CssClass="btn_style" Text="Create" Width="100px" Visible="false" />
        </td>
    </tr>
</table>
