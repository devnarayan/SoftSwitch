<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMakePayment.ascx.cs"
    Inherits="CCEstore.wucMakePayment" %>
<%@ Register TagPrefix="cc" TagName="CreditCardForm" Src="~/Controls/PaymentForm.ascx" %>
<%@ Register TagPrefix="cc" TagName="AD" Src="wucOnlineDepositAD.ascx" %>
<script language="javascript" type="text/javascript">
    function fchkTerms(obj) {
        if (obj.checked) {
            document.getElementById('ctl00$cphMain$MakePayment$btnPurchase').disabled = false;
        }
        else {
            document.getElementById('ctl00$cphMain$MakePayment$btnPurchase').disabled = true;
        }
    }
</script>
<div class="module" style="width: 700px">
    <div class="container">
        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
        <div class="content">
                               
        <asp:Panel ID="pnlSearch" runat="server" meta:resourcekey="pnlSearchResource1">

        <table style="table-layout:fixed;" >
            <tr>
            <td>
                          
            <table width="100%" >
                <tr >
                    <td  colspan="3" class="heading" >
                            <asp:Label ID="lblTitle" runat="server" Text="Make Payment" meta:resourcekey="lblTitleResource1" ></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <!-- <hr /> -->
                    </td>
                </tr>
                <tr >
                    <td colspan="3">
                        <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal></td>
                </tr> 
                <tr >                  
                    <td width="30%" colspan="2">
                        <asp:Label ID="lblPurchase" runat="server" CssClass="bg_blue" Font-Bold="False" Text="Purchase" meta:resourcekey="lblPurchaseResource1"></asp:Label>
                                (<%= PayCentral.Library.General.GetCurrencySymbol() %>)    
                    </td>
                    <td width="70%">
                                
                        <WebCtlIpsmarx:RadComboBox ID="ddlPayment" runat="server" 
                            meta:resourcekey="ddlPaymentResource1" MarkFirstMatch="True">                                    
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </WebCtlIpsmarx:RadComboBox>
                        
                        <asp:TextBox ID="txtPayment" runat="server" CssClass="textbox" meta:resourcekey="txtPaymentResource1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                    </td>
                    <td >
                        <cc:AD ID="AD" runat="server" />
                    </td>
                </tr>
                      
            </table>
            </td>
            </tr>                     
            <tr>                            
                <td>
                    <cc:CreditCardForm ID="CreditCardForm" runat="server" ShowVoucher="true" />                            
                </td>
            </tr>
            <tr id="trTermHeader" runat="server" visible="False">
                <td runat="server">
                    <strong>
                        <asp:Label ID="lblManageExtGroups" runat="server" Text="Terms & Agreement"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr id="trTerm" runat="server" visible="False">
                <td align="center" runat="server">
                    <br />
                    <iframe width="85%" src="./Terms.aspx" scrolling="auto">
                    </iframe>
                    <br />
                    <asp:Label ID="lblAgree" runat="server">Do you agree?</asp:Label>
                    <br />
                    <input id="chkTerms" type="checkbox" onclick="fchkTerms(this);" /><asp:Label ID="Label1" runat="server">I have read and agree with the term above.</asp:Label>
                </td>
            </tr>
            
            <tr>
                <td align="center">
                    <table width="100%">
                        <tr>
                            <td width="50%" align="center" id="tdAdd2Cart" runat="server">
                                <asp:Button ID="btnAdd2Cart" runat="server" Text="Add to Cart" CssClass="Button"  
                                    OnClick="btnAdd2Cart_Click" meta:resourcekey="btnAdd2CartResource1" 
                                    Width="100px" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnPurchase" runat="server" Text="Purchase" CssClass="Button"   OnClick="btnPurchase_Click" meta:resourcekey="btnPurchaseResource1"/>
                            </td>
                        </tr>
                    </table>                          
                </td>
            </tr>

        </table>
        </asp:Panel>
        </div>
        <!--[if IE]></v:roundrect><![endif]-->
        <div class="ft" style="text-align: center !important">
           
        </div>
    </div>
</div>