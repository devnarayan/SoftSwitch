<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucManageCallRecord.ascx.cs"
    Inherits="CCEstore.wucManageCallRecord" %>
<style type="text/css">
    .RadPicker
    {
        vertical-align: middle;
    }
    
    .RadPicker .rcTable
    {
        table-layout: auto;
    }
    
    .RadPicker .RadInput
    {
        vertical-align: baseline;
    }
    
    .RadInput_Default
    {
        font: 12px "segoe ui" ,arial,sans-serif;
    }
    
    .RadInput
    {
        vertical-align: middle;
    }
    
    .RadPicker_Sunset .rcCalPopup
    {
        background-position: 0 0;
    }
    
    .RadPicker_Sunset .rcCalPopup
    {
        background-image: url('mvwres://Telerik.Web.UI, Version=2010.2.929.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Sunset.Calendar.sprite.gif');
    }
    
    .RadPicker .rcCalPopup
    {
        display: block;
        overflow: hidden;
        width: 22px;
        height: 22px;
        background-color: transparent;
        background-repeat: no-repeat;
        text-indent: -2222px;
        text-align: center;
    }
    
    .RadPicker_Sunset .rcTimePopup
    {
        background-position: 0 -100px;
    }
    
    .RadPicker_Sunset .rcTimePopup
    {
        background-image: url('mvwres://Telerik.Web.UI, Version=2010.2.929.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Sunset.Calendar.sprite.gif');
    }
    
    .RadPicker .rcTimePopup
    {
        display: block;
        overflow: hidden;
        width: 22px;
        height: 22px;
        background-color: transparent;
        background-repeat: no-repeat;
        text-indent: -2222px;
        text-align: center;
    }
    
    .style1
    {
        width: 100%;
        border-style: none;
        border-color: inherit;
        border-width: 0;
        margin: 0;
        padding: 0;
    }
    .style2
    {
        width: 100%;
        vertical-align: middle;
    }
    .style3
    {
        position: relative;
        z-index: 2;
        text-decoration: none;
        margin: 0 2px;
    }
</style>
<table width="100%">
    <tr>
        <td colspan="3" class="heading">
            <asp:Label ID="Label1" runat="server" Text="Manage Call Record" meta:resourcekey="Label1Resource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <!-- <hr /> -->
            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                meta:resourcekey="lblErrorResource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="100px" class="fontnormal">
            <asp:Label ID="lblExtensionDID" runat="server" Text="Extension" meta:resourcekey="lblExtensionDIDResource1"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlExtensionDID" runat="server" MaxHeight="150px"
                Width="250px" meta:resourcekey="ddlExtensionsResource1">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    <tr id="trmessagetype" runat="server">
        <td width="100px" class="fontnormal">
            <asp:Label ID="Label3" runat="server" Text="Message Type" meta:resourcekey="Label3Resource1"></asp:Label>
        </td>
        <td style="height: 23px">
            <WebCtlIpsmarx:RadComboBox ID="ddlMessageTypes" runat="server" MaxHeight="150px"
                Width="250px" meta:resourceKey="ddlToCountryResource1">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="All Messages" Value="All" meta:resourcekey="RadComboBoxItemResource1" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="New Messages"
                        Value="New" meta:resourcekey="RadComboBoxItemResource2" />
                </Items>
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
        <td style="height: 23px">
        </td>
        <td style="height: 23px">
        </td>
    </tr>
    <tr>
        <td width="100px" style="height: 23px">
            <asp:Label ID="Label2" runat="server" Text="Period From (*)" meta:resourcekey="Label3Resource1"></asp:Label>
        </td>
        <td style="height: 23px" colspan="3">
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
    </tr>
    <tr>
        <td width="100px">
            <asp:Label ID="Label4" runat="server" Text="Period To (*)" meta:resourcekey="Label4Resource1"></asp:Label>
        </td>
        <td colspan="3">
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
    </tr>
    <tr id="trminlength" runat="server">
        <td width="100px" class="fontnormal">
            <asp:Label ID="Label5" runat="server" Text="Min. Length (*)"></asp:Label>
        </td>
        <td style="height: 23px">
            <WebCtlIpsmarx:RadNumericTextBox ID="txtMinLength" runat="server" Culture="English (United States)"
                MaxLength="5" MaxValue="99999" MinValue="0" Value="0" Width="75px">
                <NumberFormat DecimalDigits="0" GroupSizes="5" />
            </WebCtlIpsmarx:RadNumericTextBox>
        </td>
        <td style="height: 23px">
            &nbsp;
        </td>
        <td style="height: 23px">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <table id="Table1" align="center" border="0" cellpadding="10" cellspacing="0" width="90%">
                <tr>
                    <td style="height: 21px; width: 50%">
                        <div align="center">
                            <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Display"
                                CssClass="Button" meta:resourcekey="btnDisplayResource1" />
                        </div>
                    </td>
                    <td style="height: 21px; width: 50%">
                        <div align="center">
                            <asp:Button ID="btnDeleteSelected" runat="server" OnClick="btnDeleteSelected_Click"
                                Text="Delete Selected" CssClass="Button" Width="110px" meta:resourcekey="btnDeleteSelectedResource1" />
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <WebCtlIpsmarx:RadGrid ID="dgDetails" runat="server" GridLines="None" OnLoad="dgDetails_Load"
                Skin="Sunset" meta:resourcekey="dgDetailsResource1" AutoGenerateColumns="False" AllowPaging="true" PageSize="300"
                OnItemCommand="dgDetails_ItemCommand">
                <MasterTableView>
                    <Columns>
                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn1" meta:resourcekey="GridTemplateColumnResource1">
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="chkSelectAll_CheckChanged"
                                    meta:resourcekey="chkSelectAllResource1" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" meta:resourcekey="chkSelectResource1" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                        <WebCtlIpsmarx:GridTemplateColumn HeaderText="New" UniqueName="TemplateColumn2" meta:resourcekey="GridTemplateColumnResource2">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkNewFile" runat="server" Enabled="False" Checked='<%# int.Parse(DataBinder.Eval(Container.DataItem, "NewFile").ToString())==1 %>'
                                    meta:resourcekey="chkNewFileResource1" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="From" HeaderText="From" UniqueName="column1"
                            meta:resourcekey="GridBoundColumnResource1">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="To" HeaderText="To" UniqueName="column5"
                            meta:resourcekey="GridBoundColumnResource5">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="Date" HeaderText="Date" UniqueName="column2"
                            meta:resourcekey="GridBoundColumnResource2">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="FileName" HeaderText="FileName" UniqueName="column3"
                            Visible="false" meta:resourcekey="GridBoundColumnResource3">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="Size" HeaderText="Length" UniqueName="column4"
                            meta:resourcekey="GridBoundColumnResource4">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3" meta:resourcekey="GridTemplateColumnResource3">
                            <HeaderTemplate>
                                Listen
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbListen" Text="Listen" AutoPostBack="True" runat="server" CommandName="Listen"
                                    meta:resourcekey="lbListenResource1" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
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
