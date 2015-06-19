<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSIPtrunkingAssignedDID.ascx.cs"
    Inherits="CCEstore.Controls.SipTrunking.wucSIPtrunkingAssignedDID" %>
<table class="toptitle" height="18" cellspacing="0" cellpadding="0" width="100%"
    border="0">
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4" class="heading">
            <strong>
                <asp:Label ID="Label1" runat="server" Text="Assigned DID"></asp:Label></strong>
        </td>
        <td class="top" align="right">
        </td>
    </tr>
</table>
<br />
<WebCtlIpsmarx:RadGrid ID="rgAssignedDID" runat="server" AllowPaging="True" AllowSorting="True"
    GridLines="None" Skin="Sunset" AutoGenerateColumns="False">
    <HeaderContextMenu Skin="Office2007">
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </HeaderContextMenu>
    <MasterTableView CommandItemDisplay="Bottom">
        <Columns>
            <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="GroupName" SortExpression="GroupName"
                ReadOnly="True" HeaderText="Group">
            </WebCtlIpsmarx:GridBoundColumn>
            <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="Name" SortExpression="Name"
                ReadOnly="True" HeaderText="Name">
            </WebCtlIpsmarx:GridBoundColumn>
            <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="CityName" SortExpression="CityName"
                ReadOnly="True" HeaderText="City">
            </WebCtlIpsmarx:GridBoundColumn>
            <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="DIDNumber" SortExpression="DIDNumber"
                ReadOnly="True" HeaderText="DID">
            </WebCtlIpsmarx:GridBoundColumn>
            <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="ExcludeFlag" SortExpression="ExcludeFlag"
                ReadOnly="True" HeaderText="DID Status">
            </WebCtlIpsmarx:GridBoundColumn>
        </Columns>
        <CommandItemTemplate>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </CommandItemTemplate>
    </MasterTableView>
    <PagerStyle Mode="Slider" />
    <FilterMenu Skin="Office2007">
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </FilterMenu>
</WebCtlIpsmarx:RadGrid>
