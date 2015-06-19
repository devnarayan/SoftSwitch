<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" Codebehind="ManageQueue.aspx.cs"
    Inherits="CCEstore.ManageQueue" MasterPageFile="~/MainService.Master" %>

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
            if(senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_rgQueue_ctl00")
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
                        
                        
                        <asp:Panel ID="pnlSearch" runat="server">
                        <table style="width: 100%; border-collapse: collapse">
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblSearch" runat="server" Text="Search"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #3b72d9; text-align: center;">
                                    <strong style="color:white; position:relative; top:5px; left:-5px;" >
                                        <asp:Label ID="lblPageSize" runat="server" Text="Page Size"></asp:Label></strong>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbPageSize" runat="server" Width="50px">
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td style="background-color: #3b72d9; text-align: center;">
                                    <strong style="color:white; position:relative; top:5px; left:-5px;">
                                        <asp:Label ID="lblSearchBy" runat="server" Text="Search By"></asp:Label></strong>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbSearchBy" runat="server" Width="160px" >
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td style="background-color: #3b72d9; text-align:left;">
                                    <strong style="color: white">
                                        <asp:CheckBox ID="chkExact" runat="server" />
                                        <asp:Label ID="lblExact" runat="server" Text="Exact"></asp:Label></strong>
                                </td>
                                <td style="background-color: #3b72d9">
                                    <asp:ImageButton ID="imgExport" Style="cursor: hand" runat="server" ToolTip="Export Data" BorderStyle="None"
                                        ImageUrl="Images/export.gif" meta:resourcekey="imgExportResource1" ></asp:ImageButton>
                                        
                                </td>
                            </tr>
                            <tr style="background-color: #98AFC7; text-align: center">
                                <td>
                                    <strong style="color:white; position:relative; left:65px;">
                                        <asp:Label ID="lblSearchFor" runat="server" Text="Search For"></asp:Label></strong>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSearchFor" runat="server" Width="300px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="Button" />
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
                                    <asp:Label ID="lblTitle" runat="server" Text="Manage Queue"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <hr />
                                    <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblDefineQueue" runat="server" Text="Define Queue"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblQueueName" runat="server" Text="Name" Width="100"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtQueueName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblCapacity" runat="server" Text="Capacity" Width="100"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCapacity" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="lblWaitTime" runat="server" Text="Wait Time (sec.)" Width="100"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbWaitTime" runat="server" Width="142px" AutoPostBack="true">
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblQueueVoicemailExt" runat="server" Text="Queue Voice Mail Extension" Width="100"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbQueueVoicemailExt" runat="server" Width="142px" AutoPostBack="true">
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                                
                            </tr>
                            
                            <tr>
                                 <td>
                                    <asp:Label ID="lblQueueIVR" runat="server" Text="Queue IVR"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbQueueIVR" runat="server" Width="142px" AutoPostBack="true">
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            
                            </tr>
                        </table>

                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblExtSettings" runat="server" Text="Extension Settings"></asp:Label></strong>
                                </td>
                            </tr>
                            
                            <tr style="text-align: center">
                                <td>
                                    <asp:Label ID="lblAssignedExt" runat="server" Text="Assigned Extensions"></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:Label ID="lblUnassignedExt" runat="server" Text="Unassigned Extensions"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr style="text-align: center">
                                <td>
                                    <asp:ListBox ID="lbAssignedExtGroup" runat="server" Width="200px" Height="100px"
                                        SelectionMode="Multiple"></asp:ListBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnAdd" runat="server" Text="<< Add" CssClass="Button" /><br />
                                    <br />
                                    <asp:Button ID="btnRemove" runat="server" Text="Remove >>" CssClass="Button" />
                                </td>
                                <td>
                                    <asp:ListBox ID="lbUnassignedExtGroup" runat="server" Width="200px" Height="100px"
                                        SelectionMode="Multiple"></asp:ListBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        
                        <table style="width: 100%">
                            <tr style="text-align: center">
                                <td>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnAddQueue" runat="server" Text="Add" CssClass="Button" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" Enabled="false" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" Enabled="false" CommandName="Delete" /><br />
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
                                    <WebCtlIpsmarx:RadGrid ID="rgQueue" runat="server" AllowPaging="True" AllowSorting="true"
                                        GridLines="None" Skin="Sunset" Width="100%" >
                                        <HeaderContextMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </HeaderContextMenu>
                                        <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                        <MasterTableView>
                                            <Columns>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column">
                                                </WebCtlIpsmarx:GridButtonColumn>
                                            </Columns>
                                           
                                        </MasterTableView>
                                        <FilterMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </FilterMenu>
                                        <ClientSettings EnableRowHoverStyle="True">
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
        
        <Triggers>
            <asp:PostBackTrigger ControlID="imgExport" />    
        </Triggers>
        
    </asp:UpdatePanel>
</asp:Content>
