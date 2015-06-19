<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSIPTrunkingRoutingSetting.ascx.cs"
    Inherits="CCEstore.Controls.wucSIPTrunkingRoutingSetting" %>
<style type="text/css">
    *
    {
        margin: 0;
        padding: 0;
        vertical-align: middle;
    }
    .TextBox
    {
        margin-left: 0;
    }
    .style10
    {
        width: 314px;
    }
    .style4
    {
        width: 100px;
    }
    .style5
    {
        width: 184px;
    }
    .style6
    {
        width: 109px;
    }
</style>
 
            <table width="100%" cellpadding="3" cellspacing="3" border="0">
                <tr>
                    <td colspan="5">
                        <asp:Label ID="lblError" runat="server" EnableViewState="False" Font-Bold="True"
                            Font-Size="12px" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" class="subtitle">
                        <asp:Label ID="Label1" runat="server" CssClass="subtitle" Text="Routing Setting"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label101" runat="server" ForeColor="Black">Routing Priority</asp:Label>
                    </td>
                    <td colspan="4">
                        <WebCtlIpsmarx:RadComboBox ID="ddlSettingPriority" runat="server" Width="350px" AutoPostBack="true">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="IP Address and Fail Over Forward Number"
                                    Value="I-P" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="SIP Device and Fail Over Forward Number"
                                    Value="S-P" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Alway Foward to Phone Number"
                                    Value="P" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label102" runat="server" ForeColor="Black">Route to Primary IP</asp:Label>
                    </td>
                    <td class="style9">
                        <asp:Label ID="lblFromIP" runat="server" meta:resourcekey="lblIPsResource1" Style="display: none"
                            Text="From&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                        <asp:TextBox ID="txtIPAddress1" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress1Resource1"
                            onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>.&nbsp;<asp:TextBox
                                ID="txtIPAddress2" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress2Resource1"
                                onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>.&nbsp;<asp:TextBox
                                    ID="txtIPAddress3" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress3Resource1"
                                    onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>.
                        <asp:TextBox ID="txtIPAddress4" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress4Resource1"
                            onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;
                    </td>
                    <td class="style9" colspan="2">
                        <asp:Panel runat="server" Enabled="false" ID="pnlIP2">
                            <table class="style1" style="border: 0px !important;">
                                <tr>
                                    <td class="style10">
                                        <asp:Label ID="Label103" runat="server" ForeColor="Black">If primary does not resposnd, Route to secondary IP:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtIPAddress5" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress1Resource1"
                                            onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>.&nbsp;<asp:TextBox
                                                ID="txtIPAddress6" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress2Resource1"
                                                onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>.&nbsp;<asp:TextBox
                                                    ID="txtIPAddress7" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress3Resource1"
                                                    onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>.&nbsp;<asp:TextBox
                                                        ID="txtIPAddress8" runat="server" CssClass="textbox" MaxLength="3" meta:resourcekey="txtIPAddress4Resource1"
                                                        onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;&nbsp;
                    </td>
                    <td class="style9">
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label104" runat="server" ForeColor="Black">Route to registered SIP device</asp:Label>
                    </td>
                    <td class="style3" colspan="4">
                        <asp:Panel runat="server" ID="pnlSIP">
                            <table class="style1" style="border: 0px !important;">
                                <tr>
                                    <td class="style4">
                                        <asp:Label ID="Label105" runat="server" ForeColor="Black">SIP Username</asp:Label>
                                    </td>
                                    <td class="style5">
                                        <asp:TextBox ID="txtusernameprefix" runat="server" BackColor="#E0E0E0" CssClass="textbox"
                                            Font-Bold="True" ReadOnly="True" Width="25px">100</asp:TextBox><asp:TextBox ID="txtSIPLogin" runat="server" CssClass="textbox" Width="125px"></asp:TextBox>
                                    </td>
                                    <td class="style6">
                                        <asp:Label ID="Label106" runat="server" ForeColor="Black">SIP Password</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSIPPassword" runat="server" CssClass="textbox" meta:resourcekey="txtIPAddress4Resource1"
                                            Width="100px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;&nbsp;
                    </td>
                    <td class="style9">
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <asp:Panel runat="server" ID="pnlAlwaysForward">
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label107" runat="server" ForeColor="Black">Always forward to this number</asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtSIPTrunkingForwardNumber" runat="server" CssClass="textbox" MaxLength="15"
                                meta:resourcekey="txtIPAddress4Resource1" Width="171px"></asp:TextBox><br />
                            <asp:Label ID="Label108" runat="server" ForeColor="#0033FF" meta:resourcekey="Label3Resource1"
                                Text="Format: Country code + Area code + Phone Number"></asp:Label>
                        </td>
                        <td>
                            &#160;&nbsp;
                        </td>
                        <td>
                            &#160;&nbsp;
                        </td>
                        <td>
                            &#160;&nbsp;
                        </td>
                    </tr>
                </asp:Panel>
                <tr>
                    <td colspan="5" style="text-align: center">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Submit"></asp:Button>
                    </td>
                </tr>
            </table>
         
