<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDirectDIDSetting.ascx.cs" Inherits="CCEstore.wucDirectDIDSetting" %>
<table cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
        <td>
            
                  
                <asp:Panel ID="pnlDID" runat="server" Width="100%" 
                    meta:resourcekey="pnlDIDResource1">
                            <table cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td class="heading">
                                                        <asp:Label ID="Label38" runat="server" 
                                            meta:resourcekey="lblContactInfoResource1" Text="DID Settings"></asp:Label></td>
                                </tr>
                                                
                            </table>
                            <table  border="0" cellpadding="2" 
                                cellspacing="0" width="100%">  
                                                        <tr>
                                                            <td colspan="4">
                                                                
                                                                    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                                                                
                                                            </td>
                                                        </tr>                                                      
                                                        <tr>
                                                            <td class="fontnormal">
                                                                <asp:Label ID="Label2" runat="server" 
                                                                    Text="Selected DID (*)" meta:resourcekey="Label2Resource1"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <WebCtlIpsmarx:RadNumericTextBox ID="txtDID" runat="server" 
                                                                     MaxLength="20" MinValue="0" TabIndex="4" 
                                                                    Width="175px" Enabled="False" Culture="English (United States)" 
                                                                    LabelCssClass="" meta:resourcekey="txtDIDResource1">
                                                                    <NumberFormat DecimalDigits="0" GroupSeparator="" GroupSizes="5" />
                                                                </WebCtlIpsmarx:RadNumericTextBox>
                                                                <asp:TextBox ID="txtDIDID" runat="server" Visible="False" Width="17px" 
                                                                    meta:resourcekey="txtDIDIDResource1"></asp:TextBox>
                                                            </td>
                                                            <td class="fontnormal">
                                                                <asp:Label ID="Label3" runat="server"  Text="Forward To (*)" 
                                                                    meta:resourcekey="Label3Resource1"></asp:Label>
                                                                
                                                                                
                                                            </td>
                                                            <td>
                                                                    <WebCtlIpsmarx:RadNumericTextBox ID="txtAvForwardTo" runat="server" Culture="English (United States)"
                                                                        MaxLength="20" MinValue="0" Width="175px" TabIndex="4" LabelCssClass="" 
                                                                        meta:resourcekey="txtAvForwardToResource1">
                                                                        <NumberFormat DecimalDigits="0" GroupSizes="5" GroupSeparator="" />
                                                                    </WebCtlIpsmarx:RadNumericTextBox>
                                                                    
                                                            </td>
                                                        </tr>
                                                        <tr><td colspan="4">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <div style="text-align:center">
                                                                <asp:Button ID="btnReset" runat="server" CausesValidation="False" 
                                                                    CssClass="Button" Text="Reset" Width="75px" onclick="btnReset_Click" 
                                                                        meta:resourcekey="btnResetResource1" />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;                                                        
                                                                </div>   
                                                                </td>
                                                                <td colspan=2>
                                                                <div style="text-align:center">
                                                                <asp:Button ID="btnModify" runat="server" CausesValidation="False" 
                                                                    CssClass="Button" Text="Modify" Width="75px" onclick="btnModify_Click" 
                                                                        meta:resourcekey="btnModifyResource1" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr><td colspan="4">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fontnormal">
                                                                <asp:Label ID="Label1" runat="server"  Text="Assigned DIDs" 
                                                                    meta:resourcekey="Label1Resource1"></asp:Label>
                                                            </td>                                                         
                                                            <td align="right" colspan="2">
                                                                <asp:ListBox ID="lbxAssignedDID" runat="server" Height="95px" 
                                                                    Style="border-right: lightsteelblue 1px solid;
                                                                    border-top: lightsteelblue 1px solid; font-size: 11px; border-left: lightsteelblue 1px solid;
                                                                     border-bottom: lightsteelblue 1px solid; font-family: verdana, arial" 
                                                                    Width="100%" AutoPostBack="True" 
                                                                    onselectedindexchanged="lbxAssignedDID_SelectedIndexChanged" 
                                                                    meta:resourcekey="lbxAssignedDIDResource1"></asp:ListBox></td>
                                                            <td></td>
                                                        </tr>                                                        
                                </table>                
                    </asp:Panel>                          
             
        </td>
    </tr> 
    
    
</table>
<asp:TextBox ID="txtCallshopDetailID" runat="server" Visible="False" 
    meta:resourcekey="txtCallshopDetailIDResource1"></asp:TextBox>
<asp:TextBox ID="txtBoothId" runat="server" Visible="False" 
    meta:resourcekey="txtBoothIdResource1"></asp:TextBox>
<asp:TextBox ID="txtServiceId" runat="server" Visible="False" 
    meta:resourcekey="txtServiceIdResource1"></asp:TextBox>
