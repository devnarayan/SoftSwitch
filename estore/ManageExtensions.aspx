<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ManageExtensions.aspx.cs"
    Inherits="CCEstore.ManageExtensions" MasterPageFile="MainService.master" %>

<%@ Register TagPrefix="pnwc" Namespace="PNayak.Web.UI.WebControls" Assembly="PNayak.Web.UI.WebControls.ExportButton" %>
<%@ Register Src="Controls/wucAutoProvisioning.ascx" TagName="AutoProvisioning" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/CallRecording.ascx" TagName="CallRecording" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <script type="text/javascript" language="javascript">
        //        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        //        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);
        //        
        //        var senderID;
        //        function BeginRequestHandler(sender, args)
        //        {
        //            var elem = args.get_postBackElement();
        //            senderID = elem.id;
        //            
        //        }
        //        function EndRequestEventHandler(sender, args)
        //        {
        //            if(senderID == "ctl00_cphMain_btnSearch")
        //                scrollTo(0, screen.height);
        //            else if(senderID != "ctl00_cphMain_rcbSearchBy")
        //                scrollTo(0, 0);
        //        }
    </script>
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeVoiceMail" runat="server" TargetControlID="panelVoiceMailExpander"
        ExpandedImage="~/Images/e1.gif" CollapsedImage="~/Images/e2.gif" CollapsedSize="0"
        ExpandedSize="130" Collapsed="True" ExpandControlID="panelVoiceMail" CollapseControlID="panelVoiceMail"
        SuppressPostBack="True" TextLabelID="lnkVoiceMail" CollapsedText="Voice Mail Configuration (Show Details)"
        ExpandedText="Voice Mail Configuration (Hide Details)" ImageControlID="imgVoiceMail"
        Enabled="True" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeCallForwarding" runat="server" TargetControlID="panelCallForwardingExpander"
        ExpandedImage="~/Images/e1.gif" CollapsedImage="~/Images/e2.gif" CollapsedSize="0"
        ExpandedSize="250" Collapsed="True" ExpandControlID="panelCallForwarding" CollapseControlID="panelCallForwarding"
        SuppressPostBack="True" TextLabelID="lnkCallForwarding" CollapsedText="Call Forwarding Configuration (Show Details)"
        ExpandedText="Call Forwarding Configuration (Hide Details)" ImageControlID="imgCallForwarding"
        Enabled="True" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeAutoProvisioning" runat="server" TargetControlID="panelAutoProvisioningExpander"
        ExpandedImage="~/Images/e1.gif" CollapsedImage="~/Images/e2.gif" CollapsedSize="0"
        ExpandedSize="210" Collapsed="True" ExpandControlID="panelAutoProvisioning" CollapseControlID="panelAutoProvisioning"
        SuppressPostBack="True" TextLabelID="lnkAutoProvisioning" CollapsedText="Auto Provisioning (Show Details)"
        ExpandedText="Auto Provisioning (Hide Details)" ImageControlID="imgAutoProvisioning"
        Enabled="True" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeDeviceFunctionKeys" runat="server" TargetControlID="panelDeviceFunctionKeysExpander"
        ExpandedImage="~/Images/e1.gif" CollapsedImage="~/Images/e2.gif" CollapsedSize="0"
        Collapsed="True" ExpandControlID="panelDeviceFunctionKeys" CollapseControlID="panelDeviceFunctionKeys"
        SuppressPostBack="True" TextLabelID="lnkDeviceFunctionKeys" CollapsedText="Device Function Keys (Show Details)"
        ExpandedText="Device Function Keys (Hide Details)" ImageControlID="imgDeviceFunctionKeys"
        Enabled="True" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeCallRecording" runat="server" TargetControlID="panelCallRecordingExpander"
        ExpandedImage="~/Images/e1.gif" CollapsedImage="~/Images/e2.gif" CollapsedSize="0"
        Collapsed="True" ExpandControlID="panelCallRecording" CollapseControlID="panelCallRecording"
        SuppressPostBack="True" TextLabelID="lnkCallRecording" CollapsedText="Call Recording (Show Details)"
        ExpandedText="Call Recording (Hide Details)" ImageControlID="imgCallRecording"
        Enabled="True" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeConsole" runat="server" TargetControlID="panelConsoleExpander"
        ExpandedImage="~/Images/e1.gif" CollapsedImage="~/Images/e2.gif" CollapsedSize="0"
        Collapsed="True" ExpandControlID="panelConsole" CollapseControlID="panelConsole"
        SuppressPostBack="True" TextLabelID="lnkConsole" CollapsedText="Console (Show Details)"
        ExpandedText="Console (Hide Details)" ImageControlID="imgConsole" Enabled="True" />
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <asp:Panel ID="pnlSearch" runat="server" meta:resourcekey="pnlSearchResource1">
                    <table style="width: 100%; border-collapse: collapse">
                        <tr>
                            <td>
                                <strong>
                                    <asp:Label ID="lblSearch" runat="server" Text="Search" meta:resourcekey="lblSearchResource1"></asp:Label></strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #3b72d9; text-align: center;">
                                <strong style="color: white; position: relative; top: 5px; left: -5px;">
                                    <asp:Label ID="lblPageSize" runat="server" Text="Page Size" meta:resourcekey="lblPageSizeResource1"></asp:Label></strong>
                                <WebCtlIpsmarx:RadComboBox ID="rcbPageSize" runat="server" Width="50px" AutoPostBack="True"
                                    meta:resourcekey="rcbPageSizeResource1">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource1"
                                            Text="10" Value="10" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource2"
                                            Text="20" Value="20" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource3"
                                            Text="50" Value="50" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource4"
                                            Text="100" Value="100" />
                                    </Items>
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="background-color: #3b72d9; text-align: center;">
                                <strong style="color: white; position: relative; top: 5px; left: -5px;">
                                    <asp:Label ID="lblSearchBy" runat="server" Text="Search By" meta:resourcekey="lblSearchByResource1"></asp:Label></strong>
                                <WebCtlIpsmarx:RadComboBox ID="rcbSearchBy" runat="server" Width="160px" meta:resourcekey="rcbSearchByResource1">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource5"
                                            Text="All" Value="All" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource6"
                                            Text="SIP Username" Value="Username" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource7"
                                            Text="Extension" Value="PBXExtension" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource8"
                                            Text="Web Username" Value="PBXWebUsername" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" meta:resourcekey="RadComboBoxItemResource9"
                                            Text="Caller ID" Value="CallerID" />
                                    </Items>
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="background-color: #3b72d9; text-align: left; width: 48px;">
                                <strong style="color: white">
                                    <asp:CheckBox ID="chkExact" runat="server" meta:resourcekey="chkExactResource1" />
                                    <asp:Label ID="lblExact" runat="server" Text="Exact" meta:resourcekey="lblExactResource1"></asp:Label></strong>
                            </td>
                            <td style="background-color: #3b72d9">
                                <asp:ImageButton ID="imgExport" Style="cursor: hand" runat="server" ToolTip="Export Data"
                                    BorderStyle="None" ImageUrl="Images/export.gif" meta:resourcekey="imgExportResource1">
                                </asp:ImageButton>
                                <pnwc:ExportButton ID="btnCSV" runat="server" BackColor="#E0E0E0" ExportType="CSV"
                                    FileNameToExport="Books.csv" Text="CSV" Visible="False" meta:resourcekey="btnCSVResource1"
                                    Separator="Comma" />
                                <asp:ImageButton ID="imgImport" Style="cursor: hand" runat="server" ToolTip="Import Data"
                                    BorderStyle="None" ImageUrl="Images/Import.gif" meta:resourcekey="imgImportResource1">
                                </asp:ImageButton>
                                <asp:ImageButton ID="imgSample" runat="server" ToolTip="Download sample import file"
                                    AlternateText="Download sample import file" BorderStyle="None" ImageUrl="Images/note2.gif" />
                            </td>
                        </tr>
                        <tr id="trImportFile" runat="server" visible="False">
                            <td runat="server">
                                <asp:Label ID="lblImport" runat="server" Text="Import File"></asp:Label>
                            </td>
                            <td colspan="3" runat="server">
                                <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert">
                                    <InsertItemTemplate>
                                        <asp:FileUpload ID="fluImport" runat="server" />
                                        <asp:Button ID="btnImport" runat="server" Text="Import" CssClass="Button" />
                                    </InsertItemTemplate>
                                </asp:FormView>
                                <asp:Label ID="Label201" runat="server" ForeColor="#3366FF" Text="Note: Imports new extensions only"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr style="background-color: #98AFC7; text-align: center">
                            <td>
                                <strong style="color: white; position: relative; left: 65px;">
                                    <asp:Label ID="lblSearchFor" runat="server" Text="Search For" meta:resourcekey="lblSearchForResource1"></asp:Label></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSearchFor" runat="server" Width="300px" meta:resourcekey="txtSearchForResource1"></asp:TextBox>
                            </td>
                            <td style="width: 48px">
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="Button" meta:resourcekey="btnSearchResource1" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
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
                        <td colspan="4" class="heading">
                            <asp:Label ID="lblTitle" runat="server" Text="Manage Phone Extensions" meta:resourcekey="lblTitleResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                                meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <asp:Label ID="lblAccountInfo" runat="server" Text="Account Information" meta:resourcekey="lblAccountInfoResource1"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblExtension" runat="server" Text="Extension" meta:resourcekey="lblExtensionResource1"></asp:Label>&nbsp;(*)
                        </td>
                        <td>
                            <asp:TextBox ID="txtExtension" runat="server" MaxLength="5" meta:resourcekey="txtExtensionResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblCallerID" runat="server" Text="Caller ID" meta:resourcekey="lblCallerIDResource1"></asp:Label>
                        </td>
                        <td valign="top">
                            <asp:TextBox ID="txtCallerID" runat="server" meta:resourcekey="txtCallerIDResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name(*)"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server" MaxLength="30" meta:resourcekey="txtFirstNameResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name" meta:resourcekey="lblLastNameResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server" MaxLength="40" meta:resourcekey="txtLastNameResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr id="trcomp" runat="server" visible="false">
                        <td>
                            <asp:Label ID="lblCompanyName" runat="server" Text="Company Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompanyName" runat="server" MaxLength="200"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSipUsername" runat="server" Text="SIP Username" meta:resourcekey="lblSipUsernameResource1"></asp:Label>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtPrefixSipUsername" runat="server" Text="102" Enabled="False"
                                meta:resourcekey="txtPrefixSipUsernameResource1"></asp:TextBox>
                            <asp:TextBox ID="txtSipUsername" runat="server" Width="125px" meta:resourcekey="txtSipUsernameResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblSipPassword" runat="server" Text="SIP Password(*)" meta:resourcekey="lblSipPasswordResource1"></asp:Label>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtSipPassword" runat="server" MaxLength="62" meta:resourcekey="txtSipPasswordResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblWebUsername" runat="server" Text="Web Username(Email)(*)" meta:resourcekey="lblWebUsernameResource1"></asp:Label>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtWebUsername" runat="server" meta:resourcekey="txtWebUsernameResource1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblWebPassword" runat="server" Text="Web Password(*)" meta:resourcekey="lblWebPasswordResource1"></asp:Label>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtWebPassword" runat="server" meta:resourcekey="txtWebPasswordResource1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAccountStatus" runat="server" Text="Account Status" meta:resourcekey="lblAccountStatusResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbAccountStatus" runat="server" Width="120px" meta:resourcekey="rcbAccountStatusResource1">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource18" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="2" meta:resourcekey="RadComboBoxItemResource19" />
                                </Items>
                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Incoming Call" meta:resourcekey="Label1Resource1"
                                Visible="false"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbIncommingEnabled" runat="server" Width="120px"
                                meta:resourcekey="rcbIncommingEnabledResource1" Visible="false">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource22" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource20" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Internal" Value="2" meta:resourcekey="RadComboBoxItemResource21" />
                                </Items>
                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    <tr id="tragent" runat="server">
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Rest Period(sec)"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadNumericTextBox ID="txtRestPeriod" runat="server" Culture="English (United States)"
                                MaxLength="4" MaxValue="9999" MinValue="0" Value="10" Width="100px" meta:resourcekey="txtUsageLimitResource1">
                                <NumberFormat DecimalDigits="0" GroupSizes="5" />
                            </WebCtlIpsmarx:RadNumericTextBox><br />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Priority in Queue" Visible="false"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadNumericTextBox ID="txtAgentQueuePriority" runat="server" Culture="English (United States)"
                                MaxLength="4" MaxValue="9999" MinValue="1" Value="9999" Width="100px" Visible="false">
                                <NumberFormat DecimalDigits="0" GroupSizes="5" />
                            </WebCtlIpsmarx:RadNumericTextBox><br />
                            <asp:Label ID="Label4" runat="server" ForeColor="#3366ff" Text="Note: Agent Priority in Queue.<br />Lower number represents higher priority"
                                Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr id="trCallScreening" runat="server">
                        <td>
                            <asp:Label ID="lblCallScreening" runat="server" Text="Call Screening" meta:resourcekey="lblCallScreeningResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbCallScreening" runat="server" Width="120px" meta:resourcekey="rcbCallScreeningResource1">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource24" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource23" />
                                </Items>
                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        <td>
                            <asp:Label ID="lblLongDistance" runat="server" Text="Long Distance" meta:resourcekey="lblLongDistanceResource1"
                                Visible="false"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbLongDistance" runat="server" Width="120px" meta:resourcekey="rcbLongDistanceResource1"
                                Visible="false">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource24" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource23" />
                                </Items>
                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    <tr id="trVideo" runat="server">
                        <td>
                            <asp:Label ID="lblVideoEnabled" runat="server" Text="Video" meta:resourcekey="lblVideoEnabledResource1"></asp:Label>
                        </td>
                        <td colspan="3">
                            <WebCtlIpsmarx:RadComboBox ID="rcbVideoEnabled" runat="server" Width="120px" meta:resourcekey="rcbVideoEnabledResource1">
                                <Items>
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource17" />
                                    <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource16" />
                                </Items>
                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCellNumber" runat="server" Text="Mobile number" meta:resourcekey="lblCellNumberResource1"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtCellNumber" runat="server" meta:resourcekey="txtCellNumberResource1"></asp:TextBox><br />
                            <asp:Label ID="Label7" runat="server" ForeColor="#3366ff" Text="Note: Setup with user mobile number to enable the Mobile Transfer functionality."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTimeZone" runat="server" Text="Time Zone(*)" meta:resourcekey="lblTimeZoneResource1"></asp:Label>
                        </td>
                        <td colspan="3">
                            <WebCtlIpsmarx:RadComboBox ID="rcbTimeZone" runat="server" Width="450px" meta:resourcekey="rcbTimeZoneResource1">
                                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                </table>
                &nbsp;<asp:Panel ID="panelVoiceMail" runat="server" Width="100%" meta:resourcekey="panelVoiceMailResource1">
                    <asp:Image ID="imgVoiceMail" runat="server" ImageUrl="~/Images/e1.gif" meta:resourcekey="imgVoiceMailResource1" />
                    <asp:LinkButton ID="lnkVoiceMail" runat="server" Font-Bold="True" meta:resourcekey="lnkVoiceMailResource1">Voice Mail</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="panelVoiceMailExpander" runat="server" Height="160px" Width="100%"
                    meta:resourcekey="panelVoiceMailExpanderResource1">
                    <table cellpadding="3" cellspacing="3" width="100%" border="0" runat="server" id="tblVoiceMail">
                        <tr>
                            <td>
                                <asp:Label ID="lblVoiceMailEnabled" runat="server" Text="Voice Mail" meta:resourcekey="lblVoiceMailEnabledResource1"></asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="rcbVoiceMailEnabled" runat="server" Width="120px"
                                    meta:resourcekey="rcbVoiceMailEnabledResource1">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource10" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource11" />
                                    </Items>
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td>
                                <asp:Label ID="lblVoiceMailToEmail" runat="server" Text="Voice Mail To Email" meta:resourcekey="lblVoiceMailToEmailResource1"></asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="rcbVoiceMailToEmail" runat="server" Width="120px"
                                    meta:resourcekey="rcbVoiceMailToEmailResource1">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem Text="Enabled" Value="1" meta:resourcekey="RadComboBoxItemResource12" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" meta:resourcekey="RadComboBoxItemResource13" />
                                    </Items>
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblVoiceMailLogin" runat="server" Text="Voice Mail Login" meta:resourcekey="lblVoiceMailLoginResource1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtVoiceMailLogin" runat="server" Enabled="False" meta:resourcekey="txtVoiceMailLoginResource1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblVoiceMailPassword" runat="server" Text="Voice Mail Password(*)"
                                    meta:resourcekey="lblVoiceMailPasswordResource1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtVoiceMailPassword" runat="server" meta:resourcekey="txtVoiceMailPasswordResource1"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblMaxMessage" runat="server" Text="Max. Message" meta:resourcekey="lblMaxMessageResource1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMaxMessage" runat="server" meta:resourcekey="txtMaxMessageResource1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblMaxRingTime" runat="server" Text="Max. Ring Time(sec.)" meta:resourcekey="lblMaxRingTimeResource1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMaxRingTime" runat="server" meta:resourcekey="txtMaxRingTimeResource1"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblMaxDuration" runat="server" Text="Max. Voicemail<br> Duration(sec.)"
                                    meta:resourcekey="lblMaxDurationResource1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMaxDuration" runat="server" meta:resourcekey="txtMaxDurationResource1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblVMLanguage" runat="server" Text="VoiceMail Language"></asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="ddlVMLanguage" runat="server" Width="120px">
                                    <Items>
                                    </Items>
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                &nbsp;<asp:Panel ID="panelCallForwarding" runat="server" Width="100%" meta:resourcekey="panelCallForwardingResource1">
                    <asp:Image ID="imgCallForwarding" runat="server" ImageUrl="~/Images/e1.gif" meta:resourcekey="imgCallForwardingResource1" />
                    <asp:LinkButton ID="lnkCallForwarding" runat="server" Font-Bold="True" meta:resourcekey="lnkCallForwardingResource1">Call Forwarding</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="panelCallForwardingExpander" runat="server" Height="160px" Width="100%"
                    meta:resourcekey="panelCallForwardingExpanderResource1">
                    <table cellpadding="3" cellspacing="3" width="100%" border="0" runat="server" id="Table1">
                        <tr>
                            <td nowrap="nowrap">
                                <asp:Label ID="lblCallForwardingOpt" runat="server" Text="Call Forwarding Option"
                                    meta:resourcekey="lblCallForwardingOptResource1"></asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="rcbCallForwarding" runat="server" Width="120px" meta:resourcekey="rcbCallForwardingResource1"
                                    AutoPostBack="True" OnSelectedIndexChanged="ddlCallForwarding_SelectedIndexChanged">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" meta:resourcekey="rcbCallForwardingItemResource1" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Always" Value="4" meta:resourcekey="rcbCallForwardingItemResource2" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="No Answer" Value="2" meta:resourcekey="rcbCallForwardingItemResource3" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="When Busy" Value="1" meta:resourcekey="rcbCallForwardingItemResource4" />
                                    </Items>
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="width: 125px">
                                <asp:Label ID="Label51" runat="server" ForeColor="Black" meta:resourcekey="Label51Resource2">Answer Time Out</asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadNumericTextBox ID="txtCallForwardingTimeOut" runat="server" Culture="English (United States)"
                                    MaxValue="1000" MinValue="0" Value="10" Width="150px" LabelCssClass="" meta:resourcekey="txtCallForwardingTimeOutResource1">
                                    <NumberFormat DecimalDigits="0" GroupSeparator="" GroupSizes="6" NegativePattern="n" />
                                </WebCtlIpsmarx:RadNumericTextBox>
                                <span>
                                    <asp:Label ID="Label80" runat="server" ForeColor="#0033FF" Style="font-size: xx-small"
                                        meta:resourcekey="Label80Resource1"></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px">
                                <asp:Label ID="lblFollowMeStatus" runat="server" ForeColor="Black" meta:resourcekey="lblFollowMeStatusResource1"
                                    Text="Follow Me 
                                Status"></asp:Label>
                            </td>
                            <td class="style2">
                                <WebCtlIpsmarx:RadComboBox ID="ddlFollowMeStatus" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="ddlFollowMeStatus_SelectedIndexChanged" Width="153px"
                                    meta:resourcekey="ddlFollowMeStatusResource1">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" meta:resourcekey="RadComboBoxItemResource124" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" meta:resourcekey="RadComboBoxItemResource125" />
                                    </Items>
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="width: 125px">
                                <asp:Label ID="lblFollowMeOption" runat="server" ForeColor="Black" meta:resourcekey="lblFollowMeOptionResource1"
                                    Text="Follow Me Option"></asp:Label>
                            </td>
                            <td>
                                <WebCtlIpsmarx:RadComboBox ID="ddlFollowMeOption" runat="server" AutoPostBack="True"
                                    Width="153px" meta:resourcekey="ddlFollowMeOptionResource1">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Ring Sequential"
                                            Value="3" meta:resourcekey="RadComboBoxItemResource126" />
                                        <%-- <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Ring All" Value="8" 
                                            meta:resourcekey="RadComboBoxItemResource127" />--%>
                                    </Items>
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="bottom">
                                <asp:Label ID="Label50" runat="server" ForeColor="Black" meta:resourcekey="Label50Resource1"
                                    Text="Phone Number "></asp:Label>
                            </td>
                            <td class="style2">
                                <font size="1">
                                    <asp:Label ID="Label100" runat="server" ForeColor="Black" meta:resourcekey="Label100Resource1"
                                        Text="Follow Me Numbers"></asp:Label><br />
                                    <asp:Label ID="Label200" runat="server" ForeColor="Black" meta:resourcekey="Label200Resource1"
                                        Text="(Country Code +Area Code +Phone #)"></asp:Label><br />
                                </font>
                                <asp:TextBox ID="txtFollowMePhone" runat="server" CssClass="textbox" meta:resourcekey="txtFollowMePhoneResource1"></asp:TextBox>
                            </td>
                            <td valign="bottom">
                                <asp:Label ID="lblFollowMeTimeOut" runat="server" ForeColor="Black" meta:resourcekey="lblFollowMeTimeOutResource1"
                                    Text="Try Time Out"></asp:Label>
                            </td>
                            <td valign="bottom">
                                <WebCtlIpsmarx:RadNumericTextBox ID="txtTimeOut" runat="server" Culture="English (United States)"
                                    LabelCssClass="" meta:resourcekey="txtTimeOutResource1">
                                    <NumberFormat DecimalDigits="0" GroupSeparator="" GroupSizes="6" NegativePattern="n" />
                                </WebCtlIpsmarx:RadNumericTextBox>
                                <span>
                                    <asp:Label ID="Label91" runat="server" ForeColor="#0033FF" meta:resourcekey="Label91Resource1"></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 125px">
                                <asp:Button ID="btnAddFollowMe" runat="server" CausesValidation="False" CssClass="Button"
                                    Text="Add" Width="75px" OnClick="btnAddFollowMe_Click" meta:resourcekey="btnAddFollowMeResource1" /><br />
                                <br />
                                <br />
                                <asp:Button ID="btnRemovefollowMe" runat="server" CausesValidation="False" CssClass="Button"
                                    Text="Remove" Width="75px" OnClick="btnRemovefollowMe_Click" meta:resourcekey="btnRemovefollowMeResource1" />
                            </td>
                            <td class="style2">
                                <asp:ListBox ID="lbxFollowMeNumbers" runat="server" Height="95px" onclick="showPhneNO(this)"
                                    Style="border-right: lightsteelblue 1px solid; border-top: lightsteelblue 1px solid;
                                    font-size: 11px; border-left: lightsteelblue 1px solid; color: navy; border-bottom: lightsteelblue 1px solid;
                                    font-family: verdana, arial" Width="150px" meta:resourcekey="lbxFollowMeNumbersResource1">
                                </asp:ListBox>
                                <br />
                                <asp:ImageButton ID="btnUP" runat="server" BorderWidth="0px" CausesValidation="False"
                                    CssClass="button" Height="19px" ImageAlign="Left" ImageUrl="images/UpButton.gif"
                                    TabIndex="4" Text="MoveUP" Width="28px" Visible="False" meta:resourcekey="btnUPResource1" />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:ImageButton ID="btnDown" runat="server" BorderWidth="0px" CausesValidation="False"
                                    CssClass="button" Height="19px" ImageUrl="images/DownButton.gif" TabIndex="4"
                                    Text="MoveDown" Width="28px" Visible="False" meta:resourcekey="btnDownResource1" />
                            </td>
                            <td style="width: 125px">
                                &nbsp;<br />
                                <br />
                                <br />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                &nbsp;<asp:Panel ID="panelAutoProvisioning" runat="server" Width="100%" meta:resourcekey="panelAutoProvisioningResource1">
                    <asp:Image ID="imgAutoProvisioning" runat="server" ImageUrl="~/Images/e1.gif" meta:resourcekey="imgAutoProvisioningResource1" />
                    <asp:LinkButton ID="lnkAutoProvisioning" runat="server" Font-Bold="True" meta:resourcekey="lnkAutoProvisioningResource1">Auto Provisioning</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="panelAutoProvisioningExpander" runat="server" Height="160px" Width="100%"
                    meta:resourcekey="panelAutoProvisioningExpanderResource1">
                    <uc1:AutoProvisioning ID="wcAutoProvisioning" runat="server" />
                </asp:Panel>
                &nbsp;<asp:Panel ID="panelDeviceFunctionKeys" runat="server" Width="100%" meta:resourcekey="panelDeviceFunctionKeysResource1">
                    <asp:Image ID="imgDeviceFunctionKeys" runat="server" ImageUrl="~/Images/e1.gif" meta:resourcekey="imgDeviceFunctionKeysResource1" />
                    <asp:LinkButton ID="lnkDeviceFunctionkKeys" runat="server" Font-Bold="True" meta:resourcekey="lnkDeviceFunctionKeysResource1">Device Function Keys</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="panelDeviceFunctionKeysExpander" runat="server" Width="100%" meta:resourcekey="panelDeviceFunctionKeysExpanderResource1">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <table cellpadding="3" cellspacing="3" width="100%" border="1" runat="server" id="tblDeviceFunctionKeys">
                                <tr runat="server">
                                    <td colspan="4" class="subtitle">
                                        <asp:Label ID="lblDeviceFunctionKeys" runat="server" Text="Device model"></asp:Label>&nbsp;
                                        <asp:DropDownList ID="ddlModelDeviceFKey" runat="server" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td colspan="3" runat="server">
                                        <a name="DeviceFunctionKeys" />
                                        <asp:GridView ID="gvDeviceFunctionKeys" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField HeaderText="Key Buttom" DataField="KeyButtom">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                                <asp:BoundField HeaderText="ID" DataField="Line" Visible="False" />
                                                <asp:BoundField HeaderText="ID" DataField="Key" Visible="False" />
                                                <asp:TemplateField HeaderText="Type">
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblValue1" runat="server" />
                                                        <asp:DropDownList ID="ddlValue1" runat="server" AutoPostBack="true" Width="150" OnSelectedIndexChanged="ddlValue1_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="Right" />
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblValue2" runat="server" />
                                                        <asp:DropDownList ID="ddlValue2" runat="server" Width="60">
                                                        </asp:DropDownList>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="Right" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                &nbsp;<asp:Panel ID="panelCallrecording" runat="server" Width="100%">
                    <asp:Image ID="imgCallRecording" runat="server" ImageUrl="~/Images/e1.gif" />
                    <asp:LinkButton ID="lnkCallRecording" runat="server" Font-Bold="True">Call Recording</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="panelCallRecordingExpander" runat="server" Width="100%" Enabled="false">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <uc1:CallRecording ID="ucCallRecording" runat="server" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                &nbsp;<asp:Panel ID="panelConsole" runat="server" Width="100%">
                    <asp:Image ID="imgConsole" runat="server" ImageUrl="~/Images/e1.gif" />
                    <asp:LinkButton ID="lnkConsole" runat="server" Font-Bold="True">Console Security</asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="panelConsoleExpander" runat="server" Width="100%">
                    <table cellpadding="3" cellspacing="3" width="100%" border="0" runat="server" id="tblConsole">
                        <tr>
                            <td colspan="4" class="subtitle">
                                <asp:Label ID="lblSecurity" runat="server" Text="Security for PBX Console" meta:resourcekey="lblSecurityResource1"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblLevelPermission" runat="server" Text="User role" meta:resourcekey="lblLevelPermissionResource1"></asp:Label>
                            </td>
                            <td colspan="3">
                                <WebCtlIpsmarx:RadComboBox ID="rcbPermission" runat="server" Width="200px" meta:resourcekey="rcbPermissionResource1">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem Text="None" Value="0" meta:resourcekey="RadComboBoxItemResource25" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="User" Value="1" Selected="true" meta:resourcekey="RadComboBoxItemResource26" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="Administrator" Value="2" meta:resourcekey="RadComboBoxItemResource27" />
                                    </Items>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                        </tr>
                        <tr id="trActionPermission" runat="server">
                            <td>
                                <asp:Label ID="lblActionPermission" runat="server" Text="Action Permissions" meta:resourcekey="lblActionPermissionResource1"></asp:Label>
                            </td>
                            <td colspan="3">
                                <asp:CheckBox ID="chkPBXTransfer" runat="server" Checked="True" meta:resourcekey="chkPBXTransferResource1" />Transfer&nbsp;
                                <!-- 2012.07.06  David Y Voice Mail&nbsp; Record&nbsp;-->
                                <asp:CheckBox ID="chkPBXVoiceMail" runat="server" Checked="False" meta:resourcekey="chkPBXVoiceMailResource1"
                                    Visible="false" />
                                <asp:CheckBox ID="chkPBXRecord" runat="server" Checked="False" meta:resourcekey="chkPBXRecordResource1"
                                    Visible="false" />
                                <asp:CheckBox ID="chkPBXHangUp" runat="server" Checked="True" meta:resourcekey="chkPBXHangUpResource1" />Hang
                                up
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <table width="100%">
                    <tr style="text-align: center">
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" meta:resourcekey="btnResetResource1" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" meta:resourcekey="btnAddResource1" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" Enabled="False"
                                meta:resourcekey="btnModifyResource1" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" Enabled="False"
                                CommandName="Delete" meta:resourcekey="btnDeleteResource1" /><br />
                            <br />
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
                        <td style="width: 100%;">
                            <br />
                            <WebCtlIpsmarx:RadGrid ID="rgSearchResults" runat="server" AllowPaging="True" AllowSorting="True"
                                GridLines="None" Skin="Sunset" Width="100%" meta:resourcekey="rgSearchResultsResource1">
                                <HeaderContextMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                <MasterTableView>
                                    <Columns>
                                        <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column"
                                            meta:resourcekey="GridButtonColumnResource1">
                                        </WebCtlIpsmarx:GridButtonColumn>
                                    </Columns>
                                </MasterTableView>
                                <PagerStyle Mode="Slider"></PagerStyle>
                                <FilterMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </FilterMenu>
                                <ClientSettings EnableRowHoverStyle="true">
                                </ClientSettings>
                            </WebCtlIpsmarx:RadGrid>
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
