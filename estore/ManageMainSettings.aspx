<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" Codebehind="ManageMainSettings.aspx.cs"
    Inherits="CCEstore.ManageMainSettings" MasterPageFile="~/MainService.Master" meta:resourcekey="PageResource1" %>

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
                        <table style="width: 100%;">
                            <tr>
                                <td colspan="2" class="heading">
                                    <asp:Label ID="lblTitle" runat="server" Text="Manage Main Settings" 
                                        meta:resourcekey="lblTitleResource1"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <hr />
                                    <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" 
                                        ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblAppSettings" runat="server" 
                                        Text="Change Application Settings" meta:resourcekey="lblAppSettingsResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:35%">
                                    <asp:Label ID="lblSelectSettingType" runat="server" Text="Select Setting Type" 
                                        meta:resourcekey="lblSelectSettingTypeResource1"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbSelectType" runat="server" Width="180px" 
                                        AutoPostBack="True" meta:resourcekey="rcbSelectTypeResource1">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Please Select" Value="" 
                                                meta:resourcekey="RadComboBoxItemResource1" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Voicemail" Value="Voicemail" 
                                                meta:resourcekey="RadComboBoxItemResource2" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="PBX Settings" Value="PBX" 
                                                meta:resourcekey="RadComboBoxItemResource3" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="DID Settings" Value="DID" Visible="false" 
                                                meta:resourcekey="RadComboBoxItemResource4" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Password" Value="Password" 
                                                meta:resourcekey="RadComboBoxItemResource5" />
                                                 <WebCtlIpsmarx:RadComboBoxItem Text="Call Center Settings" Value="CCS" 
                                                 />
                                        </Items>

