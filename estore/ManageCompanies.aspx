<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" Codebehind="ManageCompanies.aspx.cs"
    Inherits="CCEstore.ManageCompanies" MasterPageFile="MainService.Master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);
        
        function EndRequestEventHandler(sender, args)
        {
            scrollTo(0,0)
        }
    </script>
    
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%">
                    <tr>
                        <td colspan="4" class="heading">
                            <asp:Label ID="lblTitle" runat="server" Text="Manage Company" 
                                meta:resourcekey="lblTitleResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" 
                                ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <asp:Label ID="lblAccountInfo" runat="server" Text="Account Information" 
                                meta:resourcekey="lblAccountInfoResource1"></asp:Label></strong>
                        </td>
                    </tr>
                    
                   
                    
                    <tr>
                        <td>
                            <asp:Label ID="lblAccount" runat="server" Text="Account" 
                                meta:resourcekey="lblAccountResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbAccount" runat="server" Width="142px" 
                                Enabled="False" meta:resourcekey="rcbAccountResource1">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" 
                                        meta:resourcekey="RadComboBoxItemResource1" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" 
                                        meta:resourcekey="RadComboBoxItemResource2" />
                                </Items>

<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        <td>
                            <asp:Label ID="lblAccountBalance" runat="server" Text="Account Balance" 
                                meta:resourcekey="lblAccountBalanceResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAccountBalance" runat="server" Enabled="False" 
                                meta:resourcekey="txtAccountBalanceResource1"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%">
                    <tr>
                        <td>
                            <strong>
                                <asp:Label ID="lblCompanyInfo" runat="server" Text="Company Information" 
                                meta:resourcekey="lblCompanyInfoResource1"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl" runat="server" Text="Company Name" 
                                meta:resourcekey="lblResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompanyName" runat="server" 
                                meta:resourcekey="txtCompanyNameResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblStartDate" runat="server" Text="Start Date" 
                                meta:resourcekey="lblStartDateResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStartDate" runat="server" Enabled="False" 
                                meta:resourcekey="txtStartDateResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name" 
                                meta:resourcekey="lblFirstNameResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server" 
                                meta:resourcekey="txtFirstNameResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name" 
                                meta:resourcekey="lblLastNameResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server" 
                                meta:resourcekey="txtLastNameResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAddress" runat="server" Text="Address" 
                                meta:resourcekey="lblAddressResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" 
                                meta:resourcekey="txtAddressResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblCityName" runat="server" Text="City Name" 
                                meta:resourcekey="lblCityNameResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCityName" runat="server" 
                                meta:resourcekey="txtCityNameResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPostalCode" runat="server" Text="Zip Code" 
                                meta:resourcekey="lblPostalCodeResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPostalCode" runat="server" 
                                meta:resourcekey="txtPostalCodeResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblProvince" runat="server" Text="Province" 
                                meta:resourcekey="lblProvinceResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtProvince" runat="server" 
                                meta:resourcekey="txtProvinceResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Label ID="lblCountry" runat="server" Text="Country" 
                                meta:resourcekey="lblCountryResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbCountry" runat="server" Width="142px" 
                                meta:resourcekey="rcbCountryResource1">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Email" 
                                meta:resourcekey="lblEmailResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" meta:resourcekey="txtEmailResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPhone" runat="server" Text="Phone" 
                                meta:resourcekey="lblPhoneResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" meta:resourcekey="txtPhoneResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblAlternatePhone" runat="server" Text="Alternate Phone" 
                                meta:resourcekey="lblAlternatePhoneResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAltPhone" runat="server" 
                                meta:resourcekey="txtAltPhoneResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Label ID="lblUrl" runat="server" Text="URL" 
                                meta:resourcekey="lblUrlResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUrl" runat="server" meta:resourcekey="txtUrlResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblFax" runat="server" Text="Fax" 
                                meta:resourcekey="lblFaxResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFax" runat="server" meta:resourcekey="txtFaxResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Label ID="lblTimeZone" runat="server" Text="Time Zone" 
                                meta:resourcekey="lblTimeZoneResource1"></asp:Label>
                        </td>
                        <td colspan="3">
                            <WebCtlIpsmarx:RadComboBox ID="rcbTimeZone" runat="server" Width="450px" 
                                meta:resourcekey="rcbTimeZoneResource1">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    
                    <tr style="visibility:collapse">
                        <td>
                            <asp:Label ID="lblLogoFile" runat="server" Text="Logo File" 
                                meta:resourcekey="lblLogoFileResource1" Visible="false"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:FileUpload ID="fulLogoFile" runat="server" Width="450px" 
                                meta:resourcekey="fulLogoFileResource1" Visible="false" />
                        </td>
                    </tr>
                    <tr style="visibility:collapse">
                        <td colspan="4">
                            <asp:Label ID="lblFormat" runat="server" Font-Italic="True" ForeColor="Red" 
                                Text="For best results the image file must be 205 x 88 (.gif, .jpg)" 
                                meta:resourcekey="lblFormatResource1" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr style="visibility:collapse">
                        <td>
                            <asp:Label ID="lblExistingLogo" runat="server" Text="Existing Logo" 
                                meta:resourcekey="lblExistingLogoResource1" Visible="false"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:Image ID="imgLogo" runat="server" meta:resourcekey="imgLogoResource1" Visible="false" />
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%">
                    <tr>
                        <td>
                            <strong>
                                <asp:Label ID="lblIpPbxSetting" runat="server" Text="IP PBX Setting" 
                                meta:resourcekey="lblIpPbxSettingResource1"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblExtLimit" runat="server" Text="Number of Extension Available" 
                                meta:resourcekey="lblExtLimitResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtExtLimit" runat="server" Enabled="False" 
                                meta:resourcekey="txtExtLimitResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblNumOfExtension" runat="server" 
                                Text="Number of Extensions Used" meta:resourcekey="lblNumOfExtensionResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNumOfExtension" runat="server" Enabled="False" 
                                meta:resourcekey="txtNumOfExtensionResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLengthOfExtension" runat="server" Text="Length of Extension" 
                                meta:resourcekey="lblLengthOfExtensionResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLengthExtension" runat="server" Enabled="False" 
                                meta:resourcekey="txtLengthExtensionResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblNumOfLine" runat="server" Text="Max. Simultaneous Calls" 
                                meta:resourcekey="lblNumOfLineResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNumOfLine" runat="server" Enabled="False" 
                                meta:resourcekey="txtNumOfLineResource1"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    
    
    <div class="module" style="width: 700px">
    <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
            <table style="text-align:center; width:100%;">
                    <tr id="trEmailAlertSetting" runat="server">
                    <td colspan="5" align="left" >
                        <span class="subtitle"><span >
                            <asp:Label ID="lblEmailAlertTitle" runat="server" 
                            Text="Email Alert Setting" meta:resourcekey="lblEmailAlertTitleResource1"  ></asp:Label>&nbsp;</span></span></td>
                </tr>
                <tr id="trEmailAlert"  runat="server">
                    <td width="10%"></td>
                    <td style="height: 24px">
                        <asp:Label ID="lblEmailAlert" runat="server" Font-Bold="False" 
                            Text="Email Alert" CssClass="bg_blue" 
                            meta:resourcekey="lblEmailAlertResource1" ></asp:Label>
		    </td>
                    <td style="height: 24px">
                        
                        <WebCtlIpsmarx:RadComboBox ID="ddlEmailAlert" runat="server" Width="250px" 
                            meta:resourcekey="ddlEmailAlertResource1" >
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" 
                                            meta:resourcekey="RadComboBoxItemResource3" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" 
                                            meta:resourcekey="RadComboBoxItemResource4" />
                                    </Items>

