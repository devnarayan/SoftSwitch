<%@ Page Language="c#" Codebehind="SD_ClaimBonus.aspx.cs" AutoEventWireup="False"
    Inherits="CCEstore.ClaimBonus" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" EnableEventValidation="false" 
    MasterPageFile="mainService.master"
    %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

                    <table width="100%" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="left" class="heading">
                                &nbsp;<asp:Label ID="lblPageTitle" runat="server" Text="Claim Bonus" meta:resourcekey="lblPageTitleResource1"></asp:Label>
                               
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:Literal ID="lblMessage" runat="server"></asp:Literal>
                                <asp:TextBox ID="txtCustId" runat="server" Width="20px" Visible="False"></asp:TextBox>    
                                <asp:TextBox ID="TextBox1" runat="server" Width="20px" Visible="False" meta:resourcekey="txtUserIDResource1"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                             <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                            <tr>
                                                <td class="subtitle" colspan="4">
                                                    <asp:Label ID="Label7" runat="server" Text="Bonus History" meta:resourcekey="lblSellBuyPackResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 120px">
                                                    <b>
                                                    <asp:Label ID="lblTotalBonus" runat="server" Text="Total Bonus Points" meta:resourcekey="lblPackNameResource1"></asp:Label>
                                                    </b>
                                                    
                                                    </td>
                                                <td style="width: 120px">
                                                    <asp:TextBox ID="txtTotalBonus" runat="server" CssClass="NotEditable" ForeColor="Blue"
                                                            ReadOnly="True" Width="80px" MaxLength="30" meta:resourcekey="txtTariffNameResource1" TabIndex="1"></asp:TextBox>
                                                </td>
                                                <td style="width: 120px">
                                                    <b>
                                                    <asp:Label ID="Label2" runat="server" Text="Claimed Bonus" meta:resourcekey="lblPackNameResource1"></asp:Label>
                                                    </b>
                                                    </td>
                                                <td>
                                                    <asp:TextBox ID="txtClaimedBonus" runat="server" CssClass="NotEditable" ForeColor="Blue"
                                                            ReadOnly="True" Width="80px" MaxLength="30" meta:resourcekey="txtTariffNameResource1" TabIndex="1"></asp:TextBox>
                                                </td>
                                                <td style="width: 120px">
                                                <b>
                                                    <asp:Label ID="Label3" runat="server" Text="Left Bonus" meta:resourcekey="lblPackNameResource1"></asp:Label>
                                                    </b>
                                                    </td>
                                                <td>
                                                    <asp:TextBox ID="txtLeftBonus" Name="txtLeftBonus" runat="server" CssClass="NotEditable" ForeColor="Blue"
                                                            ReadOnly="True" Width="80px" MaxLength="30" meta:resourcekey="txtTariffNameResource1" TabIndex="1"></asp:TextBox>
                                                </td>
                                            </tr>                                           
                                        </table>
<br />
                            
                                                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                            <tr>
                                                <td class="subtitle" colspan="4">
                                                    <asp:Label ID="Label4" runat="server" Text="Claim Bonus" meta:resourcekey="lblSellBuyPackResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 120px">
                                                    <asp:Label ID="Label5" runat="server" Text="Amount(*) " meta:resourcekey="lblPackNameResource1"></asp:Label></td>
                                                <td>
                                                    <WebCtlIpsmarx:RadComboBox ID="ddlAmount" runat="server"  TabIndex="1" Width="150px" MarkFirstMatch="True" MaxHeight="150px">
                                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                                     </WebCtlIpsmarx:RadComboBox>
                                                </td>                                                
                                            </tr>
                                            <tr>
                                                <td style="width: 120px">
                                                    <asp:Label ID="Label6" runat="server" Text="Description" meta:resourcekey="lblPackNameResource1"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="txtComment" runat="server" CssClass="textbox" Width="350px"  TabIndex="2" ></asp:TextBox>
                                                    <asp:Button ID="btnAdd" runat="server" 
                                                    BorderWidth="1px" CssClass="Button" Text="Claim" Width="100px" TabIndex="3" />
                                                </td>                                                
                                            </tr>   
                                            <tr>
                                                <td colspan="2"> &nbsp;</td>
                                            </tr>                                           
                                        </table>
                                
                              
                                       
                                
                                
                                <!--new botton-->
                                <table cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>                                
                                    <td align="center" style="height: 36px">
                                        <div style="vertical-align: middle; text-align: center">
                                            
                                        </div>
                                    </td>                                
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                                        <table cellspacing="0" cellpadding="3" width="100%" border="0">
                                             <tr>
                                                <td class="subtitle" colspan="4">
                                                    <asp:Label ID="Label1" runat="server" Text="Claimed Bonus History" meta:resourcekey="lblSellBuyPackResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr id="trRecords" visible="false" runat="server">
                                                <td class="TableHasBackGround2" width="120" colspan="4">
                                                    <asp:Label ID="lblReords" runat="server" ForeColor="Black" CssClass="PageLink" meta:resourcekey="lblReordsResource1" Visible="False"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">
                                                    <WebCtlIpsmarx:RadGrid ID="dgClaim" runat="server" AllowPaging="True" AllowSorting="True"
                                                        OnItemDataBound="dgClaim_ItemDataBound" OnLoad="dgClaim_Load" 
                                                        GridLines="None" PageSize="10"  OnSelectedIndexChanged="dgClaim_SelectedIndexChanged" OnItemCommand="dgClaim_ItemCommand" OnItemCreated="dgClaim_ItemCreated" >
                                                        <HeaderContextMenu>
                                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                                        </HeaderContextMenu>
                                                        <FilterMenu>
                                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                                        </FilterMenu>
                                                        <PagerStyle Mode="Slider" />
                                                        
                                                        
                                                        <ClientSettings EnableRowHoverStyle="True">
                                                            <Selecting AllowRowSelect="True" />
                                                        </ClientSettings>
                                                    </WebCtlIpsmarx:RadGrid>
                                                </td>
                                            </tr>
                                        </table>
                                    
                            </td>
                        </tr>
                    </table>
                
</asp:Content>