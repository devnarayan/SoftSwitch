<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuViewTicket.ascx.cs"
    Inherits="CCEstore.wuViewTicket" %>
<style type="text/css">
    *
    {
        margin: 0;
        padding: 0;
        vertical-align: middle;
    }
    td
    {
        font-size: 12;
        font-family: Arial, Sans-Serif; /* color: #3c3c3c;*/
    }
    TD
    {
        font-size: 8pt;
        font-family: Verdana;
    }
    .tableblue
    {
        font-family: Verdana, Arial, Helvetica, sans-serif;
    }
    .tableblue A
    {
        margin-left: 2px;
        color: #ffffff;
        margin-right: 0px;
        font-size: 12px;
    }
    a
    {
        color: #577CCC;
    }
</style>
<table border="0" width="100%">
    <tr>
        <td class="maintitle">
            <asp:Label ID="lblHeader" runat="server" EnableViewState="False" Text="View Tickets"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="errorbar">
            <asp:Literal ID="lblMessage" runat="server" EnableViewState="false" ></asp:Literal>
        </td>
    </tr>
    <tr>
        <td>
            <table id="tblContainer" runat="server" align="center" border="0" cellpadding="2"
                cellspacing="0" class="tableblue" width="100%">
                <tr>
                    <td>
                        <table border="0" cellpadding="5" cellspacing="3" width="100%">
                            <tr>
                                <td class="subtitle" colspan="4">
                                    <asp:Label ID="Label7" runat="server" Text="Search Parameters"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;<asp:Label ID="Label8" runat="server" Text="Search On"></asp:Label>
                                </td>
                                <td class="style3">
                                    <webctlipsmarx:radcombobox id="ddlSearchBy" runat="server" autopostback="True" width="150px">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="TicketNumber" Value="2" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Subject" Value="3" />
                                        </items>
                                    </webctlipsmarx:radcombobox>
                                </td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text="Priority"></asp:Label>
                                </td>
                                <td>
                                    <webctlipsmarx:radcombobox id="ddlPriority" runat="server" autopostback="true" width="150px">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <items>
                                        </items>
                                    </webctlipsmarx:radcombobox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label16" runat="server" Text="Search Text"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txtCustomerID" runat="server" CssClass="TextBox" Visible="true"
                                        Width="200px"></asp:TextBox>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="Ticket Type"></asp:Label>
                                </td>
                                <td>
                                    <webctlipsmarx:radcombobox id="ddlTicketType" runat="server" autopostback="true"
                                        width="150px">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <items>
                                        </items>
                                    </webctlipsmarx:radcombobox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:Label ID="Label17" runat="server" Text="Tickets Updated From"></asp:Label>
                                </td>
                                <td class="style3" colspan="1">
                                    <webctlipsmarx:raddatetimepicker id="rdFrom" runat="server" culture="(Default)" width="200px">
                                        <timepopupbutton hoverimageurl="" imageurl="" />
                                        <timeview cellspacing="-1" culture="(Default)">
                                        </timeview>
                                        <calendar usecolumnheadersasselectors="False" userowheadersasselectors="False" viewselectortext="x">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </webctlipsmarx:raddatetimepicker>
                                </td>
                                <td>
                                    <asp:Label ID="lblcat" runat="server" Text="Cateogry"></asp:Label>
                                </td>
                                <td>
                                    <webctlipsmarx:radcombobox id="ddlCategory" runat="server" autopostback="true" width="150px">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <items>
                                        </items>
                                    </webctlipsmarx:radcombobox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:Label ID="Label21" runat="server" Text="Tickets Updated To"></asp:Label>
                                </td>
                                <td class="style3" colspan="1">
                                    <webctlipsmarx:raddatetimepicker id="rdTo" runat="server" culture="(Default)" width="200px">
                                        <timepopupbutton hoverimageurl="" imageurl="" />
                                        <timeview cellspacing="-1" culture="(Default)">
                                        </timeview>
                                        <calendar usecolumnheadersasselectors="False" userowheadersasselectors="False" viewselectortext="x">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </webctlipsmarx:raddatetimepicker>
                                </td>
                                <td>
                                    <asp:Label ID="lblcat0" runat="server" Text="Ticket Status"></asp:Label>
                                </td>
                                <td>
                                    <webctlipsmarx:radcombobox id="ddlTicketStatus" runat="server" autopostback="true"
                                        width="150px">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <items>
                                        </items>
                                    </webctlipsmarx:radcombobox>
                                </td>
                            </tr>
                            <tr id="trpbxextension" runat="server">
                                <td valign="top">
                                    <asp:Label ID="Label22" runat="server" Text="Ticket Opened By"></asp:Label>
                                </td>
                                <td class="style3" colspan="1">
                                    <webctlipsmarx:radcombobox id="ddlTicketsFrom" runat="server" autopostback="True"
                                        width="150px">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="TicketNumber" Value="2" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Subject" Value="3" />
                                        </items>
                                    </webctlipsmarx:radcombobox>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="lblPageSize" runat="server" Text="Page Size"></asp:Label>
                                </td>
                                <td class="style3" colspan="1">
                                    <webctlipsmarx:radcombobox id="ddlPageSize" runat="server" autopostback="True" width="50px">
                                        <items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="10" Value="10" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="25" Value="25" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="50" Value="50" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="100" Value="100" />
                                        </items>
                                        <collapseanimation duration="200" type="OutQuint" />
                                    </webctlipsmarx:radcombobox>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td align="center" bgcolor="#999999" style="height: 30px" valign="top">
                                                <div style="vertical-align: middle; text-align: center">
                                                    <asp:Button ID="btnSubmit" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                                                        BorderWidth="1px" CssClass="btn_style" TabIndex="13" Text="Search" Width="100px" />
                                                </div>
                                            </td>
                                            <td align="center" bgcolor="#999999" style="height: 30px" valign="top">
                                                <div style="vertical-align: middle; text-align: center">
                                                    <asp:Button ID="btnClearSearch" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                                                        BorderWidth="1px" CssClass="btn_style" TabIndex="13" Text="Clear Search" Width="100px" />
                                                </div>
                                            </td>
                                            <td align="center" bgcolor="#999999" style="height: 30px" valign="top">
                                                <div style="vertical-align: middle; text-align: center">
                                                    <asp:Button ID="btnExport" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                                                        BorderWidth="1px" CssClass="btn_style" TabIndex="13" Text="Export" Width="100px" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table width="450px">
                <tr>
                    <td>
                        <webctlipsmarx:radgrid id="rgDetails" runat="server" allowfilteringbycolumn="false"
                            allowpaging="True" allowsorting="True" autogeneratecolumns="false" gridlines="None">
                            <headercontextmenu>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </headercontextmenu>
                            <clientsettings enablerowhoverstyle="True">
                            </clientsettings>
                            <filtermenu>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </filtermenu>
                            <mastertableview allowmulticolumnsorting="false" commanditemdisplay="Bottom">
                                <Columns>
                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" DataField="TicketNumber" HeaderText="Ticket Number"
                                        UniqueName="TicketNumber" />
                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" DataField="Days" HeaderText="Days"
                                        UniqueName="Days" />
                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="True" DataField="Subject" HeaderText="Subject"
                                        UniqueName="Subject" />
                                   
                                    <WebCtlIpsmarx:GridBoundColumn DataField="Status" HeaderText="Status" UniqueName="Status" />
                                    <WebCtlIpsmarx:GridBoundColumn DataField="Category" HeaderText="Category" UniqueName="Category" />
                                    <WebCtlIpsmarx:GridBoundColumn DataField="Priority" HeaderText="Priority" UniqueName="Priority" />                                    
                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="False" DataField="CreationDate" HeaderText="CreationDate"
                                        UniqueName="CreationDate" />
                                    <WebCtlIpsmarx:GridBoundColumn AllowFiltering="False" DataField="LastupdatedDate"
                                        HeaderText="LastupdatedDate" UniqueName="LastupdatedDate" />
                                        <WebCtlIpsmarx:GridBoundColumn  DataField="Voucher" HeaderText="Voucher<br>Deducted" UniqueName="Voucher" />

                                </Columns>
                                <CommandItemTemplate>
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                </CommandItemTemplate>
                            </mastertableview>
                            <pagerstyle mode="Slider" />
                        </webctlipsmarx:radgrid>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