<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                        </WebCtlIpsmarx:RadComboBox>
                        
                        </td>
                    <td style="height: 24px">
                    </td>
                    <td style="height: 24px">
                    </td>
                </tr>
                <tr id="trTriggerLimit" runat="server">
                    <td width="10%"></td>
                    <td width="25%">
                        <asp:Label ID="lblTriggerLimit" runat="server" Font-Bold="False" 
                            Text="Trigger Limit" CssClass="bg_blue" 
                            meta:resourcekey="lblTriggerLimitResource1" ></asp:Label>
                        </td>
                    <td width="65%">
                        <asp:TextBox ID="txtTriggerLimit" runat="server" CssClass="textbox" 
                            Width="250px" meta:resourcekey="txtTriggerLimitResource1"  ></asp:TextBox></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    
    
    <div class="module" style="width: 700px">
    <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
    
            <table style="text-align:center; width:100%;">
                <tr>
                    <td colspan="5" align="left" width="100%">
                        <asp:Panel ID="pnlAutoRecharge" runat="server" Width="90%" meta:resourcekey="pnlAutoRechargeResource1">
                            <table cellpadding="0" cellspacing="5" border="0" width="100%">
                                <tr>
                                    <td colspan="3" class="heading">
                                        <asp:Label ID="Label5" runat="server" ForeColor="#C0C000" Text="Automatic Recharge" meta:resourcekey="Label5Resource1"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td width="10%"></td>
                                    <td width="50%">
                                        <asp:CheckBox ID="chkRecharge" runat="server" CssClass="fontnormal"
                                            Text="Automatically recharge my credit card " Font-Bold="True" AutoPostBack="True"
                                            OnCheckedChanged="chkRecharge_CheckedChanged" meta:resourcekey="chkRechargeResource1" /> (<asp:Label 
                                            ID="lblCurrencySymbol" runat="server" Text="$" 
                                            meta:resourcekey="lblCurrencySymbolResource1" ></asp:Label>)
                                            
                                    </td>
                                    <td width="40%">
                                        <WebCtlIpsmarx:RadComboBox ID="ddlRechargeAmount" Width="150px" runat="server" meta:resourcekey="ddlRechargeAmountResource1">
                                            
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                            
                                        </WebCtlIpsmarx:RadComboBox>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="fontnormal">
                                        <asp:Label runat="server" ID="Label6" Text="When my balance goes below" Font-Bold="True" meta:resourcekey="Label6Resource1" />
                                        (<asp:Label ID="lblCurrencySymbol1" runat="server" Text="$" 
                                            meta:resourcekey="lblCurrencySymbol1Resource1" ></asp:Label>)
                                        </td>
                                    <td>
                                        
                                        <WebCtlIpsmarx:RadComboBox ID="ddlAlertLimit" Width="150px" runat="server" meta:resourcekey="ddlAlertLimitResource1">
                                            
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                            
                                        </WebCtlIpsmarx:RadComboBox>
                                        
                                        </td>
                                </tr>
                                
                                
                                <tr>
                                    <td colspan="3">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:Panel ID="pnlCreditCard" runat="server" Width="100%" meta:resourcekey="pnlCreditCardResource1">
                                                    <table id="TABLE1" border="0" cellpadding="3" cellspacing="0" width="650">
                  
                                                        <tr>
                                                            <td width="5%"></td>
                                                            <td class="fontnormal" nowrap="" style="height: 28px">
                                                                
                                                                    <asp:Label ID="Label8" runat="server" Text="Credit Card Type(*)" meta:resourcekey="Label8Resource1"></asp:Label>
                                                                
                                                            </td>
                                                            <td colspan="3" style="height: 28px">
                                                                <asp:DropDownList ID="ddlCTypes" runat="server" CssClass="textbox" Width="241px" >
                                                                    <asp:ListItem  Text="VISA CARD" Value="4"></asp:ListItem>
                                                                    <asp:ListItem Text="MASTER CARD" Value="3"></asp:ListItem>
                                                                    <asp:ListItem Text="AMERICAN EXPRESS" Value="1"></asp:ListItem>
                                                                    <asp:ListItem Value="2" >DISCOVER</asp:ListItem>
                                                                    <asp:ListItem Text="OTHER" Value="5"></asp:ListItem>
                                                                </asp:DropDownList></td>
                                                        </tr>
                                                        <tr>
                                                            <td width="5%"></td>
                                                            <td class="fontnormal" style="height: 30px">
                                                                
                                                                <asp:Label ID="Label9" runat="server" Text="Name on Card (*)" meta:resourcekey="Label9Resource1"></asp:Label>
                                                            </td>
                                                            <td style="height: 30px">
                                                                <asp:TextBox ID="txtCName" runat="server" CssClass="textbox" Width="135px" meta:resourcekey="txtCNameResource1"></asp:TextBox></td>
                                                            <td class="fontnormal" style="height: 30px">
                                                                <asp:Label ID="Label11" runat="server" Text="Card Number (*)" meta:resourcekey="Label11Resource1"></asp:Label>
                                                                
                                                            </td>
                                                            <td style="height: 30px">
                                                                <asp:TextBox ID="txtCNumber" runat="server" CssClass="textbox" MaxLength="20" Width="120px" meta:resourcekey="txtCNumberResource1"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td width="5%"></td>
                                                            <td class="fontnormal" style="height: 30px">
                                                                 
                                                                    <asp:Label ID="Label10" runat="server" Text="Expiration (*)" meta:resourcekey="Label10Resource1"></asp:Label>
                                                            </td>
                                                            <td style="height: 30px">
                                                                <asp:TextBox ID="txtCExpire" runat="server" Columns="4" CssClass="textbox" MaxLength="4" meta:resourcekey="txtCExpireResource1"></asp:TextBox>
                                                                <font class="font">(MMYY)</font></td>
                                                            <td class="fontnormal" style="height: 30px">
                                                                <asp:Label ID="Label12" runat="server" Text="Security Code(*)" meta:resourcekey="Label12Resource1"></asp:Label>
                                                            </td>
                                                            <td style="height: 30px">
                                                                <asp:TextBox ID="txtSecCode" runat="server" Columns="3" CssClass="textbox" MaxLength="4"
                                                                    meta:resourcekey="txtSecCodeResource1"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            
                                                            <td  colspan="5">
                                                                <img height="7" src="images/pix" width="1" /></td>
                                                        </tr>
                                                    </table>
                                                    <ajaxipsmarx:filteredtextboxextender id="Filteredtextboxextender6" runat="server"
        enabled="True" filtertype="Numbers" targetcontrolid="txtCExpire">
                                                    </ajaxIPSmarx:FilteredTextBoxExtender>
                                                </asp:Panel>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="chkRecharge" EventName="CheckedChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    
        
    <div class="module" style="width: 700px">
    <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                
                
			<table style="text-align:center; width:100%;">
				<tr>
				    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="Button" meta:resourcekey="btnUpdateResource1" 
                            />        
                    </td>
                </tr>
			</table>
                
                
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft"></div>
    </div>
</div>
</asp:Content>
