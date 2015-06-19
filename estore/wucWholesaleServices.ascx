<%@ Control Language="C#" AutoEventWireup="true" Codebehind="wucWholesaleServices.ascx.cs"
    Inherits="CCEstore.wucWholesaleServices" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>


<%@ Register TagPrefix="cc" TagName="AD" Src="wucOnlineDepositAD.ascx" %>



            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    
                    <td>
                        <table width="700px">
                            <tr>
                                <td colspan="4">
                                    <!-- START OF CHOOSE PAYING STUFF -->
                                    <asp:Panel ID="Panel1" runat="server" Width="100%" meta:resourcekey="Panel1Resource1" >
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td>
                                                    <table width="100%">
                                                        <tr>
                                                            <caption>
                                                                <img alt="Wholesale Service" height="69" src="Images/orange/mainWS.jpg" 
                                                                    width="650" />
                                                            </caption>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <table>
                                                                    <tr>
                                                                        <td width="30%">
                                                                            <asp:Image ID="imgService" runat="server" Height="100px" 
                                                                                ImageUrl="~/Images/service1.gif" meta:resourceKey="imgServiceResource1" 
                                                                                Width="200px" />
                                                                        </td>
                                                                        <td width="70%">
                                                                            <img height="1" src="images/pix" width="1" /> <b>
                                                                            <asp:Label ID="lblServiceName" runat="server" CssClass="heading" 
                                                                                meta:resourceKey="lblServiceNameResource1"></asp:Label>
                                                                            </b>
                                                                            <br />
                                                                            <br />
                                                                            <asp:Label ID="lblServiceDescription" runat="server" 
                                                                                meta:resourceKey="lblServiceDescriptionResource1"></asp:Label>
                                                                            <br />
                                                                            <a id="lnkRates" runat="server" href="#">Rates</a>
                                                                            <asp:Label ID="lblServiceTemplateID" runat="server" 
                                                                                meta:resourceKey="lblServiceTemplateIDResource1" Visible="False" Width="55px"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="4">
                                                                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" 
                                                                    ForeColor="Red" meta:resourceKey="lblErrorResource1"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table ID="tblSetting" runat="server" cellpadding="0">
                                                        <tr ID="Tr1" runat="server">
                                                            <td ID="Td1" runat="server" class="subtitle" colspan="3">
                                                                <asp:Label ID="lblAllowedIPs" runat="server" 
                                                                    meta:resourceKey="lblAllowedIPsResource1" Text="Allowed IP Addresses"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr ID="Tr2" runat="server">
                                                            <td ID="Td2" runat="server">
                                                            </td>
                                                            <td ID="Td3" runat="server" width="100">
                                                                <asp:Label ID="lblIPs" runat="server" meta:resourceKey="lblIPsResource1" 
                                                                    Text="IP Address"></asp:Label>
                                                            </td>
                                                            <td ID="Td4" runat="server">
                                                                <asp:TextBox ID="txtIPAddress1" runat="server" CssClass="textbox" MaxLength="3" 
                                                                    meta:resourceKey="txtIPAddress1Resource1" 
                                                                    onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>
                                                                .
                                                                <asp:TextBox ID="txtIPAddress2" runat="server" CssClass="textbox" MaxLength="3" 
                                                                    meta:resourceKey="txtIPAddress2Resource1" 
                                                                    onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>
                                                                .
                                                                <asp:TextBox ID="txtIPAddress3" runat="server" CssClass="textbox" MaxLength="3" 
                                                                    meta:resourceKey="txtIPAddress3Resource1" 
                                                                    onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>
                                                                .
                                                                <asp:TextBox ID="txtIPAddress4" runat="server" CssClass="textbox" MaxLength="3" 
                                                                    meta:resourceKey="txtIPAddress4Resource1" 
                                                                    onKeyUp="return autoTab(this, 3, event);" Width="38px"></asp:TextBox>
                                                            </td>
                                                            <td ID="Td5" runat="server">
                                                            </td>
                                                            <td ID="Td6" runat="server">
                                                            </td>
                                                        </tr>
                                                        <tr ID="Tr3" runat="server">
                                                            <td ID="Td7" runat="server">
                                                            </td>
                                                            <td ID="Td8" runat="server">
                                                                <asp:Button ID="btnAddIP" runat="server" CausesValidation="False" 
                                                                    CssClass="Button" meta:resourceKey="btnAddIPResource1" OnClick="btnAddIP_Click" 
                                                                    Text="Add" Width="60px" />
                                                            </td>
                                                            <td ID="Td9" runat="server" rowspan="2" style="width: 625px">
                                                                <asp:ListBox ID="lbxIPAddresses" runat="server" Height="82px" 
                                                                    meta:resourceKey="lbxIPAddressesResource1" Style="border-right: lightsteelblue 1px solid; border-top: lightsteelblue 1px solid;
                                                                                font-size: 11px; border-left: lightsteelblue 1px solid; color: navy; border-bottom: lightsteelblue 1px solid;
                                                                                font-family: verdana, arial" Width="170px"></asp:ListBox>
                                                            </td>
                                                            <td ID="Td10" runat="server">
                                                            </td>
                                                            <td ID="Td11" runat="server">
                                                            </td>
                                                        </tr>
                                                        <tr ID="Tr4" runat="server">
                                                            <td ID="Td12" runat="server">
                                                            </td>
                                                            <td ID="Td13" runat="server">
                                                                <asp:Button ID="btnRemoveIP" runat="server" CausesValidation="False" 
                                                                    CssClass="Button" meta:resourceKey="btnRemoveIPResource1" 
                                                                    OnClick="btnRemoveIP_Click" Text="Remove" Width="60px" />
                                                            </td>
                                                            <td ID="Td14" runat="server" colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr ID="Tr5" runat="server">
                                                            <td ID="Td15" runat="server" class="subtitle" colspan="3">
                                                                <asp:Label ID="Label5" runat="server" meta:resourceKey="Label5Resource1" 
                                                                    Text="Settings"></asp:Label>
                                                            </td>
                                                            <td ID="Td16" runat="server">
                                                            </td>
                                                        </tr>
                                                        <tr ID="Tr6" runat="server">
                                                            <td ID="Td17" runat="server" width="10%">
                                                            </td>
                                                            <td ID="Td18" runat="server" width="20%">
                                                                <asp:Label ID="Label3" runat="server" meta:resourceKey="Label3Resource1" 
                                                                    Text="Dialplan Prefix"></asp:Label>
                                                            </td>
                                                            <td ID="Td19" runat="server" width="70%">
                                                                <asp:TextBox ID="txtDialplanPrefix" runat="server" CssClass="textbox"></asp:TextBox>
                                                            </td>
                                                            <td ID="Td20" runat="server">
                                                            </td>
                                                            <td ID="Td21" runat="server">
                                                            </td>
                                                        </tr>
                                                        <tr ID="Tr7" runat="server">
                                                            <td ID="Td22" runat="server" width="10%">
                                                            </td>
                                                            <td ID="Td23" runat="server">
                                                                <asp:Label ID="Label4" runat="server" meta:resourceKey="Label4Resource1" 
                                                                    Text="Rateplan Prefix"></asp:Label>
                                                            </td>
                                                            <td ID="Td24" runat="server">
                                                                <asp:TextBox ID="txtRateplanPrefix" runat="server" CssClass="textbox"></asp:TextBox>
                                                            </td>
                                                            <td ID="Td25" runat="server">
                                                            </td>
                                                            <td ID="Td26" runat="server">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table width="100%">
                                                        <tr>
                                                            <td colspan="2" width="30%">
                                                                <strong>
                                                                <asp:Label ID="Label1" runat="server" meta:resourceKey="Label1Resource1" 
                                                                    Text="Purchase"></asp:Label>
                                                                ()
                                                                <asp:Label ID="Label2" runat="server" CssClass="error" Font-Bold="True" 
                                                                    ForeColor="Black" meta:resourceKey="Label2Resource1" Text="(*)"></asp:Label>
                                                                </strong>
                                                            </td>
                                                            <td>
                                                                <WebCtlIpsmarx:RadComboBox ID="ddlPayment" runat="server" 
                                                                    meta:resourceKey="ddlPaymentResource1">
                                                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                                                </WebCtlIpsmarx:RadComboBox>
                                                                <asp:TextBox ID="txtPayment" runat="server" 
                                                                    meta:resourceKey="txtPaymentResource1" Width="150px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <cc:AD ID="AD" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <strong>(
                                                                <asp:Label ID="Label6" runat="server" meta:resourceKey="Label6Resource1" 
                                                                    Text="Already registered and want to make a payment? Click 'My Account' and choose 'Make Payment'."></asp:Label>
                                                                ) </strong>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <!-- END OF CHOOSE PAYING STUFF -->
                                </td>
                            </tr>
                        </table>
                    </td>
                    
                </tr>
                
            </table>
           
