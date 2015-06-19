<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" Codebehind="ManageSchedules.aspx.cs"
    Inherits="CCEstore.ManageSchedules" MasterPageFile="~/MainService.Master" meta:resourcekey="PageResource1" %>

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
            if(senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_rgSchedules_ctl00")
                scrollTo(0, screen.height);
            else if(senderID != "ctl00_cphMain_rcbSearchBy")
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
                                            <WebCtlIpsmarx:RadComboBoxItem Text="10" Value="10" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource1" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="20" Value="20" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource2" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="50" Value="50" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource3" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="100" Value="100" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource4" />
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
                                            <WebCtlIpsmarx:RadComboBoxItem Text="All" Value="All" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource5" />
                                            <WebCtlIpsmarx:RadComboBoxItem Text="Name" Value="ScheduleName" runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource6" />
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
                <table style="width:100%;">
                    <tr>
                        <td colspan="4" class="heading">
                            <asp:Label ID="lblTitle" runat="server" Text="Manage Schedules" 
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
                                <asp:Label ID="lblDefineSchedule" runat="server" Text="Define Schedule" 
                                meta:resourcekey="lblDefineScheduleResource1"></asp:Label></strong>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Label ID="lblScheduleName" runat="server" Text="Schedule Name" 
                                meta:resourcekey="lblScheduleNameResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtScheduleName" runat="server" 
                                meta:resourcekey="txtScheduleNameResource1"></asp:TextBox>
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:Label ID="lblAssignedDays" runat="server" Text="Assigned Days"  
                                style="position:relative; left:25px;" 
                                meta:resourcekey="lblAssignedDaysResource1"></asp:Label>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblUnassignedDays" runat="server" Text="Unassigned Days"  
                                style="position:relative; left:25px;" 
                                meta:resourcekey="lblUnassignedDaysResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:ListBox ID="lbAssignedDays" runat="server" Width="160px" Height="120px" 
                                SelectionMode="Multiple" meta:resourcekey="lbAssignedDaysResource1"></asp:ListBox>
                        </td>
                        <td style="position:relative; left:-25px;">
                            <asp:Button ID="btnAddDays" runat="server" Text="<< Add" CssClass="Button" 
                                meta:resourcekey="btnAddDaysResource1" /><br />
                            <br />
                            <asp:Button ID="btnRemoveDays" runat="server" Text="Remove >>" 
                                CssClass="Button" meta:resourcekey="btnRemoveDaysResource1" />
                        </td>
                        <td>
                            <asp:ListBox ID="lbUnassigedDays" runat="server" Width="160px" Height="120px" 
                                SelectionMode="Multiple" meta:resourcekey="lbUnassigedDaysResource1">
                                <asp:ListItem Text="Sunday" Value="0" meta:resourcekey="ListItemResource1"></asp:ListItem>
                                <asp:ListItem Text="Monday" Value="1" meta:resourcekey="ListItemResource2"></asp:ListItem>
                                <asp:ListItem Text="Tuesday" Value="2" meta:resourcekey="ListItemResource3"></asp:ListItem>
                                <asp:ListItem Text="Wednesday" Value="3" meta:resourcekey="ListItemResource4"></asp:ListItem>
                                <asp:ListItem Text="Thursday" Value="4" meta:resourcekey="ListItemResource5"></asp:ListItem>
                                <asp:ListItem Text="Friday" Value="5" meta:resourcekey="ListItemResource6"></asp:ListItem>
                                <asp:ListItem Text="Saturday" Value="6" meta:resourcekey="ListItemResource7"></asp:ListItem>
                            </asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTimeRange" runat="server" Text="Time Range" 
                                meta:resourcekey="lblTimeRangeResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbHourFrom" runat="server" Width="60px" 
                                meta:resourcekey="rcbHourFromResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>:
                            <WebCtlIpsmarx:RadComboBox ID="rcbMinuteFrom" runat="server" Width="60px" 
                                meta:resourcekey="rcbMinuteFromResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                            <WebCtlIpsmarx:RadComboBox ID="rcbMeridiemFrom" runat="server" Width="60px" 
                                meta:resourcekey="rcbMeridiemFromResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td>
                            To
                            </td>
                            <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbHourTo" runat="server" Width="60px" 
                                    meta:resourcekey="rcbHourToResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>:
                            <WebCtlIpsmarx:RadComboBox ID="rcbMinuteTo" runat="server" Width="60px" 
                                    meta:resourcekey="rcbMinuteToResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                            <WebCtlIpsmarx:RadComboBox ID="rcbMeridiemTo" runat="server" Width="60px" 
                                    meta:resourcekey="rcbMeridiemToResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>                  
                    
                </table>
                
                <br />
                
                <table width="100%">
                    <tr style="text-align: center">
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" 
                                meta:resourcekey="btnResetResource1" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" 
                                meta:resourcekey="btnAddResource1" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" 
                                Enabled="False" meta:resourcekey="btnModifyResource1" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" 
                                Enabled="False" meta:resourcekey="btnDeleteResource1" /><br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <strong>
                                <asp:Label ID="lblDefaultSchedule" runat="server" Text="* Default schedule is a virtual schedule and not functional, please add your own schedule."
                                meta:resourcekey="lblDefaultScheduleResource1"></asp:Label>
                            </strong>
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
                                    <WebCtlIpsmarx:RadGrid ID="rgSchedules" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" Skin="Sunset" Width="100%" 
                                        meta:resourcekey="rgSchedulesResource1" >
                                        <ClientSettings EnableRowHoverStyle="True">
                                        </ClientSettings>
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
            
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="imgExport" />
            </Triggers>
    </asp:UpdatePanel>
    
</asp:Content>
