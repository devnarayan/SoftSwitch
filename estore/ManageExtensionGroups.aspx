<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ManageExtensionGroups.aspx.cs"
    Inherits="CCEstore.ManageExtensionGroups" MasterPageFile="MainService.master" meta:resourcekey="PageResource1" %>

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
        //            if(senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_rgGroupExtensions_ctl00")
        //                scrollTo(0, screen.height);
        //            else if(senderID != "ctl00_cphMain_rcbSearchBy" && senderID != "ctl00_cphMain_rcbVirtualExtension" && 
        //                    senderID != "ctl00_cphMain_btnUp" && senderID != "ctl00_cphMain_btnDown")
        //                scrollTo(0,0)
        //        }
    </script>
    
       
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
                                        <asp:Label ID="lblSearch" runat="server" Text="Search" 
                                        meta:resourcekey="lblSearchResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #3b72d9; text-align: center;">
                                    <strong style="color: white; position:relative; top:5px; left:-5px;">
                                        <asp:Label ID="lblPageSize" runat="server" Text="Page Size" 
                                        meta:resourcekey="lblPageSizeResource1"></asp:Label></strong>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbPageSize" runat="server" Width="50px" 
                                        AutoPostBack="True" meta:resourcekey="rcbPageSizeResource1">
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource1" Text="10" Value="10" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource2" Text="20" Value="20" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource3" Text="50" Value="50" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource4" Text="100" Value="100" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td style="background-color: #3b72d9; text-align: center;">
                                    <strong style="color: white; position:relative; top:5px; left:-5px;">
                                        <asp:Label ID="lblSearchBy" runat="server" Text="Search By" 
                                        meta:resourcekey="lblSearchByResource1"></asp:Label></strong>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbSearchBy" runat="server" Width="160px" 
                                        meta:resourcekey="rcbSearchByResource1" >
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource5" Text="All" Value="All" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource6" Text="Group Name" 
                                                Value="PBXGroupName" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource7" Text="Virtual Extension" 
                                                Value="VirtualExtension" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource8" Text="Web Username" 
                                                Value="PBXWebUsername" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td style="background-color: #3b72d9; text-align:left;">
                                    <strong style="color: white">
                                        <asp:CheckBox ID="chkExact" runat="server" 
                                        meta:resourcekey="chkExactResource1" />
                                        <asp:Label ID="lblExact" runat="server" Text="Exact" 
                                        meta:resourcekey="lblExactResource1"></asp:Label></strong>
                                </td>
                                <td style="background-color: #3b72d9">
                                    <asp:ImageButton ID="imgExport" Style="cursor: hand" runat="server" ToolTip="Export Data" BorderStyle="None"
                                        ImageUrl="Images/export.gif" meta:resourcekey="imgExportResource1" ></asp:ImageButton>
                                    <asp:ImageButton ID="imgImport" Style="cursor: hand" runat="server" 
                                        ToolTip="Import Data" BorderStyle="None"
                                        ImageUrl="Images/Import.gif" meta:resourcekey="imgImportResource1" ></asp:ImageButton>
                                </td>
                            </tr>
                            <tr id="trImportFile" runat="server" visible="False">
                                <td id="Td1" runat="server">
                                    <asp:Label ID="lblImport" runat="server" Text="Import File"></asp:Label>
                                </td>
                                <td id="Td2" colspan="3" runat="server">
                                    <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert">
                                    <InsertItemTemplate>

                                        <asp:FileUpload ID="fluImport" runat="server" />
                                        <asp:Button ID="btnImport" runat="server" Text="Import" CssClass="Button" />
                                    </InsertItemTemplate>
                                    </asp:FormView>
                                    
                                    </td>
                            </tr>                            

                            <tr style="background-color: #98AFC7; text-align: center">
                                <td>
                                    <strong style="color:white; position:relative; left:65px;">
                                        <asp:Label ID="lblSearchFor" runat="server" Text="Search For" 
                                        meta:resourcekey="lblSearchForResource1"></asp:Label></strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSearchFor" runat="server" Width="300px" 
                                        meta:resourcekey="txtSearchForResource1"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="Button" 
                                        meta:resourcekey="btnSearchResource1" />
                                </td>
                                <td></td>
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
                        <table style="width: 96%">
                            <tr>
                                <td colspan="4" class="heading">
                                    <strong>
                                        <asp:Label ID="lblManageExtGroups" runat="server" 
                                        Text="Manage Extension Groups" meta:resourcekey="lblManageExtGroupsResource1"></asp:Label></strong>
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
                                        <asp:Label ID="lblDefineGroup" runat="server" Text="Define Group" 
                                        meta:resourcekey="lblDefineGroupResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblGroupName" runat="server" Text="Group Name (*)" 
                                        meta:resourcekey="lblGroupNameResource1"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGroupName" runat="server" Width="300"
                                        meta:resourcekey="txtGroupNameResource1"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblVirtualExtension" runat="server" Text="Virtual Extension (*)" 
                                        meta:resourcekey="lblVirtualExtensionResource1"></asp:Label>
                                    <asp:Label ID="lblPaging" runat="server" Text="Paging Number (*)" 
                                        meta:resourcekey="lblPagingResource1" Visible="false"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtVirtualExtension" runat="server" Width="50" MaxLength="5" 
                                        meta:resourcekey="txtVirtualExtensionResource1"></asp:TextBox>
                                    <asp:TextBox ID="txtPaging" runat="server" Width="50" MaxLength="5" 
                                        meta:resourcekey="txtPagingResource1" Visible="false"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="trgrouptype" runat="server">
                                <td>
                                    <asp:Label ID="lblTypeGroup" runat="server" Text="Group Type" 
                                        meta:resourcekey="lblTypeGroupResource1"></asp:Label></td>
                                <td colspan="3">
                                    <WebCtlIpsmarx:RadComboBox ID="rcbTypeGroup" runat="server" 
                                        Width="80px" AutoPostBack="True" 
                                        meta:resourcekey="rcbTypeGroupResource1">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                        <Items>      
                                            <WebCtlIpsmarx:RadComboBoxItem Text="General" Value="0" 
                                                meta:resourcekey="RadComboBoxItemResource13" />                                      
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Queue" Value="1" 
                                                meta:resourcekey="RadComboBoxItemResource14" Visible="false" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Paging" Value="2" 
                                                meta:resourcekey="RadComboBoxItemResource15" />                                            
                                        </Items>
                                    </WebCtlIpsmarx:RadComboBox>
                                &nbsp;<asp:Label ID="lblVoiceMailExtension" runat="server" Text="           Voicemail Extension" 
                                        meta:resourcekey="lblVoiceMailExtensionResource1"></asp:Label>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbVoiceMailExtension" runat="server" Width="142px" 
                                        meta:resourcekey="rcbVoiceMailExtensionResource1">
                                        <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                    </WebCtlIpsmarx:RadComboBox>
                                    <asp:Label ID="lblTimeoutExtension" runat="server" Text="Timeout" 
                                        meta:resourcekey="lblTimeoutExtensionResource1"></asp:Label>
                                    <asp:TextBox ID="txtTimeoutExtension" runat="server" Width="30" MaxLength="3" Text="10"
                                        meta:resourcekey="txtTimeoutExtensionResource1"></asp:TextBox>(sec.)
                                </td>
                            </tr>
                            </table>
                            
                            <center>
                            <fieldset style="width:90%;padding-top:20px;" runat="server" ID="fsConfigQueue">
                                <legend><b>Configuration Queue</b></legend>
                            
                            <table style="width: 100%">
                            <tr>
                                <td style="text-align:left">
                                    <asp:Label ID="lblCallForwardingOpt" runat="server" Text="Call Ringing Option" 
                                        meta:resourcekey="lblCallForwardingOptResource1"></asp:Label>
                                </td>
                                <td style="text-align:left">
                                    <WebCtlIpsmarx:RadComboBox ID="rcbCallForwardingOpt" runat="server" 
                                        Width="142px" AutoPostBack="True" 
                                        meta:resourcekey="rcbCallForwardingOptResource1">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                        <Items>
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Disabled" Value="0" 
                                                meta:resourcekey="RadComboBoxItemResource9" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Ring Sequential" Value="1" 
                                                meta:resourcekey="RadComboBoxItemResource10" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Ring All" Value="2" 
                                                meta:resourcekey="RadComboBoxItemResource11" />
                                        </Items>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td colspan="2"></td>
                            </tr>
                            <tr id="trRingSequencial" runat="server" visible="false">
                                <td style="white-space:nowrap;text-align:left;">
                                    <asp:Label ID="lblRingSequencial" runat="server" Text="Call Timeout in Queue(*)" 
                                        meta:resourcekey="lblRingSequencialResource1"></asp:Label>
                                </td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtRingSequencial" runat="server" Width="30px" 
                                        MaxLength="3" meta:resourcekey="txtRingSequencialResource1"></asp:TextBox>
                                </td>
                                <td style="white-space:nowrap;text-align:left;">
                                    &nbsp;</td>
                                <td style="text-align:left">
                                    &nbsp;</td>
                            </tr>
                            <tr id="trQueue2" runat="server">
                                <td style="text-align:left">
                                    <asp:Label ID="lblQueueIVR" runat="server" Text="Queue IVR" 
                                        meta:resourcekey="lblQueueIVRResource1"></asp:Label>
                                </td>
                                <td style="text-align:left">
                                    <WebCtlIpsmarx:RadComboBox ID="rcbQueueIVR" runat="server" Width="142px" 
                                        meta:resourcekey="rcbQueueIVRResource1">
                                        <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td style="text-align:left">
                                    &nbsp;</td>
                                <td style="text-align:left">
                                    &nbsp;</td>
                            </tr>
                            <tr id="trQueue3" runat="server">
                                <td style="text-align:left">
                                    <asp:Label ID="lblQueueLength" runat="server" Text="Queue Capacity" ToolTip="How many calls in Queue"
                                        meta:resourcekey="lblQueueLengthResource1"></asp:Label>
                                </td>
                                <td style="text-align:left">
                                    <asp:TextBox ID="txtQueueLength" runat="server" 
                                        meta:resourcekey="txtQueueLengthResource1" Width="30px" MaxLength="3"></asp:TextBox><br />
                                    <asp:Label ID="lblUnlimitd" runat="server" Text="(0 is unlimited)" 
                                        meta:resourcekey="lblUnlimitdResource1"></asp:Label>
                                </td>
                                <td style="text-align:left">
                                    <asp:Label ID="lblWaitTime" runat="server" Text="Wait Time in Queue (sec.)"
                                        Width="100px" meta:resourcekey="lblWaitTimeResource1" Visible=false></asp:Label>
                                </td>
                                <td style="text-align:left">
                                    <WebCtlIpsmarx:RadComboBox ID="rcbWaitTime" runat="server" Width="142px" 
                                        meta:resourcekey="rcbWaitTimeResource1" Visible=false>
                                        <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr id="trQueue4" runat="server">
                                <td style="text-align:left">
                                    <asp:Label ID="lblGroupActivated" runat="server" Text="Group Enabled" 
                                        Visible="False" meta:resourcekey="lblGroupActivatedResource1"></asp:Label>
                                </td>
                                <td colspan="3" style="text-align:left">
                                    <WebCtlIpsmarx:RadComboBox ID="rcbGroupActivated" runat="server" Width="90px" 
                                        Visible="False" meta:resourcekey="rcbGroupActivatedResource1">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr id="trQueue5" runat="server">
                                <td style="text-align:left">
                                    <asp:Label ID="lblVoiceMail" runat="server" Text="Queue Voicemail Greeting" 
                                        meta:resourcekey="lblVoiceMailResource1"></asp:Label>
                                </td>
                                <td>
                                    <asp:FileUpload ID="fluVoiceMail" runat="server" 
                                        meta:resourcekey="fluVoiceMailResource1" /><br />
                                    <asp:LinkButton ID="lnbVoiceMail" runat="server" Visible="False" 
                                        meta:resourcekey="lnbVoiceMailResource1"></asp:LinkButton>
                                </td>
                                <td style="text-align:left">
                                    
                                </td>
                                <td>

                                </td>
                            </tr>                            
                            </table>
                            
                            </fieldset>
                            </center>
                            
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                            <ContentTemplate>
                            <table style="width: 100%">
                            <tr>
                                <td colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Label ID="lblAssignedExtGroup" runat="server" 
                                        Text="Assigned Extensions/Group" 
                                        meta:resourcekey="lblAssignedExtGroupResource1"></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:Label ID="lblUnassignedExtGroup" runat="server" 
                                        Text="Unassigned Extensions/Group" 
                                        meta:resourcekey="lblUnassignedExtGroupResource1"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnUp" runat="server" Text="Up" CssClass="Button" 
                                        meta:resourcekey="btnUpResource1" /><br />
                                    <br />
                                    <asp:Button ID="btnDown" runat="server" Text="Down" CssClass="Button" 
                                        meta:resourcekey="btnDownResource1" />
                                </td>
                                <td>
                                    <asp:ListBox ID="lbAssignedExtGroup" runat="server" Width="200px" 
                                        Height="100px" SelectionMode="Multiple" 
                                        meta:resourcekey="lbAssignedExtGroupResource1" ToolTip="After manage Extensions, you need click in Add/Modify button to apply all changes." ></asp:ListBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnAdd" runat="server" Text="<< Add" CssClass="Button" 
                                        meta:resourcekey="btnAddResource1" /><br />
                                    <br />
                                    <asp:Button ID="btnRemove" runat="server" Text="Remove >>" CssClass="Button" 
                                        meta:resourcekey="btnRemoveResource1" />
                                </td>
                                <td>
                                    <asp:ListBox ID="lbUnassignedExtGroup" runat="server" Width="200px" 
                                        Height="100px" SelectionMode="Multiple" 
                                        meta:resourcekey="lbUnassignedExtGroupResource1" ToolTip="After manage Extensions, you need click in Add/Modify button to apply all changes." ></asp:ListBox>
                                </td>
                            </tr>
                        </table>
                        
                        </ContentTemplate>
                        </asp:UpdatePanel>
                        <br />
                        
                        <table style="width: 100%">
                            <tr style="text-align: center">
                                <td>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" 
                                        meta:resourcekey="btnResetResource1" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnAddGroup" runat="server" Text="Add" CssClass="Button" 
                                        meta:resourcekey="btnAddGroupResource1" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" 
                                        Enabled="False" meta:resourcekey="btnModifyResource1" /><br />
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
                                    <WebCtlIpsmarx:RadGrid ID="rgGroupExtensions" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" Skin="Sunset" Width="100%" 
                                        meta:resourcekey="rgGroupExtensionsResource1" >
                                        <HeaderContextMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </HeaderContextMenu>
                                        <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                        <MasterTableView>
                                            <Columns>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" 
                                                    UniqueName="column" meta:resourcekey="GridButtonColumnResource1">
                                                </WebCtlIpsmarx:GridButtonColumn>
                                            </Columns>
                                           
                                        </MasterTableView>
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
        </ContentTemplate>

</asp:Content>
