<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallbackServices.ascx.cs" Inherits="CCEstore.CallbackServices" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register TagPrefix="cc" TagName="AD" Src="wucOnlineDepositAD.ascx" %>


            <table width="700px" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        
                        <!-- START OF CHOOSE PAYING STUFF -->
                        <table cellpadding="0">

                            <tr>
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td width="30%">
                                                <asp:Image ID="imgService" runat="server" ImageUrl="Images/service1.gif" Height="100px" Width="200px" meta:resourcekey="imgServiceResource1" /></td>
                                            <td width="70%">
                                                <img src="<%= Page.ResolveUrl("~")%>images/pix" width="1" height="1" />
                                                <b>
                                                    <asp:Label ID="lblServiceName" runat="server" Font-Size="Large" meta:resourcekey="lblServiceNameResource1"></asp:Label></b><br />
                                                <br />
                                                <asp:Label ID="lblServiceDescription" runat="server" meta:resourcekey="lblServiceDescriptionResource1"></asp:Label>
                                                <asp:Label ID="lblServiceTemplateID" runat="server" Width="55px" Visible="False" meta:resourcekey="lblServiceTemplateIDResource1"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table id="tblSetting" runat="server">
                            <tr id="trTitle" runat="server" visible="false">
                                <td colspan="5" class="heading">
                                    <span>&nbsp;&nbsp;<span>
                                        <asp:Label ID="lblTopHeader_Phone" runat="server" Text="Pinless Access Phone Numbers:"
                                            ForeColor="#C0C000" meta:resourcekey="lblTopHeader_PhoneResource1"></asp:Label>&nbsp;</span></span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label></td>
                            </tr>
                            <tr id="trPhoneNumber1" runat="server" visible="false">
                                <td width="10%">
                                </td>
                                <td width="20%">
                                    <asp:Label runat="server" ID="lblPhoneNumber1" Text="Phone Number 1" Font-Bold="False"
                                        CssClass="bg_blue" meta:resourcekey="lblPhoneNumber1Resource1" />
                                    <asp:Label ID="lblPhoneNumber1Required" runat="server" CssClass="error" Font-Bold="True"
                                        ForeColor="Black" meta:resourcekey="lblPhoneNumber1RequiredResource1">(*)</asp:Label></td>
                                <td width="70%">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtPhoneNumber1" runat="server" CssClass="textbox" MaxLength="20"
                                                Width="150px" meta:resourcekey="txtPhoneNumber1Resource1"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                                Enabled="True" FilterType="Numbers" TargetControlID="txtPhoneNumber1">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr id="trPhoneNumber2" runat="server" visible="false">
                                <td width="10%">
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="lblPhoneNumber2" Text="Phone Number 2" Font-Bold="False"
                                        CssClass="bg_blue" meta:resourcekey="lblPhoneNumber2Resource1" />
                                    <asp:Label ID="lblPhoneNumber2Required" runat="server" CssClass="error" Font-Bold="True"
                                        ForeColor="Black" meta:resourcekey="lblPhoneNumber2RequiredResource1">(*)</asp:Label></td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtPhoneNumber2" runat="server" CssClass="textbox" MaxLength="20"
                                                Width="150px" meta:resourcekey="txtPhoneNumber2Resource1"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                                Enabled="True" FilterType="Numbers" TargetControlID="txtPhoneNumber2">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr id="trPhoneNumber3" runat="server" visible="false">
                                <td width="10%">
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="lblPhoneNumber3" Text="Phone Number 3" Font-Bold="False"
                                        CssClass="bg_blue" meta:resourcekey="lblPhoneNumber3Resource1" />
                                    <asp:Label ID="lblPhoneNumber3Required" runat="server" CssClass="error" Font-Bold="True"
                                        ForeColor="Black" meta:resourcekey="lblPhoneNumber3RequiredResource1">(*)</asp:Label></td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtPhoneNumber3" runat="server" CssClass="textbox" MaxLength="20"
                                                Width="150px" meta:resourcekey="txtPhoneNumber3Resource1"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server"
                                                Enabled="True" FilterType="Numbers" TargetControlID="txtPhoneNumber3">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr id="trPhoneNumber4" runat="server" visible="false">
                                <td width="10%">
                                </td>
                                <td style="height: 30px">
                                    <asp:Label runat="server" ID="lblPhoneNumber4" Text="Phone Number 4" Font-Bold="False"
                                        CssClass="bg_blue" meta:resourcekey="lblPhoneNumber4Resource1" />
                                    <asp:Label ID="lblPhoneNumber4Required" runat="server" CssClass="error" Font-Bold="True"
                                        ForeColor="Black" meta:resourcekey="lblPhoneNumber4RequiredResource1">(*)</asp:Label></td>
                                <td style="height: 30px">
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtPhoneNumber4" runat="server" CssClass="textbox" MaxLength="20"
                                                Width="150px" meta:resourcekey="txtPhoneNumber4Resource1"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server"
                                                Enabled="True" FilterType="Numbers" TargetControlID="txtPhoneNumber4">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td style="height: 30px">
                                </td>
                                <td style="height: 30px">
                                </td>
                            </tr>
                        </table>
                        <table width="100%"   >
                            <tr>
                                <td>
                                </td>
                                <td width="29%">
                                    <strong>
                                        <asp:Label ID="Label1" runat="server" Text="Purchase" Font-Bold="True" meta:resourcekey="Label1Resource1"></asp:Label>
                                        (<%= PayCentral.Library.General.GetCurrencySymbol() %>)
                                        <asp:Label ID="Label2" runat="server" CssClass="error" Font-Bold="True" ForeColor="Black" meta:resourcekey="Label2Resource1">(*)</asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="ddlPayment" runat="server" 
                                        meta:resourcekey="ddlPaymentResource1" MarkFirstMatch="True" >
                                        
                                        
                                    </WebCtlIpsmarx:RadComboBox>
                                    <asp:TextBox ID="txtPayment" runat="server" CssClass="textbox" Width="150px" meta:resourcekey="txtPaymentResource1"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>
                                    <span class="discount_text"><cc:AD id="AD" runat="server" /></span></td>
                            </tr>
                            <tr>
                                <td colspan="3" >
                                    <strong>
                                    (
                                    <asp:Label id="Label3" runat="server" Text="Already registered and want to make a payment? Click 'My Account' and choose 'Make Payment'." meta:resourcekey="Label3Resource1" ></asp:Label>
                                    )
                                    </strong>
                                </td>
                            </tr>
                        </table>
                        <!-- END OF CHOOSE PAYING STUFF -->
      
                    </td>
                </tr>
            </table>
        