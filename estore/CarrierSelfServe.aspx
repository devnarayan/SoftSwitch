<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarrierSelfServe.aspx.cs" MasterPageFile="MainService.master" Inherits="CCEstore.CarrierSelfServe" %>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <WebCtlIpsmarx:RadFormDecorator ID="RadFormDecorator1" DecoratedControls="RadioButtons" runat="server"
        ></WebCtlIpsmarx:RadFormDecorator>

    <div class="module" style="width: 700px">
        <div class="container">
            <div class="content">
                <table cellspacing="5" cellpadding="5" width="100%" border="0" style="margin-right: 0px">
                    <tr>
                        <td>
                            <table class="toptitle" height="18" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td colspan="4" class="heading">
                                        <strong>
                                            <asp:Label ID="lblManageConf" runat="server" Text="Carrier Self Service"
                                                meta:resourcekey="lblManageConfResource1"></asp:Label></strong>
                                    </td>
                                    <td class="top" align="right"></td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="5" width="100%" align="center" border="0">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"
                                            meta:resourcekey="lblErrorResource1"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="toptable" height="25" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td class="top">
                                        <table class="table1" height="25" cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="topa" width="15">
                                                    <div align="center">
                                                        <div align="center">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="topa"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="2" width="100%" border="0">
                                <tr>
                                    <td class="main">
                                        <table class="Table" cellspacing="0" cellpadding="5" width="100%" border="0">
                                            <tr>
                                                <td>
                                                    <asp:RadioButton ID="radSingleCarrier" GroupName="carrier" runat="server" style="font-size: 12px;" Text="Send all traffic to carrier" />
                                                    <WebCtlIpsmarx:RadComboBox ID="ddlCarriers" runat="server" Width="50px" AutoPostBack="True"
                                                        meta:resourcekey="rcbPageSizeResource1">
                                                        <Items>
                                                            
                                                        </Items>
                                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                                    </WebCtlIpsmarx:RadComboBox>
                                                </td>
                                                <td>
                                                    <asp:RadioButton ID="radLCR" runat="server" GroupName="carrier" style="font-size: 12px;" Text ="Least Cost Routing" /></td>
                                                <td>
                                                    <asp:RadioButton ID="radPremium" runat="server" GroupName="carrier" style="font-size: 12px;" Text="Premium Route" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table height="50" cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td class="top">
                                        <table id="Table1" cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                            <tr align="center">
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnApply" runat="server" CssClass="Button" Text="Apply"></asp:Button>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>


                            <table class="toptitle" height="18" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td colspan="4" class="heading">
                                        <strong>
                                            <asp:Label ID="Label1" runat="server" Text="Carrier Rates"
                                               ></asp:Label></strong>
                                    </td>
                                    <td class="top" align="right"></td>
                                </tr>

                                <tr>
                                    <td colspan="5">
                                        <asp:ListView ID="ListView1" runat="server" style="font-size: 12px;">
                                           
                                            <LayoutTemplate>
                                                <ul>
                                                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                                                </ul>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <li style="height:25px">
                                                    <asp:Label ID="Label2" style="font-size: 13px;" Text='<%#Eval("Name")%>' runat="server" /> - <asp:LinkButton Text="Download Rates" style="font-size: 13px;" ID="btnDownloadRates" runat="server" CommandArgument='<%#Eval("Carrier_ID")%>' OnClick="btnDownloadRates_Click" />
                                                    <asp:Label ID="Label1" Text='<%#Eval("Carrier_ID")%>' runat="server" Visible="false" />
                                                </li>                                               
                                            </ItemTemplate>
                                            
                                            <EmptyDataTemplate>
                                                <p>No Rates Found</p>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </td>
                                </tr>

                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>

</asp:Content>
