<%@ Page Language="C#" MasterPageFile="main.master" AutoEventWireup="true" Codebehind="RegisterCB.aspx.cs"
    Inherits="CCEstore.RegisterCB" %>


<%@ Register TagPrefix="cc" TagName="CaptchaWebControl" Src="CaptchaWebControl.ascx" %>
<%@ Register TagPrefix="cc" TagName="RegisterCustomer" Src="RegisterCustomer.ascx" %>
<%@ Register TagPrefix="cc" TagName="CallbackServices" Src="CallbackServices.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" style="table-layout:fixed;" >
       
                    <tr>
                        <td>
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True" CssClass="error" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    
                                <tr id="trCallbackService" runat="server">
                                    <td>
                                    
                                      <DIV class=module style="width:700px" >
                                        <DIV class=container>
                                            <?xml namespace="" prefix="v" ?>
                                            <v:roundrect arcsize="1966f" coordsize="21600,21600" strokecolor="#369" strokeweight="1pt"><DIV class="content" __designer:dtid="19140298416324617">
                                            
                                            
                                            <table><tr><td>
            <img src="Images/orange/main.jpg" alt="Home / Business Service" width="650px" height="69" />
        </td></tr><tr><td>
        
                                            <cc:CallbackServices id="CallbackServices" runat="server" __designer:dtid="19140298416324618"></cc:CallbackServices> </DIV></v:roundrect>
                                    <DIV class=ft></DIV></DIV></DIV>

                                    </td></tr></table>
                                    
                                    </td>
                                </tr>
                                <tr id="trRegister" runat="server">
                                    <td>
                                    
                                    <DIV class=module style="width:700px" >
<DIV class=container>
    <v:roundrect arcsize="1966f" coordsize="21600,21600" fillcolor="white" strokecolor="#369"
        strokeweight="1pt"><DIV class="content" __designer:dtid="19140298416324624">

        
        <cc:RegisterCustomer id="RegisterCustomer" runat="server" __designer:dtid="19140298416324625"></cc:RegisterCustomer> </DIV>
        
        
        </v:roundrect>
<DIV class=ft></DIV></DIV></DIV>
                                    </td>
                                </tr>
                                
                                
                                <tr>
                                    <td align="left" bgcolor="#f4f4f4" style="height: 43px" width="100%">
                                        <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                            
                                                <tr>
                                                    <td align="center">
                                                        
                                                        <div align="center">
                                                            <asp:Button ID="btnContinue" CssClass="buttonproceed" runat="server" Text="Continue Shopping"
                                                                OnClick="btnContinue_Click" meta:resourcekey="btnContinueResource1"></asp:Button>
                                                        </div>
                                                    </td>
                                                    <td align="center" style="height: 30px">
                                                        <input type="hidden" value="Checkout" name="Action" />
                                                        <asp:Button ID="submit" OnClick="submit_Click" CssClass="buttonproceed" runat="server"
                                                            Text="Proceed to Checkout" meta:resourcekey="submitResource1"></asp:Button></td>
                                                </tr>
                                            
                                        </table>
                                    </td>
                                    
                                </tr>
                                
                                   
                     
    </table>
         <asp:DropDownList ID="ddlServices" runat="server" Width="141px" Enabled="False" AutoPostBack="True"
                                    Visible="False" meta:resourcekey="ddlServicesResource1">
                                </asp:DropDownList><webctlipsmarx:radformdecorator id="RadFormDecorator1" runat="server"
                                    decoratedcontrols="All" skin="Web20" meta:resourcekey="RadFormDecorator1Resource1"></webctlipsmarx:radformdecorator>  
</asp:Content>
