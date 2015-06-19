<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IPPBXAccountSummary.aspx.cs" Inherits="CCEstore.IPPBXAccountSummary" MasterPageFile="~/mainService.Master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                
                
                <table width="100%">
                    <tr>
                        <td colspan="4" class="heading">
                            <asp:Label ID="Label1" runat="server" Text="Account Summary" meta:resourcekey="Label1Resource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                                meta:resourcekey="lblErrorResource1"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" width="100px">
                            <asp:Label ID="Label2" runat="server" Text="Balance " meta:resourcekey="Label2Resource1"></asp:Label>(<%= PayCentral.Library.General.GetCurrencySymbol() %>)
                        </td>
                        <td>
                            <asp:TextBox ID="txtAccountBalance" runat="server" ReadOnly="True" CssClass="NotEditable"
                                meta:resourcekey="txtAccountBalanceResource1"></asp:TextBox></td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" width="100px" style="height: 23px">
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
                        <td colspan="2" width="100px">
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
                                CssClass="Button" meta:resourcekey="btnDisplayResource1" /></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <WebCtlIpsmarx:RadGrid ID="dgDetails" runat="server" AllowPaging="True" AllowSorting="True"
                                GridLines="None" OnLoad="dgDetails_Load" Skin="Sunset" meta:resourcekey="dgDetailsResource1">
                                <MasterTableView>
                                    <RowIndicatorColumn>
                                        <HeaderStyle Width="20px" />
                                    </RowIndicatorColumn>
                                    <ExpandCollapseColumn>
                                        <HeaderStyle Width="20px" />
                                    </ExpandCollapseColumn>
                                </MasterTableView>
<HeaderContextMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

<FilterMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
                            </WebCtlIpsmarx:RadGrid></td>
                    </tr>
                </table>
                
                
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
