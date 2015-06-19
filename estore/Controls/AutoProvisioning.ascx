<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AutoProvisioning.ascx.cs" Inherits="CCEstore.Controls.AutoProvisioning" %>
    <table cellpadding="3" cellspacing="3" width="100%" border="0" runat="server" id="tblAutoprov">
        <tr>
            <td colspan="4" class="subtitle">
                <asp:Label ID="lblCreateConfigFile" runat="server" Text="Auto Provisioning (Create Configuration File)"></asp:Label>
            </td>
        </tr>
         <tr>
            <td colspan="4" class="errorbar">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblError" runat="server" Text="" Visible="False"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            
            <td style="width: 117px">
                <asp:Label ID="lblMACAddress" runat="server" Text="MAC Address (*)"></asp:Label>
                
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="txtMAC" runat="server" Width="175px" CssClass="TextBox" 
                    ontextchanged="txtMAC_TextChanged"></asp:TextBox>
            </td>                              
            <td style="width: 125px">
                <asp:Label ID="lblVendor" runat="server" Text="Vendor (*)"></asp:Label>
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <WebCtlIpsmarx:RadComboBox ID="cmbVendor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlVendor_Change"
                            Width="180px">
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem Text="Please Select" Value="" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Cisco" Value="Cisco" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Grand Stream" Value="GrandStream" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Linksys" Value="Linksys" />
                                <WebCtlIpsmarx:RadComboBoxItem Text="Polycom" Value="Polycom" /> 
                                <WebCtlIpsmarx:RadComboBoxItem Text="Snom" Value="Snom" />
                            </Items>
                        </WebCtlIpsmarx:RadComboBox>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Administrator Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAdministratorPassword" runat="server" CssClass="TextBox" Width="175px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblModel" runat="server" Text="Model (*)"></asp:Label>
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <WebCtlIpsmarx:RadComboBox ID="cmbModel" runat="server" Width="180px">
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </WebCtlIpsmarx:RadComboBox>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
     <table style="width: 100%" cellpadding="0" cellspacing="0" class="tableblue">
        <tr class="top" style="height: 35px;">
            <td style="text-align: center;" class="dark">
                <asp:Button ID="btnCreate" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                    BorderWidth="1px" CssClass="btn_style" Text="Create" Width="100px" />
            </td>
        </tr>
    </table>
    <input type="hidden" id="hidsip" runat="server" />