<%@ Page Language="C#" MasterPageFile="main.master" AutoEventWireup="true" CodeBehind="RegisterDirectDID.aspx.cs"
    Inherits="CCEstore.RegisterDirectDID" meta:resourcekey="PageResource1" %>

<%@ Register TagPrefix="cc" TagName="CaptchaWebControl" Src="CaptchaWebControl.ascx" %>
<%@ Register TagPrefix="cc" TagName="RegisterCustomer" Src="RegisterCustomer.ascx" %>
<%@ Register TagPrefix="cc" TagName="SelectDIDs" Src="wucSelectDIDs.ascx" %>
<%@ Register TagPrefix="cc" TagName="SelectService" Src="wucDirectDID.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="700" border="0" align="left" cellpadding="5" cellspacing="0" style="table-layout: fixed;">
        <tr>
            <td>
                <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr id="trSelectService" runat="server">
            <td>
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
                                            "21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <cc:SelectService ID="SelectService1" runat="server" PlanType="2" />
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
                                            "21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <cc:SelectDIDs ID="SelectDIDs1" runat="server" PlanType="2" />
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr id="trRegister" runat="server">
            <td>
                <div class="module" style="width: 700px">
                    <div class="container">
                        <v:roundrect arcsize="1966f" coordsize="21600,21600" fillcolor="white" strokecolor="#369"
                            strokeweight="1pt">
                            <div class="content" __designer:dtid="20266198323167248">
                                <cc:RegisterCustomer ID="RegisterCustomer" runat="server" __designer:dtid="20266198323167249">
                                </cc:RegisterCustomer>
                            </div>
                        </v:roundrect>
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr id="trPayAsYoGo" runat="server">
            <td width="100%" align="left" class="heading">
                <asp:Panel ID="Panel1" runat="server" align="left" meta:resourcekey="Panel1Resource1">
                    <asp:Label ID="lblTitle" runat="server" Text="Purchase" meta:resourcekey="lblTitleResource1"></asp:Label>
                </asp:Panel>
                <div class="module" style="width: 700px">
                    <div id="divPayAsYouGo" runat="server" class="container">
                        <v:roundrect arcsize="1966f" coordsize="21600,21600" fillcolor="white" strokecolor="#369"
                            strokeweight="1pt">
                            <div class="content">
                                <br />
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td>
                                        </td>
                                        <td width="29%">
                                            <strong>
                                                <asp:Label ID="lblPurchage" runat="server" Text="Purchase" Font-Bold="True" meta:resourcekey="lblPurchageResource1"></asp:Label>
                                                (<%= PayCentral.Library.General.GetCurrencySymbol() %>) </strong>
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="ddlPayment" runat="server" meta:resourcekey="ddlPaymentResource1">
                                            </WebCtlIpsmarx:RadComboBox>
                                            <asp:TextBox ID="txtPayment" runat="server" CssClass="textbox" Width="150px" meta:resourcekey="txtPaymentResource1"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </v:roundrect>
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="#f4f4f4" style="height: 43px">
                <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td align="center">
                                <!-- this hidden field cause post back 
                <input type="hidden" value="UpdateCart" name="action" />
                -->
                                <div align="center">
                                    <asp:Button ID="btnContinue" CssClass="buttonproceed" runat="server" Text="Continue Shopping"
                                        OnClick="btnContinue_Click" meta:resourcekey="btnContinueResource1"></asp:Button>
                                </div>
                            </td>
                            <td>
                                <div align="center">
                                    <asp:Button ID="submit" OnClick="submit_Click" CssClass="buttonproceed" runat="server"
                                        Text="Proceed to Checkout" meta:resourcekey="submitResource1"></asp:Button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
    <asp:DropDownList ID="ddlServices" runat="server" Width="141px" Enabled="False" AutoPostBack="True"
        Visible="False" meta:resourcekey="ddlServicesResource1">
    </asp:DropDownList>
    <WebCtlIpsmarx:RadFormDecorator ID="RadFormDecorator1" runat="server" DecoratedControls="All"
        Skin="Web20" meta:resourcekey="RadFormDecorator1Resource1"></WebCtlIpsmarx:RadFormDecorator>
</asp:Content>
