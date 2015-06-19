<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterSipTrunkingUser.aspx.cs" MasterPageFile="main.master" Inherits="CCEstore.RegisterSipTrunkingUser" %>

<%@ Register TagPrefix="cc" TagName="CaptchaWebControl" Src="CaptchaWebControl.ascx" %>
<%@ Register TagPrefix="cc" TagName="RegisterCustomer" Src="RegisterCustomer.ascx" %>

<%@ Register TagPrefix="cc" TagName="SelectPDIDs" Src="~/wucDIDPackage.ascx" %>

<%@ Register TagPrefix="cc" TagName="SelectDIDs" Src="wucSelectDIDs.ascx" %>
<%@ Register TagPrefix="cc" TagName="SelectService" Src="wucDirectDID.ascx" %>
<%@ Register TagPrefix="cc" TagName="CustomerDID" Src="~/Controls/CustomerDID.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="700" border="0" align="left" cellpadding="5" cellspacing="0" style="table-layout:fixed;" >

                    <tr>
                        <td>
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True" CssClass="error" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    
                    </tr>
                                <tr id="trSelectService" runat="server">
                                    <td>
                                    <DIV class=module style="width:700px" >
                                            <DIV class=container><!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
                                            "21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                                            <DIV class=content>
                                                    
                                                <cc:SelectService ID="SelectService1" runat="server" PlanType="4" />
                                                
                                                 </DIV><!--[if IE]></v:roundrect><![endif]-->
                                            <DIV class=ft></DIV></DIV></DIV>
                                    
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <DIV class=module style="width:700px" >
                                            <DIV class=container><!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
                                            "21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                                            <DIV class=content>
                                                    
                                                    <cc:CustomerDID ID="wucCustomerDID" runat="server" DIDCategory="TRUNK" />
                                                     <cc:SelectDIDs ID="SelectDIDs1" runat="server" PlanType="4" Visible=false/>
                                                    
                                            </DIV><!--[if IE]></v:roundrect><![endif]-->
                                            <DIV class=ft></DIV></DIV></DIV>
                                    </td>
                                </tr>
                                <tr id="trRegister" runat="server">
                                    <td>
                                                                        <DIV class=module style="width:700px" >
<DIV class=container>
    <v:roundrect arcsize="1966f" coordsize="21600,21600" fillcolor="white" strokecolor="#369"
        strokeweight="1pt"><DIV class="content" __designer:dtid="20266198323167248"><cc:RegisterCustomer id="RegisterCustomer" runat="server" __designer:dtid="20266198323167249"></cc:RegisterCustomer> </DIV></v:roundrect>
<DIV class=ft></DIV></DIV></DIV>
                                        
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
                                </asp:DropDownList><WebCtlIpsmarx:RadFormDecorator ID="RadFormDecorator1" runat="server"
                                    DecoratedControls="All" Skin="Web20" meta:resourcekey="RadFormDecorator1Resource1"></WebCtlIpsmarx:RadFormDecorator>
</asp:Content>