<%@ Control Language="C#" AutoEventWireup="true" Codebehind="wucManageIPAddresses.ascx.cs"
    Inherits="CCEstore.wucManageIPAddresses" %>


<table>
    <tr>
        <td class="heading" colspan="3">
            <asp:Label ID="lblAllowedIPs" runat="server" Text="Manage IP Address" meta:resourcekey="lblAllowedIPsResource1"></asp:Label></td>
    </tr>
    <tr>
        <td colspan="3">
            <!-- <hr /> -->
        </td>
    </tr>
    <tr>
        <td colspan="3">
        <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td width="100px">
            <asp:Label ID="lblIPs" runat="server" Text="IP Address" meta:resourcekey="lblIPsResource1"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtIPAddress1" runat="server" Width="38px" MaxLength="3" onKeyUp="return autoTab(this, 3, event);"
                meta:resourcekey="txtIPAddress1Resource1" CssClass="textbox"></asp:TextBox>.
            <asp:TextBox ID="txtIPAddress2" runat="server" Width="38px" MaxLength="3" onKeyUp="return autoTab(this, 3, event);"
                meta:resourcekey="txtIPAddress2Resource1" CssClass="textbox"></asp:TextBox>.
            <asp:TextBox ID="txtIPAddress3" runat="server" Width="38px" MaxLength="3" onKeyUp="return autoTab(this, 3, event);"
                meta:resourcekey="txtIPAddress3Resource1" CssClass="textbox"></asp:TextBox>.
            <asp:TextBox ID="txtIPAddress4" runat="server" Width="38px" MaxLength="3" onKeyUp="return autoTab(this, 3, event);"
                meta:resourcekey="txtIPAddress4Resource1" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button ID="btnAddIP" runat="server" CssClass="Button" Text="Add" CausesValidation="False"
                meta:resourcekey="btnAddIPResource1" Width="80px" OnClick="btnAddIP_Click"></asp:Button></td>
        <td rowspan="2" style="width: 625px">
            <asp:ListBox ID="lbxIPAddresses" Style="border-right: lightsteelblue 1px solid; border-top: lightsteelblue 1px solid;
                font-size: 11px; border-left: lightsteelblue 1px solid; color: navy; border-bottom: lightsteelblue 1px solid;
                font-family: verdana, arial" runat="server" Width="170px" Height="82px" meta:resourcekey="lbxIPAddressesResource1">
            </asp:ListBox></td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button ID="btnRemoveIP" runat="server" CssClass="Button" Text="Remove" CausesValidation="False"
                meta:resourcekey="btnRemoveIPResource1" Width="80px" OnClick="btnRemoveIP_Click">
            </asp:Button></td>
        <td colspan="3">
        </td>
    </tr>
    <!-- end here-->
</table>

      
      

        