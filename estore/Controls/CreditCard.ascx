<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CreditCard.ascx.cs" Inherits="CCEstore.Controls.CreditCard" %>
                        <table cellpadding="0" cellspacing="5" border="0" bgcolor="#f4f4f4" width="650">
                            <tr>
                                <td class="heading">  <asp:CheckBox ID="chkSaveCCInfo" runat="server" 
                                        CssClass="fontnormal" Text="Save my credit card " OnCheckedChanged="chkRecharge_CheckedChanged"
                            Font-Bold="True" AutoPostBack="True" Checked="True" 
                                        meta:resourcekey="chkSaveCCInfoResource1" />
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Panel ID="pnlCreditCard" runat="server" Width="100%" meta:resourcekey="pnlCreditCardResource1">
                                                <table id="TABLE1" border="0" cellpadding="3" cellspacing="0" width="650">
                                                    <tr>
                                                        <td width="5%">
                                                        </td>
                                                        <td class="fontnormal" nowrap="" style="height: 28px">
                                                            <asp:Label ID="Label8" runat="server" Text="Credit Card Type(*)" meta:resourcekey="Label8Resource1"></asp:Label>
                                                        </td>
                                                        <td colspan="3" style="height: 28px">
                                                            <asp:DropDownList ID="ddlCTypes" runat="server" CssClass="textbox" Width="241px"
                                                                >
                                                                <asp:ListItem Text="VISA CARD" Value="4"></asp:ListItem>
                                                                <asp:ListItem Text="MASTER CARD" Value="3"></asp:ListItem>
                                                                <asp:ListItem Text="AMERICAN EXPRESS" Value="1"></asp:ListItem>
                                                                <asp:ListItem Value="2" >DISCOVER</asp:ListItem>
                                                                <asp:ListItem Value="5" >OTHER</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="5%">
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label9" runat="server" Text="Name on Card (*)" meta:resourcekey="Label9Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtCName" runat="server" CssClass="textbox" Width="135px" meta:resourcekey="txtCNameResource1"></asp:TextBox>
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label11" runat="server" Text="Card Number (*)" meta:resourcekey="Label11Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtCNumber" runat="server" CssClass="textbox" MaxLength="20" Width="120px"
                                                                meta:resourcekey="txtCNumberResource1"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="5%">
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label10" runat="server" Text="Expiration (*)" meta:resourcekey="Label10Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtCExpire" runat="server" Columns="4" CssClass="textbox" MaxLength="4"
                                                                meta:resourcekey="txtCExpireResource1"></asp:TextBox>
                                                            <font class="font">(MMYY)</font>
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label12" runat="server" Text="Security Code(*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtSecCode" runat="server" Columns="3" CssClass="textbox" MaxLength="4"
                                                                meta:resourcekey="txtSecCodeResource1"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                            &nbsp;<ajaxIPSmarx:FilteredTextBoxExtender ID="Filteredtextboxextender7" 
                                                                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtCNumber">
                                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <ajaxIPSmarx:FilteredTextBoxExtender ID="Filteredtextboxextender6" runat="server"
                                                    Enabled="True" FilterType="Numbers" TargetControlID="txtCExpire">
                                                </ajaxIPSmarx:FilteredTextBoxExtender>
                                            </asp:Panel>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="chkSaveCCInfo" EventName="CheckedChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                    