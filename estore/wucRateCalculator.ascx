<%@ Control Language="C#" AutoEventWireup="true" Codebehind="wucRateCalculator.ascx.cs"
    Inherits="CCEstore.wucRateCalculator" %>

            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                <tr>
                    <td align="left">
                        <table id="Table9" height="20" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tr>
                                <td class="heading">
                                    <asp:Label ID="Label3" runat="server" Text="Rate Calculator" meta:resourcekey="Label3Resource1"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <!-- <hr /> -->
                                </td>
                            </tr>
                           
                            <tr>
                                <td>
                                    <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal></td>
                            </tr>
                        </table>
                        <table id="Table10" cellspacing="0" cellpadding="5" width="100%" border="0">
                            
                            <tr>
                                <td colspan="4">
                                    <table border="0" cellpadding="3" cellspacing="0" width="100%">
                                        
                                        <tr>
                                            <td class="fontnormal"><asp:Label ID="Label2" runat="server" Text="Country" meta:resourcekey="Label2Resource1"></asp:Label></td>
                                            <td><WebCtlIpsmarx:RadComboBox ID="ddlToCountry" runat="server" OnSelectedIndexChanged="ddlToCountry_SelectedIndexChanged"
                                        AutoPostBack="True"  MaxHeight="150px" Width="250px" meta:resourcekey="ddlToCountryResource1">
                                        <collapseanimation duration="200" type="OutQuint"></collapseanimation>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                            <td></td>
                                            <td>
                                    <asp:Button ID="btnGo" runat="server" CssClass="Button" Text="Go" OnClick="btnGo_Click"
                                        Width="100px" Visible="False" meta:resourcekey="btnGoResource1" /></td>
                                        </tr>
                                        <tr>
                                            <td class="fontnormal">
                                                <asp:Label ID="Label1" runat="server" Text="Search by" meta:resourcekey="Label1Resource1"></asp:Label></td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox id="ddlSearchBy" Runat="server" meta:resourcekey="ddlSearchByResource1">
                                                    <items>
<WebCtlIpsmarx:RadComboBoxItem runat="server" Text="City Name" Value="City Name" meta:resourcekey="RadComboBoxItemResource1"></WebCtlIpsmarx:RadComboBoxItem>
<WebCtlIpsmarx:RadComboBoxItem runat="server" Text="City Code" Value="City Code" meta:resourcekey="RadComboBoxItemResource2"></WebCtlIpsmarx:RadComboBoxItem>
</items>
                                                    <collapseanimation duration="200" type="OutQuint"></collapseanimation>
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:CheckBox ID="chkExact" runat="server" EnableViewState="False" Text="Exact" meta:resourcekey="chkExactResource1" />
                                            </td>
                                            <td >
                                            </td>
                                            <td style="vertical-align:text-bottom" class="fontnormal">
                                                &nbsp;<asp:Label ID="Label5" runat="server" Text="Page Size" meta:resourcekey="Label5Resource1"></asp:Label>
                                                <WebCtlIpsmarx:RadComboBox id="ddlPageSize" Runat="server" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged"
                                                    AutoPostBack="True" Width="94px" meta:resourcekey="ddlPageSizeResource1">
                                                    <collapseanimation duration="200" type="OutQuint"></collapseanimation>
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="fontnormal">
                                                <asp:Label ID="Label4" runat="server" Text="Search for" meta:resourcekey="Label4Resource1"></asp:Label></td>
                                            <td colspan="2">
                                                <asp:TextBox ID="txtSearchFor" runat="server" CssClass="textbox" Width="200px" meta:resourcekey="txtSearchForResource1"></asp:TextBox></td>
                                            <td>
                                                <asp:Button ID="btnSearch" runat="server" CausesValidation="False" CssClass="Button"
                                                    Text="Search" OnClick="btnSearch_Click" Width="100px" meta:resourcekey="btnSearchResource1" /></td>
                                        </tr>
                                        <tr>
                                            <td width="100">
                                                </td>
                                            <td width="100">
                                                </td>
                                            <td style="width: 39px">
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                    <WebCtlIpsmarx:RadGrid id="dgDetail" runat="server" OnItemDataBound="dgDetail_ItemDataBound"
                                        AllowPaging="True" AllowSorting="True" GridLines="None" OnLoad="dgDetail_Load"
                                        Skin="Office2007" meta:resourcekey="dgDetailResource1">
                                        <headercontextmenu skin="Office2007">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</headercontextmenu>
                                        <mastertableview>

<PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
</mastertableview>
                                        <filtermenu skin="Office2007">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</filtermenu>
                                    </WebCtlIpsmarx:RadGrid></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

  