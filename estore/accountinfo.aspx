<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="main.master" Codebehind="accountinfo.aspx.cs"
    Inherits="CCEstore.accountinfo" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucSteps.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
            <tr>
                <td class="main" valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td style="height: 13px">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td>
                                    
                                    <cc:tag ID="stepUserControl" runat="server" />
                                    
                                </td>
                            </tr>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="page_cont">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="page">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <table cellspacing="0" cellpadding="5" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_blue">
                                                                                    <strong>
                                                                                        <asp:Label ID="Label8" runat="server" Text="Account Information" meta:resourcekey="Label8Resource1"></asp:Label>
                                                                                    :</strong></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <span class="error">*</span> 
                                                                                    
                                                                                    <asp:Label ID="Label9" runat="server" Text="marked are required fields." meta:resourcekey="Label9Resource1"></asp:Label>
                                                                                    </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <table cellspacing="0" cellpadding="5" width="100%" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td class="bg_grey" width="24%">
                                                                                                    <div align="right">
                                                                                                        <span class="error"><span style="font-size: 8pt; color: #333333; font-family: Verdana">
                                                                                                            <asp:Label ID="Label28" runat="server" Text="Email (*)" meta:resourcekey="Label28Resource1"></asp:Label></span></span></div>
                                                                                                </td>
                                                                                                <td class="bg_grey" width="26%">
                                                                                                    <asp:TextBox ID="txtEmail" runat="server" meta:resourcekey="txtEmailResource1"></asp:TextBox></td>
                                                                                                <td class="bg_grey" width="25%">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        
                                                                                                        <asp:Label ID="Label10" runat="server" Text="Password (*)" meta:resourcekey="Label10Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey" width="25%">
                                                                                                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="TextBox" meta:resourcekey="txtNewPasswordResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey" width="24%">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        
                                                                                                        <asp:Label ID="Label11" runat="server" Text="First Name (*)" meta:resourcekey="Label11Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="TextBox" meta:resourcekey="txtFirstNameResource1"></asp:TextBox></td>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        
                                                                                                        <asp:Label ID="Label12" runat="server" Text="Last Name (*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="TextBox" meta:resourcekey="txtLastNameResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey1" style="text-align: right" width="24%">
                                                                                                    <span ><asp:Label ID="lblCompname" runat="server" Text="Company Name" meta:resourcekey="lblCompnameResource1"></asp:Label></span></td>
                                                                                                <td class="bg_grey1" colspan="3">
                                                                                                    <asp:TextBox ID="txtCompanyName" runat="server" Width="483px" CssClass="TextBox" meta:resourcekey="txtCompanyNameResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey1" width="24%">
                                                                                                    <div align="right">
                                                                                                        
                                                                                                        <asp:Label ID="Label13" runat="server" Text="Current Phone Number" meta:resourcekey="Label13Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="TextBox" meta:resourcekey="txtPhoneResource1"></asp:TextBox></td>
                                                                                                <td class="bg_grey1">
                                                                                                    <div align="right">
                                                                                                        
                                                                                                        <asp:Label ID="Label14" runat="server" Text="Cell Phone" meta:resourcekey="Label14Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                    <asp:TextBox ID="txtCellPhone" runat="server" CssClass="TextBox" meta:resourcekey="txtCellPhoneResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey1" width="24%">
                                                                                                    <div align="right">
                                                                                                        
                                                                                                        <asp:Label ID="Label15" runat="server" Text="Fax" meta:resourcekey="Label15Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                    <asp:TextBox ID="txtFax" runat="server" CssClass="TextBox" meta:resourcekey="txtFaxResource1"></asp:TextBox></td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                            </tr>
                                                                                            
                                                                                            <tr id="trReferralEmail" runat="server">
                                                                                                <td class="bg_grey1" width="24%">
                                                                                                    <div align="right">
                                                                                                        
                                                                                                        <asp:Label ID="Label29" runat="server" Text="Referral Email" ></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                    <asp:TextBox ID="txtReferralEmail" runat="server" CssClass="TextBox" ></asp:TextBox></td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                            </tr>
                                                                                            
                                                                                            <asp:Panel ID="pnlByDesign" runat="server" Visible="False" meta:resourcekey="pnlByDesignResource1">
                                                                                                <tr>
                                                                                                    <td class="bg_grey1" width="24%">
                                                                                                        <div align="right">
                                                                                                            
                                                                                                            <asp:Label ID="Label16" runat="server" Text="Referring Rep ID" meta:resourcekey="Label16Resource1"></asp:Label>
                                                                                                            </div>
                                                                                                    </td>
                                                                                                    <td class="bg_grey1">
                                                                                                        <asp:TextBox ID="txtRefRepID" runat="server" meta:resourcekey="txtRefRepIDResource1"></asp:TextBox></td>
                                                                                                    <td class="bg_grey1">
                                                                                                        <div align="right">
                                                                                                            
                                                                                                            <asp:Label ID="Label17" runat="server" Text="Personal Rep ID" meta:resourcekey="Label17Resource1"></asp:Label>
                                                                                                            </div>
                                                                                                    </td>
                                                                                                    <td class="bg_grey1">
                                                                                                        <asp:TextBox ID="txtPersonalRepID" runat="server" meta:resourcekey="txtPersonalRepIDResource1"></asp:TextBox></td>
                                                                                                </tr>
                                                                                            </asp:Panel>
                                                                                        </tbody>
                                                                                    </table>
                                                                                    <table cellspacing="0" cellpadding="5" width="100%" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td colspan="4">
                                                                                                    <div align="left">
                                                                                                        <strong>
                                                                                                            <asp:Label ID="Label18" runat="server" Text="Billing Address (Do not enter a P.O. Box)" meta:resourcekey="Label18Resource1"></asp:Label>
                                                                                                        </strong></div>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey" width="24%">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        
                                                                                                        
                                                                                                        <asp:Label ID="Label19" runat="server" Text="Address (*)" meta:resourcekey="Label19Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey" width="26%" colspan="3">
                                                                                                    <asp:TextBox ID="txtStreet" runat="server" Width="414px" CssClass="TextBox" meta:resourcekey="txtStreetResource1"></asp:TextBox>
                                                                                                </td>
                                                                                                
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        
                                                                                                        <asp:Label ID="Label20" runat="server" Text="City (*)" meta:resourcekey="Label20Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    <asp:TextBox ID="txtCityBilling" runat="server" CssClass="TextBox" meta:resourcekey="txtCityBillingResource1"></asp:TextBox></td>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        
                                                                                                        <asp:Label ID="Label21" runat="server" Text="State (*)" meta:resourcekey="Label21Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    <asp:TextBox ID="txtStateBilling" runat="server" CssClass="TextBox" meta:resourcekey="txtStateBillingResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        <asp:Label ID="Label22" runat="server" Text="Country (*)" meta:resourcekey="Label22Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    <asp:DropDownList ID="ddlCountriesBilling" runat="server" Width="170px" CssClass="TextBox" meta:resourcekey="ddlCountriesBillingResource1">
                                                                                                    </asp:DropDownList></td>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        <asp:Label ID="Label23" runat="server" Text="Zip Code (*)" meta:resourcekey="Label23Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    <asp:TextBox ID="txtZipCodeBilling" runat="server" CssClass="TextBox" meta:resourcekey="txtZipCodeBillingResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey1">
                                                                                                    <input type="hidden" name="UserName" />
                                                                                                    <input type="hidden" name="Password1" />
                                                                                                    <input type="hidden" name="Password2" /></td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                                <td class="bg_grey1">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey1">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>
                                                                                                        
                                                                                                        
                                                                                                        <asp:Label ID="Label24" runat="server" Text="Time Zone (*)" meta:resourcekey="Label24Resource1"></asp:Label>
                                                                                                        </div>
                                                                                                </td>
                                                                                                <td class="bg_grey1" colspan="3">
                                                                                                    <asp:DropDownList ID="ddlTimeZone" runat="server" >
                                                                                                        
                                                                                                    </asp:DropDownList></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>&nbsp;</div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    </td>
                                                                                                <td class="bg_grey">
                                                                                                    <div align="right">
                                                                                                        <span class="error"></span>&nbsp;</div>
                                                                                                </td>
                                                                                                <td class="bg_grey">
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="error" colspan="4">
                                                                                                    
                                                                                                    <asp:Label ID="Label25" runat="server" Text="Important, your confirmation information will be sent to this address" meta:resourcekey="Label25Resource1"></asp:Label>
                                                                                                    </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                    <table cellspacing="0" cellpadding="5" width="100%" border="0" runat="server" visible="false">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td class="bg_grey1" width="24%">
                                                                                                    <span class="error"></span>
                                                                                                    
                                                                                                    <asp:Label ID="Label26" runat="server" Text="Broadband Provider" meta:resourcekey="Label26Resource1"></asp:Label>
                                                                                                    </td>
                                                                                                <td class="bg_grey1" width="76%">
                                                                                                    <asp:TextBox ID="txtBroadBand" runat="server" CssClass="TextBox" meta:resourcekey="txtBroadBandResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="bg_grey" width="24%">
                                                                                                    
                                                                                                    <asp:Label ID="Label27" runat="server" Text="Coupon" meta:resourcekey="Label27Resource1"></asp:Label>
                                                                                                    </td>
                                                                                                <td class="bg_grey1" width="76%">
                                                                                                    <asp:TextBox ID="txtCoupon" runat="server" CssClass="TextBox" meta:resourcekey="txtCouponResource1"></asp:TextBox></td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td align="center">
                                                                    <input class="buttonDefault" onclick="history.back();" type="button" value="Back"
                                                                        name="Back" runat="server"
                                                                        meta:resourcekey="Button1Resource1"
                                                                        />

                                                                    <script language="JavaScript"> 
					      function BackOneScreen() {
	                         var aurl = 'plans.aspx';
				        	 window.location = aurl;
               			  }
                                                                    </script>

                                                                </td>
                                                                <td align="center">
                                                                    <asp:Button ID="submit" OnClick="submit_Click" runat="server" CssClass="buttonDefault"
                                                                        Text="Continue" meta:resourcekey="submitResource1"></asp:Button></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
