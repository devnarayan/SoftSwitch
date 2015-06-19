<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisterCustomer.ascx.cs"
    Inherits="CCEstore.RegisterCustomer" %>
<%@ Register Src="Controls/TimeZone.ascx" TagName="TimeZone" TagPrefix="uc1" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<script type="text/javascript" language="javascript">


    function savecc(obj) {
        if (obj.checked) {
            document.getElementById('<%=chkSaveCCInfo.ClientID%>').checked = true;
        }
    }

    /* 
    function OnClientclose(radWindow)
    {         
               
    if ( radWindow.argument== "CustomerLoggedIn")
    window.location="RegisterHS.aspx";
    }  
    */
</script>
<table width="700px" border="0" cellpadding="0" cellspacing="0">
    <tr height="40px">
        <td width="100%" align="left" class="heading">
            <asp:Panel ID="Panel1" runat="server" align="left" meta:resourcekey="Panel1Resource1">
                <asp:Label ID="lblTitle" runat="server" Text="Register With Us" meta:resourcekey="lblTitleResource1"></asp:Label>
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
                    <td colspan="5">
                        <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="left">
                        <table id="tblAlreadyRegistered" runat="server" visible="true" class="bg_blue">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Already Registered? " Visible="False"
                                        meta:resourcekey="Label1Resource1"></asp:Label>
                                    <span id="divLogin" visible="false">
                                        <asp:Label ID="lblLogin" runat="server" BackColor="Transparent" Font-Underline="True"
                                            ForeColor="Blue" Text="Log In Here " Visible="False" meta:resourcekey="lblLoginResource1"></asp:Label></span>
                                    <asp:Label ID="Label4" runat="server" Text=" to retrieve information." Visible="False"
                                        meta:resourcekey="Label4Resource1"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="left">
                        <span class="subtitle"><span>
                            <asp:Label ID="lblTopHeader" runat="server" Text="Credentials" meta:resourcekey="lblTopHeaderResource1"></asp:Label>
                        </span></span>
                    </td>
                </tr>
                <tr>
                    <td width="10%">
                    </td>
                    <td width="250px">
                        <asp:Label ID="lblEmail" runat="server" Font-Bold="False" Text="Login/Email" CssClass="bg_blue"
                            meta:resourcekey="lblEmailResource1"></asp:Label>
                        <asp:Label ID="lblEmailReuired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblEmailReuiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" Width="250px" MaxLength="50"
                            meta:resourcekey="txtEmailResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Font-Bold="False" Text="Password" CssClass="bg_blue"
                            meta:resourcekey="lblPasswordResource1"></asp:Label>
                        <asp:Label ID="lblPasswordRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblPasswordRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" Width="250px" MaxLength="30"
                            TextMode="Password" meta:resourcekey="txtPasswordResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lbl_ConfirmPassword" runat="server" Font-Bold="False" Text=" Confirm Password"
                            CssClass="bg_blue" meta:resourcekey="lbl_ConfirmPasswordResource1"></asp:Label>
                        <asp:Label ID="Label7" runat="server" CssClass="error" Font-Bold="True" ForeColor="Black"
                            meta:resourcekey="Label7Resource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmedPassword" runat="server" CssClass="textbox" Width="250px"
                            MaxLength="30" TextMode="Password" meta:resourcekey="txtConfirmedPasswordResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="10%">
                    </td>
                    <td>
                        <asp:HiddenField ID="hdnTariff_ID" runat="server" />
                        <asp:HiddenField ID="hdnGroup_ID" runat="server" />
                        <asp:HiddenField ID="hdnPayOnlineNow" runat="server" />
                        <asp:HiddenField ID="hdnSubscriberDate" runat="server" />
                        <asp:HiddenField ID="hdnPin" runat="server" />
                        <asp:HiddenField ID="hdnRefererID" Value="0" runat="server" />
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="left">
                        <span class="subtitle"><span>
                            <asp:Label ID="lblTopHeader_Billing" runat="server" Text="Contact Details" meta:resourcekey="lblTopHeader_BillingResource1"></asp:Label>&nbsp;</span></span>
                    </td>
                </tr>
                <tr id="trCustomerCulture" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td style="height: 24px">
                        <asp:Label ID="lblCustomerCulture" runat="server" Font-Bold="False" Text="Language/Culture"
                            CssClass="bg_blue" meta:resourcekey="lblCustomerCultureResource1"></asp:Label>
                        <asp:Label ID="lblCustomerCultureRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblLanguageRequiredResource1">(*)</asp:Label>
                    </td>
                    <td style="height: 24px">
                        <WebCtlIpsmarx:RadComboBox ID="ddlCustomerCulture" runat="server" Width="250px" meta:resourcekey="ddlCustomerCultureResource1">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Chinese (Simplified)" Value="zh-CN"
                                    meta:resourcekey="RadComboBoxItemResource1" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Chinese (Traditional)" Value="zh-HK"
                                    meta:resourcekey="RadComboBoxItemResource2" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="English (United Kingdom)" Value="en-GB"
                                    meta:resourcekey="RadComboBoxItemResource3" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="English (Canada)" Value="en-CA"
                                    meta:resourcekey="RadComboBoxItemResource4" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="English (United States)" Value="en-US"
                                    meta:resourcekey="RadComboBoxItemResource5" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="French (France)" Value="fr-FR"
                                    meta:resourcekey="RadComboBoxItemResource6" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Spanish (Spain)" Value="es-ES"
                                    meta:resourcekey="RadComboBoxItemResource7" />
                            </Items>
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                    <td style="height: 24px">
                    </td>
                    <td style="height: 24px">
                    </td>
                </tr>
                <tr id="trFirstName" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td width="25%">
                        <asp:Label ID="lblFirstName" runat="server" Font-Bold="False" Text="First Name" CssClass="bg_blue"
                            meta:resourcekey="lblFirstNameResource1"></asp:Label>
                        <asp:Label ID="lblFirstNameRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblFirstNameRequiredResource1">(*)</asp:Label>
                    </td>
                    <td width="65%">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="textbox" Width="250px" MaxLength="30"
                            meta:resourcekey="txtFirstNameResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trMiddleName" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td width="25%">
                        <asp:Label ID="lblMiddleName" runat="server" Font-Bold="False" Text="Middle Name"
                            CssClass="bg_blue" meta:resourcekey="lblMiddleNameResource1"></asp:Label>
                        <asp:Label ID="lblMiddleNameRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblMiddleNameRequiredResource1">(*)</asp:Label>
                    </td>
                    <td width="65%">
                        <asp:TextBox ID="txtMiddleName" runat="server" CssClass="textbox" Width="250px" MaxLength="30"
                            meta:resourcekey="txtMiddleNameResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trLastName" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Font-Bold="False" Font-Italic="False"
                            Text="Last Name" CssClass="bg_blue" meta:resourcekey="lblLastNameResource1"></asp:Label>
                        <asp:Label ID="lblLastNameRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblLastNameRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="textbox" Width="250px" MaxLength="30"
                            meta:resourcekey="txtLastNameResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trAddressStreet" runat="server" visible="false">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblAddressStreet" runat="server" Font-Bold="False" Text="Address"
                            CssClass="bg_blue" meta:resourcekey="lblAddressStreetResource1"></asp:Label>
                        <asp:Label ID="lblAddressStreetRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblAddressStreetRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddressStreet" runat="server" CssClass="textbox" Width="250px"
                            MaxLength="80" meta:resourcekey="txtAddressStreetResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trAddressCity" runat="server" visible="false">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblAddressCity" runat="server" Font-Bold="False" Text="City Name "
                            CssClass="bg_blue" meta:resourcekey="lblAddressCityResource1"></asp:Label>
                        <asp:Label ID="lblAddressCityRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblAddressCityRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddressCity" runat="server" CssClass="textbox" Width="250px"
                            MaxLength="30" meta:resourcekey="txtAddressCityResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trAddressState" runat="server" visible="false">
                    <td width="10%">
                    </td>
                    <td style="height: 24px">
                        <asp:Label ID="lblAddressState" runat="server" Font-Bold="False" Text="Province"
                            CssClass="bg_blue" meta:resourcekey="lblAddressStateResource1"></asp:Label>
                        <asp:Label ID="lblAddressStateRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblAddressStateRequiredResource1">(*)</asp:Label>
                    </td>
                    <td style="width: 871px; height: 24px;">
                        <WebCtlIpsmarx:RadComboBox ID="ddlAddressState" runat="server" Width="250px" MaxHeight="150px"
                            meta:resourcekey="ddlAddressStateResource1">
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                    <td style="height: 24px">
                    </td>
                    <td style="height: 24px">
                    </td>
                </tr>
                <tr id="trAddressZip" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <strong>
                            <asp:Label ID="lblAddressZip" runat="server" Text="Postal Code" CssClass="bg_blue"
                                Font-Bold="False" meta:resourcekey="lblAddressZipResource1"></asp:Label>
                            <asp:Label ID="lblAddressZipRequired" runat="server" CssClass="error" Font-Bold="True"
                                ForeColor="Black" meta:resourcekey="lblAddressZipRequiredResource1">(*)</asp:Label></strong>
                    </td>
                    <td style="width: 871px">
                        <asp:TextBox ID="txtAddressZip" runat="server" CssClass="textbox" Width="250px" MaxLength="10"
                            meta:resourcekey="txtAddressZipResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trCountryName_Abbreviation" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <strong>
                            <asp:Label ID="lblCountryName_Abbreviation" runat="server" Font-Bold="False" Text="Country "
                                CssClass="bg_blue" meta:resourcekey="lblCountryName_AbbreviationResource1"></asp:Label>
                            <asp:Label ID="lblCountryName_AbbreviationRequired" runat="server" CssClass="error"
                                Font-Bold="True" ForeColor="Black" meta:resourcekey="lblCountryName_AbbreviationRequiredResource1">(*)</asp:Label></strong>
                    </td>
                    <td class="fontnormal" style="height: 27px">
                        <span class="font">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <WebCtlIpsmarx:RadComboBox ID="ddlCountryName_Abbreviation" runat="server" Width="250px"
                                        MaxHeight="150px" MaxLength="5" meta:resourcekey="ddlCountryName_AbbreviationResource1">
                                    </WebCtlIpsmarx:RadComboBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </span>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trPhoneNumber" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblPhoneNumber" runat="server" Font-Bold="False" Text="Contact Phone"
                            CssClass="bg_blue" meta:resourcekey="lblPhoneNumberResource1"></asp:Label>
                        <asp:Label ID="lblPhoneNumberRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblPhoneNumberRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="textbox" Width="250px"
                                    MaxLength="20" meta:resourcekey="txtPhoneNumberResource1"></asp:TextBox>
                                <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtPhoneNumber">
                                </ajaxIPSmarx:FilteredTextBoxExtender>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td class="fontnormal">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trCellNumber" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblCellNumber" runat="server" Font-Bold="False" Text="Cell Number"
                            meta:resourcekey="lblCellNumberResource1"></asp:Label>
                        <asp:Label ID="lblCellNumberRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCellNumberRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtCellNumber" runat="server" CssClass="textbox" MaxLength="15"
                                    Width="250px" meta:resourcekey="txtCellNumberResource1"></asp:TextBox>
                                <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtCellNumber">
                                </ajaxIPSmarx:FilteredTextBoxExtender>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trFaxNumber" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblFaxNumber" runat="server" Text="Fax Number" Font-Bold="False" CssClass="bg_blue"
                            meta:resourcekey="lblFaxNumberResource1"></asp:Label>
                        <asp:Label ID="lblFaxNumberRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblFaxNumberRequiredResource1">(*)</asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtFaxNumber" runat="server" CssClass="textbox" Width="250px" MaxLength="20"
                                    meta:resourcekey="txtFaxNumberResource1"></asp:TextBox>
                                <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtFaxNumber">
                                </ajaxIPSmarx:FilteredTextBoxExtender>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td style="height: 26px">
                    </td>
                    <td style="height: 26px">
                    </td>
                </tr>
                <tr id="trCompanyName" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblCompanyName" runat="server" Text="Company" Font-Bold="False" CssClass="bg_blue"
                            meta:resourcekey="lblCompanyNameResource1"></asp:Label>
                        <asp:Label ID="lblCompanyNameRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCompanyNameRequiredResource1">(*)</asp:Label>
                    </td>
                    <td style="width: 871px">
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="textbox" Width="250px"
                            MaxLength="40" meta:resourcekey="txtCompanyNameResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trCustomField1" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblCustomField1" runat="server" Font-Bold="False" Text="CustomizeField1"
                            CssClass="bg_blue" meta:resourcekey="lblCustomField1Resource1"></asp:Label>
                        <asp:Label ID="lblCustomField1Required" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCustomField1RequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCustomField1" runat="server" CssClass="textbox" MaxLength="40"
                            Width="250px" meta:resourcekey="txtCustomField1Resource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trCustomField2" runat="server" visible="true">
                    <td width="10%" style="height: 26px">
                    </td>
                    <td style="height: 26px">
                        <asp:Label ID="lblCustomField2" runat="server" Font-Bold="False" Text="CustomizeField2"
                            CssClass="bg_blue" meta:resourcekey="lblCustomField2Resource1"></asp:Label>
                        <asp:Label ID="lblCustomField2Required" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCustomField2RequiredResource1">(*)</asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txtCustomField2" runat="server" CssClass="textbox" MaxLength="40"
                            Width="250px" meta:resourcekey="txtCustomField2Resource1"></asp:TextBox>
                    </td>
                    <td style="height: 26px">
                    </td>
                    <td style="height: 26px">
                    </td>
                </tr>
                <tr id="trCustomField3" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblCustomField3" runat="server" Font-Bold="False" Text="CustomizeField3"
                            CssClass="bg_blue" meta:resourcekey="lblCustomField3Resource1"></asp:Label>
                        <asp:Label ID="lblCustomField3Required" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCustomField3RequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCustomField3" runat="server" CssClass="textbox" MaxLength="40"
                            Width="250px" meta:resourcekey="txtCustomField3Resource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trCustomField4" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblCustomField4" runat="server" Font-Bold="False" Text="CustomizeField4"
                            CssClass="bg_blue" meta:resourcekey="lblCustomField4Resource1"></asp:Label>
                        <asp:Label ID="lblCustomField4Required" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCustomField4RequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCustomField4" runat="server" CssClass="textbox" MaxLength="40"
                            Width="250px" meta:resourcekey="txtCustomField4Resource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trCustomField5" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblCustomField5" runat="server" Font-Bold="False" Text="CustomizeField5"
                            CssClass="bg_blue" meta:resourcekey="lblCustomField5Resource1"></asp:Label>
                        <asp:Label ID="lblCustomField5Required" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblCustomField5RequiredResource1">(*)</asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txtCustomField5" runat="server" CssClass="textbox" MaxLength="40"
                            Width="250px" meta:resourcekey="txtCustomField5Resource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trTimeZone_ID" runat="server" visible="true">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label ID="lblTimeZone_ID" runat="server" Font-Bold="False" Text="Time Zone"
                            CssClass="bg_blue" meta:resourcekey="lblTimeZone_IDResource1"></asp:Label>
                        <asp:Label ID="lblTimeZone_IDRequired" runat="server" CssClass="error" Font-Bold="True"
                            ForeColor="Black" meta:resourcekey="lblTimeZone_IDRequiredResource1">(*)</asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadComboBox ID="ddlTimeZone_ID" runat="server" Width="400px" MaxHeight="150px"
                            meta:resourcekey="ddlTimeZone_IDResource1">
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                    <td style="height: 24px">
                    </td>
                    <td style="height: 24px">
                    </td>
                </tr>
                <tr id="trEmailAlertSetting" runat="server" visible="false">
                    <td colspan="5" align="left">
                        <span class="subtitle"><span>
                            <asp:Label ID="lblEmailAlertTitle" runat="server" Text="Email Alert Setting" meta:resourcekey="lblEmailAlertTitleResource1"></asp:Label>&nbsp;</span></span>
                    </td>
                </tr>
                <tr id="trEmailAlert" runat="server" visible="false">
                    <td width="10%">
                    </td>
                    <td style="height: 24px">
                        <asp:Label ID="lblemailAlert" runat="server" Font-Bold="False" Text="Email Alert"
                            CssClass="bg_blue" meta:resourcekey="lblemailAlertResource1"></asp:Label>
                    </td>
                    <td style="height: 24px">
                        <WebCtlIpsmarx:RadComboBox ID="ddlEmailAlert" runat="server" Width="250px">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" />
                            </Items>
                        </WebCtlIpsmarx:RadComboBox>
                    </td>
                    <td style="height: 24px">
                    </td>
                    <td style="height: 24px">
                    </td>
                </tr>
                <tr id="trTriggerLimit" runat="server" visible="false">
                    <td width="10%">
                    </td>
                    <td width="25%">
                        <asp:Label ID="lblTriggerLimit" runat="server" Font-Bold="False" Text="Trigger Limit"
                            CssClass="bg_blue" meta:resourcekey="lblTriggerLimitResource1"></asp:Label>
                    </td>
                    <td width="65%">
                        <asp:TextBox ID="txtTriggerLimit" runat="server" CssClass="textbox" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trAgentCode" visible="false" runat="server">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblAgentCode" Text="Agent Code" Font-Bold="False" CssClass="bg_blue"
                            Visible="False" meta:resourcekey="lblAgentCodeResource1" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtRefererName" runat="server" CssClass="textbox" Width="250px"
                            MaxLength="10" meta:resourcekey="txtRefererNameResource1"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr id="trReferralID" visible="false" runat="server">
                    <td width="10%">
                    </td>
                    <td>
                        <asp:Label runat="server" ID="Label2" Text="Referral Email" Font-Bold="False" CssClass="bg_blue" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtReferralEmail" runat="server" CssClass="textbox" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                    </td>
                </tr>
                <tr id="trCreditCard" runat="server">
                    <td colspan="5">
                        <table cellpadding="0" cellspacing="5" border="0" bgcolor="#f4f4f4" width="650">
                            <tr>
                                <td colspan="3" class="heading">
                                    <asp:CheckBox ID="chkSaveCCInfo" runat="server" CssClass="fontnormal" Text="Save my credit card "
                                        OnCheckedChanged="chkRecharge_CheckedChanged" Font-Bold="True" AutoPostBack="True"
                                        Checked="true" meta:resourcekey="chkSaveCCInfoResource1" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Panel ID="pnlCreditCard" runat="server" Width="100%" meta:resourcekey="pnlCreditCardResource1">
                                                <table id="TABLE1" border="0" cellpadding="3" cellspacing="0" width="650">
                                                    <tr>
                                                        <td width="5%">
                                                        </td>
                                                        <td class="fontnormal" nowrap="" style="height: 28px">
                                                            <asp:Label ID="Label8" runat="server" Text="Credit Card Type(*)" meta:resourcekey="Label8Resource1"></asp:Label>
                                                        </td>
                                                        <td colspan="3" style="height: 28px">
                                                            <asp:DropDownList ID="ddlCTypes" runat="server" CssClass="textbox" Width="241px">
                                                                <asp:ListItem Text="VISA CARD" Value="4"></asp:ListItem>
                                                                <asp:ListItem Text="MASTER CARD" Value="3"></asp:ListItem>
                                                                <asp:ListItem Text="AMERICAN EXPRESS" Value="1"></asp:ListItem>
                                                                <asp:ListItem Value="2">DISCOVER</asp:ListItem>
                                                                <asp:ListItem Text="OTHER" Value="5"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="5%">
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label9" runat="server" Text="Name on Card (*)" meta:resourcekey="Label9Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtCName" runat="server" CssClass="textbox" Width="135px" meta:resourcekey="txtCNameResource1"></asp:TextBox>
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label11" runat="server" Text="Card Number (*)" meta:resourcekey="Label11Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtCNumber" runat="server" CssClass="textbox" MaxLength="20" Width="120px"
                                                                meta:resourcekey="txtCNumberResource1"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="5%">
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label10" runat="server" Text="Expiration (*)" meta:resourcekey="Label10Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtCExpire" runat="server" Columns="4" CssClass="textbox" MaxLength="4"
                                                                meta:resourcekey="txtCExpireResource1"></asp:TextBox>
                                                            <font class="font">(MMYY)</font>
                                                        </td>
                                                        <td class="fontnormal" style="height: 30px">
                                                            <asp:Label ID="Label12" runat="server" Text="Security Code(*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                                        </td>
                                                        <td style="height: 30px">
                                                            <asp:TextBox ID="txtSecCode" runat="server" Columns="3" CssClass="textbox" MaxLength="4"
                                                                meta:resourcekey="txtSecCodeResource1"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <ajaxIPSmarx:FilteredTextBoxExtender ID="Filteredtextboxextender6" runat="server"
                                                    Enabled="True" FilterType="Numbers" TargetControlID="txtCExpire">
                                                </ajaxIPSmarx:FilteredTextBoxExtender>
                                            </asp:Panel>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="chkSaveCCInfo" EventName="CheckedChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="trAutoRecharge" runat="server">
                    <td colspan="5" align="left" width="100%">
                        <asp:Panel ID="pnlAutoRecharge" runat="server" Width="90%" meta:resourcekey="pnlAutoRechargeResource1">
                            <table cellpadding="0" cellspacing="5" border="0" bgcolor="#f4f4f4" width="100%">
                                <tr>
                                    <td colspan="3" class="heading">
                                        <asp:Label ID="Label5" runat="server" ForeColor="#C0C000" Text="Automatic Recharge"
                                            meta:resourcekey="Label5Resource1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10%">
                                    </td>
                                    <td width="50%">
                                        <asp:CheckBox ID="chkRecharge" runat="server" CssClass="fontnormal" Text="Automatically recharge my credit card "
                                            onclick="savecc(this)" Font-Bold="True" AutoPostBack="True" meta:resourcekey="chkRechargeResource1" />
                                        (<asp:Label ID="lblCurrencySymbol" runat="server" Text="$"></asp:Label>)
                                    </td>
                                    <td width="40%">
                                        <WebCtlIpsmarx:RadComboBox ID="ddlRechargeAmount" Width="150px" runat="server" meta:resourcekey="ddlRechargeAmountResource1">
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td class="fontnormal">
                                        <asp:Label runat="server" ID="Label6" Text="When my balance goes below" Font-Bold="True"
                                            meta:resourcekey="Label6Resource1" />
                                        (<asp:Label ID="lblCurrencySymbol1" runat="server" Text="$"></asp:Label>)
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="ddlAlertLimit" Width="150px" runat="server" meta:resourcekey="ddlAlertLimitResource1">
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="1" align="center">
            <asp:HiddenField ID="txtLoginAttempt" Value="0" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="1" align="center">
            <asp:Button ID="btnUdpate" runat="server" Text="Update Info" CssClass="Button" Visible="False"
                OnClick="btnUdpate_Click" Width="100px" meta:resourcekey="btnUdpateResource1" />
        </td>
    </tr>
</table>
<WebCtlIpsmarx:RadWindow ID="radwinLogin" runat="server" BorderStyle="Inset" Height="393px"
    KeepInScreenBounds="True" Modal="True" NavigateUrl="Customerlogin.aspx" OnClientClose="OnClientclose"
    ReloadOnShow="True" ShowContentDuringLoad="False" Skin="Black" Width="431px"
    OpenerElementID="divLogin" Behavior="Default" InitialBehavior="None" Left=""
    meta:resourcekey="radwinLoginResource1" Top="">
</WebCtlIpsmarx:RadWindow>
