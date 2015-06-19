<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucManage911.ascx.cs" Inherits="CCEstore.wucManage911" %>

    <table width="700px" border="0" cellpadding="0" cellspacing="0">
        <tr height="40px">
            <td width="100%" align="left" class="heading"  >
                <asp:Panel ID="Panel1" runat="server" align="left" meta:resourcekey="Panel1Resource1">
                    <asp:Label ID="lblTitle" runat="server" Text="911 Address" meta:resourcekey="lblTitleResource1"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td width="650px"> 
                <!-- <hr /> -->
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" align="left" border="0">
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="error" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="left">
                            <span class="subtitle"><span>
                                <asp:Label ID="lblTopHeader" runat="server" Text="Service" meta:resourcekey="lblTopHeaderResource1" ></asp:Label>
                            </span></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%"></td>
                        <td width="100px">
                            <asp:Label ID="lblSelect" runat="server" Font-Bold="False" Text="Select the service" CssClass="bg_blue" meta:resourcekey="lblEmailResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="ddlService" runat="server" Width="250px" 
                                meta:resourcekey="ddlCustomerCultureResource1" 
                                onselectedindexchanged="ddlService_SelectedIndexChanged" 
                                AutoPostBack="True">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="left" >
                            <span class="subtitle"><span >
                                <asp:Label ID="lblTopHeader_Billing" runat="server" Text="Information" meta:resourcekey="lblTopHeader_BillingResource1" ></asp:Label>&nbsp;</span></span>
                        </td>
                    </tr>
                    <tr id="trAddress1" runat="server">
                        <td width="10%"></td>
                        <td>
                            <asp:Label ID="lblAddress1" runat="server" Font-Bold="False" Text="Address 1" CssClass="bg_blue" meta:resourcekey="lblFirstNameResource1"></asp:Label>
                            <asp:Label ID="lblAddress1Required" runat="server" Font-Bold="True" 
                                CssClass="error" ForeColor="Black" Text="(*)" 
                                meta:resourcekey="lblAddress1RequiredResource1" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="textbox" Width="250px" MaxLength="30" meta:resourcekey="txtFirstNameResource1"></asp:TextBox>
                        </td>
                    </tr>                    
                    <tr id="trAddress2" runat="server">
                        <td width="10%"></td>
                        <td>
                            <asp:Label ID="lblAddress2" runat="server" Font-Bold="False" Text="Address 2" CssClass="bg_blue" meta:resourcekey="lblAddressStreetResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="textbox" Width="250px"
                                MaxLength="80" meta:resourcekey="txtAddressStreetResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr id="trAddressCity" runat="server">
                        <td width="10%"></td>
                        <td>
                            <asp:Label ID="lblCity" runat="server" Font-Bold="False" Text="City"  CssClass="bg_blue" meta:resourcekey="lblAddressCityResource1"></asp:Label>
                            <asp:Label ID="lblCityRequired" runat="server" Font-Bold="True" 
                                CssClass="error" ForeColor="Black" Text="(*)" 
                                meta:resourcekey="lblCityRequiredResource1" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="textbox" Width="250px"
                                MaxLength="30" meta:resourcekey="txtAddressCityResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr id="trAddressState" runat="server">
                        <td width="10%"></td>
                        <td>
                            <asp:Label ID="lblState" runat="server" Font-Bold="False" Text="State" CssClass="bg_blue" meta:resourcekey="lblAddressStateResource1"></asp:Label>
                            <asp:Label ID="lblStateRequired" runat="server" Font-Bold="True" 
                                CssClass="error" ForeColor="Black" Text="(*)" 
                                meta:resourcekey="lblStateRequiredResource1" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtState" runat="server" CssClass="textbox" Width="150px"
                                MaxLength="30" meta:resourcekey="txtAddressCityResource1"></asp:TextBox>
                        </td>                
                    </tr>
                    <tr id="trCountryName_Abbreviation" runat="server">
                        <td width="10%"></td>
                        <td>
                            <strong>
                                <asp:Label ID="lblCountryName_Abbreviation" runat="server" Font-Bold="False" Text="Country" CssClass="bg_blue" meta:resourcekey="lblCountryName_AbbreviationResource1"></asp:Label>
                                <asp:Label ID="lblCoutryRequired" runat="server" Font-Bold="True" 
                                CssClass="error" ForeColor="Black" Text="(*)" 
                                meta:resourcekey="lblCoutryRequiredResource1" />
                            </strong>
                        </td>
                        <td class="fontnormal" style="height: 27px">
                            <span class="font">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <WebCtlIpsmarx:RadComboBox ID="ddlCountries" runat="server" Width="250px" MaxHeight="150px" MaxLength="5" meta:resourcekey="ddlCountryName_AbbreviationResource1">
                                        
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                        
                                    </WebCtlIpsmarx:RadComboBox>
                                </ContentTemplate>

                            </asp:UpdatePanel>
                            </span>
                        </td>
                    </tr>

                    <tr id="trPhoneNumber"  runat="server" visible="true">
                        <td width="10%"></td>
                        <td>
                            <asp:Label ID="lblZipCode" runat="server" Font-Bold="False" Text="Zip Code" CssClass="bg_blue" meta:resourcekey="lblPhoneNumberResource1"></asp:Label>
                            <asp:Label ID="lblZipCodeRequired" runat="server" Font-Bold="True" 
                                CssClass="error" ForeColor="Black" Text="(*)" 
                                meta:resourcekey="lblZipCodeRequiredResource1" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtZipCode" runat="server" CssClass="textbox" Width="250px"
                                MaxLength="30" meta:resourcekey="txtAddressCityResource1"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="1" align="center"></td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="1" align="center">
                <asp:Button ID="btnUdpate" runat="server" Text="Update" CssClass="Button" 
                    Width="100px" meta:resourcekey="btnUdpateResource1" onclick="btnUdpate_Click" />
            </td>
        </tr>
        
    </table>
