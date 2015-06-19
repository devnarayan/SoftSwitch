<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" Codebehind="ManageStepAction.aspx.cs"
    Inherits="CCEstore.ManageStepAction" MasterPageFile="~/MainService.Master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);
        
        var senderID;
        function BeginRequestHandler(sender, args)
        {
            var elem = args.get_postBackElement();
            senderID = elem.id;
            
        }
        function EndRequestEventHandler(sender, args)
        {
            if(senderID == "ctl00_cphMain_btnApplyAllChanges")
                scrollTo(0,0)
        }
    </script>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="module" style="width: 700px">
                <div class="container">
                    <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                    <div class="content">
                        <table style="width: 100%;">
                            <tr>
                                <td colspan="4" class="heading">
                                    <asp:Label ID="lblTitle" runat="server" Text="Manage Step Action" 
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
                                        <asp:Label ID="lblDefineSchedule" runat="server" 
                                        Text="Define Steps For Call Flow" meta:resourcekey="lblDefineScheduleResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblSchedules" runat="server" Text="Schedules" 
                                        meta:resourcekey="lblSchedulesResource1"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbSchedules" runat="server" Width="142px" 
                                        AutoPostBack="True" meta:resourcekey="rcbSchedulesResource1">
                                        <collapseanimation duration="200" type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblMenu" runat="server" Text="Menu" 
                                        meta:resourcekey="lblMenuResource1"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbMenu" runat="server" Width="142px" 
                                        AutoPostBack="True" meta:resourcekey="rcbMenuResource1">
                                        <collapseanimation duration="200" type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <strong>
                                        <asp:Label ID="lblDefaultSchedule" runat="server" Text="* Default schedule is a virtual schedule and not functional, please configure your own schedule."
                                        meta:resourcekey="lblDefaultScheduleResource1"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                        </table>
                        <table width="100%">
                            <tr>
                                <td style="width: 100%;">
                                    <br />
                                    <WebCtlIpsmarx:RadGrid ID="rgStepActions" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" Skin="Sunset" Width="100%" 
                                        meta:resourcekey="rgStepActionsResource1">
                                        <ClientSettings EnableRowHoverStyle="True">
                                        </ClientSettings>
                                        <MasterTableView>
                                            <Columns>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" 
                                                    UniqueName="column" meta:resourcekey="GridButtonColumnResource1">
                                                </WebCtlIpsmarx:GridButtonColumn>                                                
                                            </Columns>
                                           
                                        </MasterTableView>
                                        <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                        <FilterMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </FilterMenu>
                                        <HeaderContextMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </HeaderContextMenu>
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
            <div class="module" style="width: 700px">
                <div class="container">
                    <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                    <div class="content">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblEditStep" runat="server" Text="Edit Step" 
                                        meta:resourcekey="lblEditStepResource1"></asp:Label></strong>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbEditStep" runat="server" Width="160px" 
                                        AutoPostBack="True" meta:resourcekey="rcbEditStepResource1">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Please Select" Value="0" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource1" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Add New Step" Value="Add" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource2" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Update Existing Step" Value="Update" 
                                                runat="server" meta:resourcekey="RadComboBoxItemResource3" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Delete Existing Step" Value="Delete" 
                                                runat="server" meta:resourcekey="RadComboBoxItemResource4" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Move Existing Step" Value="Move" 
                                                runat="server" meta:resourcekey="RadComboBoxItemResource5" />
                                        </Items>
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
            <asp:Panel ID="pnlAddStep" runat="server" Visible="False" 
                meta:resourcekey="pnlAddStepResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width: 100%;">
                            
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Label ID="lblStepInfo" runat="server" Text="Action Information" 
                                            meta:resourcekey="lblStepInfoResource1"></asp:Label></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblAddSequence" runat="server" 
                                            Text="Add Sequence After Step (*)" meta:resourcekey="lblAddSequenceResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="rcbAddSequence" runat="server" Width="200px" 
                                            AutoPostBack="True" meta:resourcekey="rcbAddSequenceResource1">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblSelectStep" runat="server" Text="Select Step Action (*)" 
                                            meta:resourcekey="lblSelectStepResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="rcbSelectStep" runat="server" Width="200px" 
                                            AutoPostBack="True" meta:resourcekey="rcbSelectStepResource1">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                                <tr id="trStepActionValueDial" runat="server" visible="False">
                                    <td runat="server">
                                        <asp:Label ID="lblStepActionValueDial" runat="server" Text="Step Action Value"></asp:Label>
                                    </td>
                                    <td runat="server">
                                        <asp:TextBox ID="txtStepActionValue" runat="server" Width="195px" ></asp:TextBox>
                                    </td>
                                </tr>
                                <tr id="trStepActionValueOther" runat="server" visible="False">
                                    <td runat="server">
                                        <asp:Label ID="lblStepActionValueOther" runat="server" Text="Step Action Value"></asp:Label>
                                    </td>
                                    <td runat="server">
                                        <WebCtlIpsmarx:RadComboBox ID="rcbStepActionValue" runat="server" Width="200px">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblStepName" runat="server" Text="Step Name (*)" 
                                            meta:resourcekey="lblStepNameResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtStepName" runat="server" Width="195px" MaxLength="50" 
                                            meta:resourcekey="txtStepNameResource1"></asp:TextBox>
                                    </td>
                                </tr>
                                
                                
                                <tr id="trStepOnTimeOut" runat="server" visible="False">
                                    <td runat="server">
                                        <asp:Label ID="lblOnTimeOut" runat="server" Text="On Time Out"></asp:Label>
                                    </td>
                                    <td runat="server">
                                        <WebCtlIpsmarx:RadComboBox ID="rcbOnTimeOut" runat="server" Width="200px" 
                                            AutoPostBack="True">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                    
                                    <td runat="server">
                                        <WebCtlIpsmarx:RadComboBox ID="rcbOnTimeOutValue" runat="server" Width="142px" 
                                            AutoPostBack="True">
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                    
                                </tr>
                                <tr id="trTimeOutSec" runat="server" visible="False">
                                    <td runat="server">
                                        <asp:Label ID="lblTimeOut" runat="server" Text="Time Out (sec.)" ></asp:Label>
                                    </td>
                                    <td runat="server">
                                        <asp:TextBox ID="txtTimeOut" runat="server" Width="195px" ></asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <tr id="trWelcomeMessage" runat="server" visible="False">
                                    <td runat="server">
                                        <asp:Label ID="lblWelcomeMsg" runat="server" Text="Welcome Message (*)"></asp:Label>
                                    </td>
                                    <td runat="server">
                                        <WebCtlIpsmarx:RadComboBox ID="rcbWelcomeMsg" runat="server" Width="200px">
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
            </asp:Panel>
            
                                        
                             
            <asp:Panel ID="pnlKeypad" runat="server" Visible="False" 
                meta:resourcekey="pnlKeypadResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                                    <table style="width:100%;">
                                    
                                    <tr>
                                        <td>
                                            <strong>
                                                <asp:Label ID="Label10" runat="server" Text="Sub Action Information" 
                                                meta:resourcekey="Label10Resource1"></asp:Label></strong>
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label0" runat="server" Text="Keypad 0" 
                                                    meta:resourcekey="Label0Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad0" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad0Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td width="33%">
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad0SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad0SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad0SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad0SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad0SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad0SubActionResource1"></asp:TextBox>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="Keypad 1" 
                                                    meta:resourcekey="Label1Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad1" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad1Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad1SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad1SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad1SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad1SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad1SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad1SubActionResource1"></asp:TextBox>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text="Keypad 2" 
                                                    meta:resourcekey="Label2Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad2" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad2Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad2SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad2SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad2SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad2SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad2SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad2SubActionResource1"></asp:TextBox>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="Keypad 3" 
                                                    meta:resourcekey="Label3Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad3" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad3Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad3SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad3SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad3SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad3SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad3SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad3SubActionResource1"></asp:TextBox>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="Keypad 4" 
                                                    meta:resourcekey="Label4Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad4" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad4Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad4SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad4SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad4SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad4SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad4SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad4SubActionResource1"></asp:TextBox>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="Keypad 5" 
                                                    meta:resourcekey="Label5Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad5" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad5Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad5SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad5SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad5SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad5SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad5SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad5SubActionResource1"></asp:TextBox>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="Keypad 6" 
                                                    meta:resourcekey="Label6Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad6" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad6Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad6SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad6SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad6SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad6SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad6SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad6SubActionResource1"></asp:TextBox>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="Keypad 7" 
                                                    meta:resourcekey="Label7Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad7" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad7Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad7SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad7SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad7SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad7SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad7SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad7SubActionResource1"></asp:TextBox>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="Keypad 8" 
                                                    meta:resourcekey="Label8Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad8" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad8Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad8SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad8SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad8SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad8SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad8SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad8SubActionResource1"></asp:TextBox>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="Keypad 9" 
                                                    meta:resourcekey="Label9Resource1"></asp:Label>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad9" runat="server" Width="142px" 
                                                    AutoPostBack="True" meta:resourcekey="rcbKeypad9Resource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                            </td>
                                            <td>
                                                <WebCtlIpsmarx:RadComboBox ID="rcbKeypad9SubAction" runat="server" 
                                                    Width="142px" AutoPostBack="True" 
                                                    meta:resourcekey="rcbKeypad9SubActionResource1">
                                                    <collapseanimation duration="200" type="OutQuint" />
                                                </WebCtlIpsmarx:RadComboBox>
                                                <asp:Label ID="lblKeypad9SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="lblKeypad9SubActionResource1"></asp:Label>
                                                <asp:TextBox ID="txtKeypad9SubAction" runat="server" Visible="False" 
                                                    meta:resourcekey="txtKeypad9SubActionResource1"></asp:TextBox>
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
            
            
            
            <asp:Panel ID="pnlSubAction" runat="server" Visible="False" 
                meta:resourcekey="pnlSubActionResource1">
            <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                                <table style="width:75%;">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Label ID="lblStepSubAction" runat="server" 
                                            Text="Events Action Information" meta:resourcekey="lblStepSubActionResource1"></asp:Label></strong>
                                    </td>
                                </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblSubAction1" runat="server" 
                                                meta:resourcekey="lblSubAction1Resource1"></asp:Label>
                                            <asp:HiddenField ID="hdnSubAction1" runat="server" />
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubAction1" runat="server" Width="142px" 
                                                AutoPostBack="True" meta:resourcekey="rcbSubAction1Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                        <td width="33%">
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubActionValue1" runat="server" Width="142px" 
                                                meta:resourcekey="rcbSubActionValue1Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                            <asp:Label ID="lblSubActionValue1" runat="server" Visible="False" 
                                                meta:resourcekey="lblSubActionValue1Resource1"></asp:Label>
                                            <asp:TextBox ID="txtSubActionValue1" runat="server" Visible="False" 
                                                meta:resourcekey="txtSubActionValue1Resource1"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblSubAction2" runat="server" 
                                                meta:resourcekey="lblSubAction2Resource1"></asp:Label>
                                            <asp:HiddenField ID="hdnSubAction2" runat="server" />
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubAction2" runat="server" Width="142px" 
                                                AutoPostBack="True" meta:resourcekey="rcbSubAction2Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubActionValue2" runat="server" Width="142px" 
                                                meta:resourcekey="rcbSubActionValue2Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                            <asp:Label ID="lblSubActionValue2" runat="server" Visible="False" 
                                                meta:resourcekey="lblSubActionValue2Resource1"></asp:Label>
                                            <asp:TextBox ID="txtSubActionValue2" runat="server" Visible="False" 
                                                meta:resourcekey="txtSubActionValue2Resource1"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblSubAction3" runat="server" 
                                                meta:resourcekey="lblSubAction3Resource1"></asp:Label>
                                            <asp:HiddenField ID="hdnSubAction3" runat="server" />
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubAction3" runat="server" Width="142px" 
                                                AutoPostBack="True" meta:resourcekey="rcbSubAction3Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubActionValue3" runat="server" Width="142px" 
                                                meta:resourcekey="rcbSubActionValue3Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                            <asp:Label ID="lblSubActionValue3" runat="server" Visible="False" 
                                                meta:resourcekey="lblSubActionValue3Resource1"></asp:Label>
                                            <asp:TextBox ID="txtSubActionValue3" runat="server" Visible="False" 
                                                meta:resourcekey="txtSubActionValue3Resource1"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblSubAction4" runat="server" 
                                                meta:resourcekey="lblSubAction4Resource1"></asp:Label>
                                            <asp:HiddenField ID="hdnSubAction4" runat="server" />
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubAction4" runat="server" Width="142px" 
                                                AutoPostBack="True" meta:resourcekey="rcbSubAction4Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="rcbSubActionValue4" runat="server" Width="142px" 
                                                meta:resourcekey="rcbSubActionValue4Resource1">
                                                <collapseanimation duration="200" type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                            <asp:Label ID="lblSubActionValue4" runat="server" Visible="False" 
                                                meta:resourcekey="lblSubActionValue4Resource1"></asp:Label>
                                            <asp:TextBox ID="txtSubActionValue4" runat="server" Visible="False" 
                                                meta:resourcekey="txtSubActionValue4Resource1"></asp:TextBox>

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
            
            
                             
            <asp:Panel ID="pnlMoveSequence" runat="server" Visible="False" 
                meta:resourcekey="pnlMoveSequenceResource1">
                <div class="module" style="width: 700px">
                    <div class="container">
                        <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                        <div class="content">
                            <table style="width: 100%;">
                                <tr>
                                    <strong><asp:Label ID="lblMoveExistingSequence" runat="server" 
                                        Text="Move Existing Sequence" 
                                        meta:resourcekey="lblMoveExistingSequenceResource1"></asp:Label></strong>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMoveSequence" runat="server" Text="Move Sequence After Step" 
                                            meta:resourcekey="lblMoveSequenceResource1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:ListBox ID="lbSequence" runat="server" Width="200px" Height="100px" 
                                            SelectionMode="Multiple" meta:resourcekey="lbSequenceResource1" ></asp:ListBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnUp" runat="server" Text="Up" CssClass="Button" 
                                            meta:resourcekey="btnUpResource1" /><br />
                                        <br />
                                        <asp:Button ID="btnDown" runat="server" Text="Down" CssClass="Button" 
                                            meta:resourcekey="btnDownResource1" />
                                </td>
                            </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
            </asp:Panel>
            
            <div class="module" style="width: 700px">
                <div class="container">
                    <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                    <div class="content">
                        <table width="100%">
                            <tr style="text-align: center">
                                <td>
                                    <asp:Button ID="btnCancel" runat="server" Text="Reset" CssClass="Button" 
                                        meta:resourcekey="btnCancelResource1" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnApplyAllChanges" runat="server" Text="Apply All Changes" 
                                        Width="140px" CssClass="Button" 
                                        meta:resourcekey="btnApplyAllChangesResource1" /><br />
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
            
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