<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!--[if IE]></v:roundrect><![endif]-->
                    <div class="ft">
                    </div>
                </div>
            </div>
            <asp:Panel ID="pnlVoicemail" runat="server" Visible="False" 
        meta:resourcekey="pnlVoicemailResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Label ID="lblChangeVM" runat="server" Text="Change Voicemail Settings" 
                                            meta:resourcekey="lblChangeVMResource1"></asp:Label></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMaxRingTime" runat="server" Text="Maximum Ring Time (sec.)" 
                                            meta:resourcekey="lblMaxRingTimeResource1"></asp:Label>
                                    </td>
                                    <td>
                                         <asp:TextBox ID="txtMaxRingTime" runat="server" 
                                             meta:resourcekey="txtMaxRingTimeResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMaxMessages" runat="server" Text="Maximum Number Of Messages" 
                                            meta:resourcekey="lblMaxMessagesResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMaxMessages" runat="server" 
                                            meta:resourcekey="txtMaxMessagesResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMaxDuration" runat="server" 
                                            Text="Maximum Voicemail Duration (sec.)" 
                                            meta:resourcekey="lblMaxDurationResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMaxDuration" runat="server" 
                                            meta:resourcekey="txtMaxDurationResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblFormatMusic" runat="server" 
                                            Text="Format Music" 
                                            meta:resourcekey="lblFormatMusicResource1"></asp:Label>
                                    </td>
                                    <td>
                                     <WebCtlIpsmarx:RadComboBox ID="rcbFormatMusic" runat="server"  
                                        meta:resourcekey="rcbFormatMusicResource1">
                                        <collapseanimation duration="200" type="OutQuint" />
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="wav" Value="0" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="mp3" Value="1" />
                                        </Items>
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                                                                                               
                            </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </asp:Panel>
            
            <asp:Panel ID="pnlDIDSettings" runat="server" Visible="False" 
        meta:resourcekey="pnlDIDSettingsResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Label ID="lblDIDSettings" runat="server" Text="DID Settings" 
                                            meta:resourcekey="lblDIDSettingsResource1"></asp:Label></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%">
                                            <tr style="text-align: center">
                                                <td>
                                                    <asp:Label ID="lblAssignedDid" runat="server" Text="Assigned DIDs" 
                                                        meta:resourcekey="lblAssignedDidResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr style="text-align: center">
                                                <td>
                                                    <asp:ListBox ID="lbAssignedDID" runat="server" Width="150px" Height="100px" AutoPostBack="True"
                                                        OnSelectedIndexChanged="lbAssignedDID_SelectedIndexChanged" 
                                                        meta:resourcekey="lbAssignedDIDResource1"></asp:ListBox>
                                                    <br />
                                                    <asp:Label ID="lblSelect" runat="server" 
                                                        Text="Select the DID for configuration" meta:resourcekey="lblSelectResource1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table id="tbSetting" runat="server" visible="False" style="width: 100%">
                                            <tr runat="server">
                                                <td colspan="4" runat="server">
                                                    <strong>
                                                        <asp:Label ID="lblIvr" runat="server" Text="Shared Line DID Configuration"></asp:Label></strong>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server">
                                                    <asp:Label ID="lblNameSharedLineDID" runat="server" Text="Name"></asp:Label>
                                                </td>
                                                <td colspan="3" runat="server">
                                                    <asp:TextBox ID="txtNameSharedLineDID" runat="server" Width="250px" 
                                                        MaxLength="45"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server">
                                                    <asp:Label ID="lblMaxLinesSharedLineDID" runat="server" Text="Max. Lines"></asp:Label>
                                                </td>
                                                <td colspan="3" runat="server">
                                                    <asp:TextBox ID="txtNumberLinesSharedLineDID" runat="server" Width="50px" 
                                                        MaxLength="5"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>                                    
                                </tr>
                                </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
                
                
            </asp:Panel>
            
            <asp:Panel ID="pnlPbxSettings" runat="server" Visible="False" 
        meta:resourcekey="pnlPbxSettingsResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width:100%;">
                                <tr>
                                    <td colspan="2">
                                        <strong>
                                            <asp:Label ID="lblIvrSettings" runat="server" Text="Change IVR Settings" 
                                            meta:resourcekey="lblIvrSettingsResource1"></asp:Label></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:210px;">
                                        <asp:Label ID="lblCharacter" runat="server" Text="Main Menu Character" 
                                            meta:resourcekey="lblCharacterResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCharacter" runat="server" 
                                            meta:resourcekey="txtCharacterResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblPrevCharacter" runat="server" Text="Previous Menu Character" 
                                            meta:resourcekey="lblPrevCharacterResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPrevCharacter" runat="server" 
                                            meta:resourcekey="txtPrevCharacterResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblUploadMusic" runat="server" Text="Upload Music On Hold/Park File" 
                                           ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="fudUploadMusic" runat="server" Width="300px" 
                                            meta:resourcekey="fudUploadMusicResource1" />
                                        <asp:LinkButton ID="lnbMusic" runat="server" 
                                            meta:resourcekey="lnbMusicResource1">Listen Music</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblDefaultDID" runat="server" Text="Default Caller ID" 
                                            meta:resourcekey="lblDefaultDIDResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="rcbDefaultDID" runat="server" 
                                            meta:resourcekey="rcbDefaultDIDResource1" Width="210px">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>                                
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblStepActionTimeout" runat="server" Text="Step Action Timeout (sec)" 
                                            meta:resourcekey="lblStepActionTimeoutResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtStepActionTimeout" runat="server" 
                                            meta:resourcekey="txtStepActionTimeoutResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblIVRError" runat="server" 
                                            Text="Step Action IVR for on Error event" 
                                            meta:resourcekey="lblIVRErrorResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="rcbIVRError" runat="server" 
                                            meta:resourcekey="rcbIVRErrorResource1" Width="210px">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
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
                            <table style="width:100%;">
                                <tr>
                                    <td colspan="2">
                                        <strong>
                                            <asp:Label ID="lblLocalFormat" runat="server" Text="Dial Number Rewrite Rule" 
                                            meta:resourcekey="lblLocalFormatResource1"></asp:Label></strong>
                                        <br />
                                        <asp:Label ID="Label4" runat="server" ForeColor="#3366ff"
                                            Text="Note: You can use these settings to define local calling. Use 0 (Disabled) or 4 to 12 digits"></asp:Label>                                            
                                    </td>
                                </tr>
                            </table><table style="width:100%;">
                                <tr>
                                    <td style="width:210px;">
                                        <asp:Label ID="lblPhoneLength" runat="server" Text="Phone Length" 
                                            meta:resourcekey="lblPhoneLengthResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadNumericTextBox ID="txtPhoneLength" runat="server" Culture="English (United States)"
                                            MaxLength="2" MaxValue="12" MinValue="0" Value="0" Width="30px">
                                            <NumberFormat GroupSeparator="" DecimalDigits="0" />
                                        </WebCtlIpsmarx:RadNumericTextBox></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblLocalCode" runat="server" Text="Local Code" 
                                            meta:resourcekey="lblLocalCodeResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadNumericTextBox ID="txtLocalCode" runat="server" Culture="English (United States)"
                                            MaxLength="10" Value="0" Width="100px" Type="Number">
                                            <NumberFormat GroupSeparator="" DecimalDigits="0" />
                                        </WebCtlIpsmarx:RadNumericTextBox>
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
                            <table style="width:100%;">
                                <tr>
                                    <td colspan="2">
                                        <strong>
                                            <asp:Label ID="lblStar" runat="server" Text="Star number configuration" 
                                            meta:resourcekey="lblStarResource1"></asp:Label></strong>
                                        <br />
                                        <asp:Label ID="lblDescribeStar" runat="server" ForeColor="#3366ff"
                                            Text="Note: You can setup the star number for each functionality"></asp:Label>                                            
                                    </td>
                                </tr>
                            </table>

                            <div style="width:90%; height:140px; overflow: auto; border: 1px solid #666; padding: 8px; text-align:center">
                                <asp:Repeater id="rptStar" runat="server">
                                    <HeaderTemplate>
                                        <table border="1">
                                            <tr>
                                                <td><b>Functionality</b></td>
                                                <td><b>Star number assigned</b></td>
                                            </tr>
                                    </HeaderTemplate>

                                    <ItemTemplate>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="lblFunctionalityDescription" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' Runat="server"/>
                                                </td>
                                                <td align="left">
                                                    <asp:HiddenField ID="hdFunctionalityID" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "PBXFunctionalitiesID") %>' />
                                                    <asp:DropDownList ID="ddlStarNumber" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                    </ItemTemplate>

                                    <FooterTemplate>
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                            <strong>
                                <asp:Label ID="lblReserved" runat="server" Text="* Reserved star numbers used by the system:" meta:resourcekey="lblReservedResource1"></asp:Label></strong>&nbsp;
                                <asp:Label ID="lblReservedList" runat="server"></asp:Label> 
                            <br />
                            <strong>                            
                                <asp:Label ID="lblReserved30" runat="server" Text="*30 - Start call recording"></asp:Label>
                            <br />
                                <asp:Label ID="lblReserved31" runat="server" 
                                Text="*31 - Stop call recording"></asp:Label>
                            <br />
                                <asp:Label ID="lblReserved55" runat="server" Text="*55 - Mobile transfer"></asp:Label><br />
                                <asp:Label ID="lblReserved85" runat="server" Text="*85 - Call parking"></asp:Label><br />
                                <asp:Label ID="lblReserved86" runat="server" Text="*86 - Call pickup"></asp:Label><br />
                                <asp:Label ID="lblReserved97" runat="server" Text="*97 - Voicemail"></asp:Label><br />
                                <asp:Label ID="lblReserved90" runat="server" Text="*90 - Voicemail transfer"></asp:Label>
                            </strong>
                         </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
                
            </asp:Panel>
            
            <asp:Panel ID="pnlPassword" runat="server" Visible="False" 
        meta:resourcekey="pnlPasswordResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Label ID="lblPasswordInfo" runat="server" Text="Password Information" 
                                            meta:resourcekey="lblPasswordInfoResource1"></asp:Label></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblExistingPass" runat="server" Text="Existing Password" 
                                            meta:resourcekey="lblExistingPassResource1"></asp:Label></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtExistingPass" runat="server" TextMode="Password" 
                                            meta:resourcekey="txtExistingPassResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblNewPass" runat="server" Text="New Password" 
                                            meta:resourcekey="lblNewPassResource1"></asp:Label></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" 
                                            meta:resourcekey="txtNewPassResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblConfirmNewPass" runat="server" Text="Confirm New Password" 
                                            meta:resourcekey="lblConfirmNewPassResource1"></asp:Label></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtConfirmNewPass" runat="server" TextMode="Password" 
                                            meta:resourcekey="txtConfirmNewPassResource1"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </asp:Panel>


            <asp:Panel ID="pnlCallCenterSetting" runat="server" Visible="False" 
        >
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Label ID="Label1" runat="server" Text="Agent Login Information" 
                                            ></asp:Label></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Agent Login Number" 
                                            ></asp:Label></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAgentLoginNumber" runat="server" 
                                            ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Agent Logout Number" 
                                            ></asp:Label></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAgentLogoutNumnber" runat="server" 
                                           ></asp:TextBox>
                                    </td>
                                </tr>                                
                            </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </asp:Panel>

            
            <asp:Panel ID="pnlInvalidResponse" runat="server" Visible="False" 
        meta:resourcekey="pnlInvalidResponseResource1">
            </asp:Panel>
            
            <asp:Panel ID="pnlUpDate" runat="server" 
        meta:resourcekey="pnlUpDateResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="text-align: center; width: 100%;">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="Button" 
                                            meta:resourcekey="btnUpdateResource1" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </asp:Panel>
            
</asp:Content>
