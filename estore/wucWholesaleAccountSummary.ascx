<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucWholesaleAccountSummary.ascx.cs"
    Inherits="CCEstore.wucWholesaleAccountSummary"%>
<table width="100%">
    <tr>
        <td colspan="4" class="heading">
            <asp:Label ID="Label1" runat="server" Text="Account Summary" meta:resourcekey="Label1Resource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <!-- <hr /> -->
            <asp:Label ID="lblInactive" runat="server" Text="Your account is Inactive" ForeColor="Red"
                Visible="False" meta:resourcekey="lblInactiveResource1" />
            <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
        </td>
    </tr>
    <tr id="trPIN" runat="server">
        <td colspan="2" width="150px" class="fontnormal">
            <asp:Label ID="lblPin" runat="server" Text="PIN" meta:resourcekey="lblPinResource1"></asp:Label>
        </td>
        <td colspan="3">
            <asp:TextBox ID="txtPin" runat="server" ReadOnly="True" CssClass="NotEditable" meta:resourcekey="txtPinResource1" />
        </td>
    </tr>
    <tr>
        <td colspan="2" width="150px" class="fontnormal">
            <asp:Label ID="lblName" runat="server" Text="Name" meta:resourcekey="lblNameResource1"></asp:Label>
        </td>
        <td colspan="3">
            <asp:TextBox ID="txtName" runat="server" ReadOnly="True" CssClass="NotEditable" meta:resourcekey="txtNameResource1" />
        </td>
    </tr>
    <tr id="trdeposit" runat="server">
        <td colspan="2" width="150px" class="fontnormal" nowrap>
            <asp:Label ID="Label2" runat="server" Text="Available Balance" meta:resourcekey="Label2Resource2"></asp:Label>(<%= PayCentral.Library.General.GetCurrencySymbol() %>)
        </td>
        <td>
            <asp:TextBox ID="txtAccountBalance" runat="server" ReadOnly="True" CssClass="NotEditable"
                meta:resourcekey="txtAccountBalanceResource1"></asp:TextBox>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td colspan="2" width="150px" class="fontnormal">
            <asp:Label ID="Label3" runat="server" Text="Period From (*)" meta:resourcekey="Label3Resource1"></asp:Label>
        </td>
        <td style="height: 23px">
            <WebCtlIpsmarx:RadDateTimePicker ID="rdtpFrom" runat="server" Culture="English (United States)"
                meta:resourcekey="rdtpFromResource1">
                <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                <TimeView CellSpacing="-1" Culture="English (United States)">
                </TimeView>
                <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                </Calendar>
                <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                <DateInput LabelCssClass="" Width="">
                </DateInput>
            </WebCtlIpsmarx:RadDateTimePicker>
        </td>
        <td style="height: 23px">
        </td>
        <td style="height: 23px">
        </td>
    </tr>
    <tr>
        <td colspan="2" width="150px" class="fontnormal">
            <asp:Label ID="Label4" runat="server" Text="Period To (*)" meta:resourcekey="Label4Resource1"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadDateTimePicker ID="rdtpTo" runat="server" Culture="English (United States)"
                meta:resourcekey="rdtpToResource1">
                <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                <TimeView CellSpacing="-1" Culture="English (United States)">
                </TimeView>
                <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                </Calendar>
                <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                <DateInput LabelCssClass="" Width="">
                </DateInput>
            </WebCtlIpsmarx:RadDateTimePicker>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
        <td>
            <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display"
                CssClass="Button" meta:resourcekey="btnDisplayResource1" />
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <WebCtlIpsmarx:RadGrid ID="dgDetails" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="false" 
                GridLines="None" OnLoad="dgDetails_Load" Skin="Sunset" meta:resourcekey="dgDetailsResource1">
                <MasterTableView>
                    <RowIndicatorColumn>
                        <HeaderStyle Width="20px" />
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn>
                        <HeaderStyle Width="20px" />
                    </ExpandCollapseColumn>


                    <Columns>
                    <WebCtlIpsmarx:GridBoundColumn UniqueName="Type" DataField="Type" HeaderText='Service Type'></WebCtlIpsmarx:GridBoundColumn>
                    <WebCtlIpsmarx:GridBoundColumn UniqueName="ServiceID" DataField="ServiceID" HeaderText="ServiceID/(Ext. for PBX)"></WebCtlIpsmarx:GridBoundColumn>
                    <WebCtlIpsmarx:GridBoundColumn UniqueName="Usage" DataField="Usage" HeaderText="Usage (Min)"></WebCtlIpsmarx:GridBoundColumn>
                    <WebCtlIpsmarx:GridBoundColumn UniqueName="Cost" DataField="Cost" HeaderText="Cost($)"></WebCtlIpsmarx:GridBoundColumn>
                    <WebCtlIpsmarx:GridBoundColumn UniqueName="Calls" DataField="Calls" HeaderText="Calls"></WebCtlIpsmarx:GridBoundColumn>
                    </Columns>

                </MasterTableView>
                <HeaderContextMenu Skin="Sunset">
                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                </HeaderContextMenu>
                <FilterMenu Skin="Sunset">
                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                </FilterMenu>
            </WebCtlIpsmarx:RadGrid>
        </td>
    </tr>
    
</table>
