<%@ Page Language="c#" MasterPageFile="main.master" Codebehind="Cards.aspx.cs" AutoEventWireup="True"
    Inherits="CCEstore.Cards" %>

<%@ Register TagPrefix="cc" TagName="CallingCards" Src="CallingCards.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="800" border="0">
        <tr>
            <td>

            <DIV class=module style="width:800px" >
<DIV class=container>
    <?xml namespace="" prefix="v" ?>
    <v:roundrect arcsize="1966f" coordsize="21600,21600" fillcolor="white" strokecolor="#369"
        strokeweight="1pt"><DIV class="content" __designer:dtid="20547673299877894">
        <table width=100%><tr><td colspan=2>
                <img src="Images/black/mainCallingCard.jpg" alt="Callin Card" width="98%" height="69" />
        </td></tr><tr><td width="98%">
        <cc:CallingCards id="CallingCards" runat="server" __designer:dtid="20547673299877895"></cc:CallingCards> 
        </td>
        <td></td>
        </tr></table>
        
        
        </DIV></v:roundrect>
<DIV class=ft></DIV></DIV></DIV>

            
            </td>
        </tr>
    </table>
    <table width="800">
        <tr>
            <td colspan="3" class="table_buttons" align="center">
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
                                    <asp:Button ID="btnSubmit" runat="server" CssClass="buttonproceed" Text="Proceed to Checkout"
                                        OnClick="btnSubmit_Click" meta:resourcekey="btnSubmitResource1" />
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
