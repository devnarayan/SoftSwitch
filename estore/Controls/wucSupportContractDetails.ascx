<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSupportContractDetails.ascx.cs"
    Inherits="CCEstore.Controls.wucSupportContractDetails" %>
<table class="resetmargin"   cellspacing="0" cellpadding="0" border="0" style="width: 100%">
    <tr>
        <td class="main" style="width: 100%">
   <asp:Panel ID="pnlcon" runat="server" Visible ="false">
                <table class="table" width="100%" border="0" cellspacing="0" cellpadding="0" height="25">
                    <tr>
                        
                         <td class="subtitle" >
                            Connection Details
                        </td>
                    </tr>
                </table>
                <asp:DataGrid ID="dlgConnDetail" runat="server" BorderColor="Black" BorderWidth="1px"
                    CellPadding="3" Font-Size="9pt" HeaderStyle-BackColor="#aaaadd" AutoGenerateColumns="False"
                    Font-Names="Arial" Width="100%" EnableTheming="True" CssClass="DataGrid" OnItemDataBound="dlgConnDetail_ItemDataBound">
                    <HeaderStyle BackColor="#939FB0" Font-Bold="True" Font-Names="Arial" Font-Size="9pt"
                        ForeColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="Type" HeaderText="Type"></asp:BoundColumn>
                        <asp:BoundColumn DataField="IPAddress" HeaderText="IP Address" SortExpression="ipaddress">
                            <HeaderStyle Width="150px" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Username" HeaderText="User Name" SortExpression="username">
                            <HeaderStyle Width="175px" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Password" HeaderText="Password" SortExpression="password">
                            <HeaderStyle Width="175px" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Port #">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="txt_Port" runat="server" Width="41px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Service">
                            <ItemTemplate>
                                <asp:DropDownList ID="drpService_Grid" runat="server" Width="118px" OnSelectedIndexChanged="drpService_Grid_SelectedIndexChanged"
                                    AutoPostBack="True">
                                    <asp:ListItem Value="0">-Select Service-</asp:ListItem>
                                    <asp:ListItem Value="3389">RDP</asp:ListItem>
                                    <asp:ListItem Value="23">TELNET</asp:ListItem>
                                    <asp:ListItem Value="38000">SSH</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:ButtonColumn CommandName="Select" Text="Connect" ButtonType="PushButton"></asp:ButtonColumn>
                    </Columns>
                    <EditItemStyle Wrap="False" />
                    <AlternatingItemStyle BackColor="Gainsboro" Font-Names="Arial" Font-Size="9pt" />
                    <ItemStyle Font-Names="Arial" Font-Size="9pt" Wrap="False" />
                    <SelectedItemStyle ForeColor="Black" />
                </asp:DataGrid>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Width="100%">
                <table class="table" border="0" cellspacing="0" cellpadding="0" height="25" style="width: 100%">
                    <tr>
                        <td class="subtitle" >Support Package </td>
                    </tr>
                </table>
                <table cellpadding="2" cellspacing="0" style="width: 100%" class="table">
                    <tr>
                        <td style="width: 149px;" class="main">
                            <strong>Accounting Status:</strong>
                        </td>
                        <td style="width: 226px;" class="main">
                            <strong>
                                <asp:Label ID="lblAccountingStatus" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label></strong>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px;" class="main">
                            <strong>Package Type:</strong>
                        </td>
                        <td style="width: 226px;" class="main">
                            <strong>
                                <asp:Label ID="lbl_PackageType" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label></strong>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px;" class="main">
                            <strong>Package Duration(Month):</strong>
                        </td>
                        <td style="width: 226px;" class="main">
                            <strong>
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label></strong>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px;" class="main">
                            <strong>Package Start Date:</strong>
                        </td>
                        <td style="width: 226px;" class="main">
                            <strong>
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label></strong>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px;" class="main">
                            <strong>Package End Date:</strong>
                        </td>
                        <td style="width: 226px;" class="main">
                            <asp:Label ID="lbl_PackageEndDate" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px; height: 19px;" class="main">
                            <strong>Status:</strong>
                        </td>
                        <td style="width: 226px; height: 19px;" class="main">
                            <asp:Label ID="lbl_PackageStatus" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="main" style="height: 19px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px" class="main">
                            <strong>No Of Voucher:</strong>
                        </td>
                        <td style="width: 226px" class="main">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                    <tr id="trTicketsAvailable" runat="server">
                        <td style="width: 149px" class="main">
                            <strong>Tickets Available:</strong>
                        </td>
                        <td style="width: 226px" class="main">
                            <asp:Label ID="lblTicketsAvailable" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="main">
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
