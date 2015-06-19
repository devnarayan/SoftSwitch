<%@ Page Language="c#" MasterPageFile="main.master" Codebehind="plans.aspx.cs"
    AutoEventWireup="True" Inherits="CCEstore.plans" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <!-- TEST CONTENT -->
    <table id="Table1" cellspacing="0" cellpadding="0" align="center" border="0">
        <tr>
            <td >
                <table id="Table2" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                    <tr>
                        <td valign="top">
                            <table  id="Table9" height="400" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td valign="top">
                                        <table id="Table10" height="50" cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="error" meta:resourcekey="lblErrorResource1"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <table id="Table11" cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
                                            <tr>
                                                <td>
                                                    <asp:DataList ID="dslpackages" runat="server" Font-Size="Smaller" RepeatDirection="Horizontal"
                                                        RepeatColumns="2" BackColor="White" BorderColor="Silver" BorderStyle="None" BorderWidth="1px"
                                                        CellPadding="20" GridLines="Both" meta:resourcekey="dslpackagesResource1" OnItemDataBound="dslpackages_ItemDataBound">
                                                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
                                                        <HeaderTemplate>
                                                            <div align="right">
                                                            </div>
                                                        </HeaderTemplate>
                                                        <ItemStyle Font-Size="11px" ForeColor="Navy" BackColor="White"></ItemStyle>
                                                        <ItemTemplate>
                                                            <table id="Table16" cellspacing="0" cellpadding="2" width="100%" border="0">
                                                                <tr>
                                                                    <td width="15%" rowspan="4">
                                                                        <a href="<%#GetRedirectPage()%>?ProfileID=<%# DataBinder.Eval(Container.DataItem, "ProfileID") %>">
                                                                            <img  src='<%= Page.ResolveUrl("~")%>images/<%# DataBinder.Eval(Container.DataItem, "Image") %>'
                                                                                height="48" width="52" border="0"></a></td>
                                                                    <td class="style2" width="85%">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "OnlineName") %>' meta:resourcekey="Label1Resource1"></asp:Label>
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style3">
                                                                        <table>
                                                                        
                                                                        <tr id="trDefaultPackage" runat="server" visible="False"><td class="style3" runat="server">
                                                                        Only
                                                                        <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DefaultPackagePrice") %>'></asp:Label>
                                                                        </td></tr>
                                                                        <tr>
                                                                        
                                                                        <td runat="server" visible='<%# int.Parse( DataBinder.Eval(Container.DataItem, "ShowStarterPackage").ToString())>0 %>' id='abc' class="style3">
                                                                        
                                                                        <asp:Label ID="Label6" runat="server" Text='<%# SipKernel.common.Translation.Lookup("from") +  " " +PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "FinalPrice").ToString() %>'
                                                                         visible = '<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "FinalPrice").ToString())>0 %>' meta:resourcekey="Label6Resource1"
                                                                         ></asp:Label>
                                                                         
                                                                        <!--# SipKernel.common.Translation.Lookup("pay_as_you_go")-->
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# SipKernel.common.Translation.Lookup("from") +  " " +PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "FinalPrice").ToString() %>'
                                                                         visible = '<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())==0 %>' meta:resourcekey="Label5Resource1"
                                                                         ></asp:Label>

                                                                        
                                                                        </td>
                                                                        </tr>
                                                                        </table>

                                                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" meta:resourcekey="Label3Resource1"></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="pageblue">
                                                                        <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "description") %>' meta:resourcekey="Label4Resource1"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style3">                                                                    
                                                                        <asp:Label ID="lblExtensions" runat="server" Text="# of Ext.: " Visible="false" /><asp:Label ID="lblNumberExtensions" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NumberExtensionsSelected") %>' Visible="false"></asp:Label>
                                                                        <br />
                                                                        <img height="9" src="<%= Page.ResolveUrl("~")%>images/arrow.gif" width="7"><span class="style2"><a href='selectService.aspx?ProfileID=<%# DataBinder.Eval(Container.DataItem, "ProfileID") %>'><strong><font
                                                                            color="#666666" size="1">
                                                                            <asp:Label ID="lblProfileID" runat="server" ForeColor="DarkGreen" Font-Bold="True"
                                                                                Font-Size="13px" Text='<%# DataBinder.Eval(Container.DataItem, "ProfileID") %>'
                                                                                Visible="False" meta:resourcekey="lblCCEstoreIDResource1" />
                                                                            <a id="lnkRates" runat="server" href="#">Rates</a>
                                                                            <p />
                                                                            <asp:Label ID="Label7" runat="server" Text="Sign Up Now" meta:resourcekey="Label7Resource1"></asp:Label>
                                                                            </font></strong></a></span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                                        <HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#939FB0"></HeaderStyle>
                                                    </asp:DataList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
