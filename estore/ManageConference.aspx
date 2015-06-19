<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageConference.aspx.cs"
    Inherits="CCEstore.ManageConference" MasterPageFile="MainService.master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

 <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);
        
        var senderID;
        function BeginRequestHandler(sender, args) {
        alert('tet  ')
            var elem = args.get_postBackElement();
            senderID = elem.id;
            
        }
        function EndRequestEventHandler(sender, args) {
            alert('test')
            if(senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_dgDID_ctl00")
                scrollTo(0, screen.height);
            else if(senderID != "ctl00_cphMain_ddlSearchBy")
                scrollTo(0,0)
        }
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
                                    <asp:DropDownList ID="ddlPageSize" runat="server" CssClass="textbox" Width="51px"
                                    AutoPostBack="True" meta:resourcekey="ddlPageSizeResource1">
                                    <asp:ListItem Value="10" meta:resourcekey="ListItemResource1">10</asp:ListItem>
                                    <asp:ListItem Value="20" meta:resourcekey="ListItemResource2">20</asp:ListItem>
                                    <asp:ListItem Value="50" meta:resourcekey="ListItemResource3">50</asp:ListItem>
                                    <asp:ListItem Value="100" meta:resourcekey="ListItemResource4">100</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                                <td style="background-color: #3b72d9; text-align: center;">
                                    <strong style="color: white; position:relative; top:5px; left:-5px;">
                                        <asp:Label ID="lblSearchBy" runat="server" Text="Search By" 
                                        meta:resourcekey="lblSearchByResource1"></asp:Label></strong>
                                    <asp:DropDownList ID="ddlSearchBy" runat="server" CssClass="textbox" 
                                        Width="100px" meta:resourcekey="ddlSearchByResource1">
                                    <asp:ListItem Value="All" meta:resourcekey="ListItemResource5">All</asp:ListItem>
                                    <asp:ListItem Value="Description" meta:resourcekey="ListItemResource6">Description</asp:ListItem>
                                    <asp:ListItem Value="Room_No" meta:resourcekey="ListItemResource7">Room No</asp:ListItem>
                                </asp:DropDownList>
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
                <table cellspacing="0" cellpadding="0" width="750" border="0">
                    <tr>
                        <td>
                            <table class="toptitle" height="18" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td colspan="4" class="heading">
                                        <strong>
                                            <asp:Label ID="lblManageConf" runat="server" Text="Manage Conference" 
                                            meta:resourcekey="lblManageConfResource1"></asp:Label></strong>
                                    </td>
                                    <td class="top" align="right">
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="5" width="100%" align="center" border="0">
                                <tr>
                                    <td >
                                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" 
                                            meta:resourcekey="lblErrorResource1"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="toptable" height="25" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td class="top">
                                        <table class="table1" height="25" cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tr>
                                                <td class="topa" width="15">
                                                    <div align="center">
                                                        <div align="center">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="topa">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="2" width="100%" border="0">
                                <tr>
                                    <td class="main">
                                        <table class="Table" cellspacing="0" cellpadding="5" width="100%" border="0" >
                                            <tr>
                                                <td width="168">
                                                    <asp:Label ID="lblDescription" runat="server" Text="Description" 
                                                        meta:resourcekey="lblDescriptionResource1"></asp:Label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="txtDescription" runat="server" Width="247px" 
                                                        CssClass="TextBox" meta:resourcekey="txtDescriptionResource1"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="168">
                                                    <asp:Label ID="lblRoomNO" runat="server" Text="Room No" 
                                                        meta:resourcekey="lblRoomNOResource1"></asp:Label>
                                                </td>
                                                <td valign="top">
                                                    <asp:TextBox ID="txtRoomNo" runat="server" CssClass="TextBox" 
                                                        meta:resourcekey="txtRoomNoResource1"></asp:TextBox>
                                                </td>
                                                <td width="220">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="168">
                                                    <asp:Label ID="lblPassword" runat="server" Text="Password" 
                                                        meta:resourcekey="lblPasswordResource1"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" 
                                                        meta:resourcekey="txtPasswordResource1"></asp:TextBox>
                                                </td>
                                                <td width="220">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="168">
                                                    <asp:Label ID="lblAccountStatus" runat="server" Text="Account Status" 
                                                        meta:resourcekey="lblAccountStatusResource1"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpAccStatus" runat="server" Width="167px" 
                                                        CssClass="TextBox" meta:resourcekey="drpAccStatusResource1">
                                                        <asp:ListItem Value="0" meta:resourcekey="ListItemResource8">-Select Account Status-</asp:ListItem>
                                                        <asp:ListItem Value="1" meta:resourcekey="ListItemResource9">Active</asp:ListItem>
                                                        <asp:ListItem Value="2" meta:resourcekey="ListItemResource10">Suspended</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td width="220">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table height="50" cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td class="top">
                                        <table id="Table1" cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                            <tr align="center">
                                                <td>
                                                    <asp:Button ID="btnReset" runat="server" CssClass="Button" Text="Reset" 
                                                        meta:resourcekey="btnResetResource1"></asp:Button>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnAdd" runat="server" CssClass="Button" Text="Add" 
                                                        meta:resourcekey="btnAddResource1"></asp:Button>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnModify" runat="server" CssClass="Button" Text="Modify" 
                                                        Enabled="False" meta:resourcekey="btnModifyResource1"></asp:Button>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnDelete" runat="server" CssClass="Button" Text="Delete" 
                                                        OnClientClick="return confirm('Are you sure, you want to delete this record?')" 
                                                        Enabled="False" meta:resourcekey="btnDeleteResource1"></asp:Button>
                                                </td>
                                            </tr>
                                        </table>
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
    
        <div class="module" style="width: 700px">
                <div class="container">
                    <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                   
                    <div class="content">
                        
                        <table width="100%">
                            <tr>
                                <td style="width: 100%;">
                                    <br />
                                    <WebCtlIpsmarx:RadGrid ID="dgDID" runat="server" AllowPaging="True" AllowSorting="True"
                                GridLines="None" Skin="Sunset" AutoGenerateColumns="False" 
                                        meta:resourcekey="dgDIDResource1">
                                <HeaderContextMenu Skin="Office2007">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <MasterTableView CommandItemDisplay="Bottom">
                                    <Columns>
                                        <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" 
                                            UniqueName="column" meta:resourcekey="GridButtonColumnResource1">
                                        </WebCtlIpsmarx:GridButtonColumn>
                                        <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="pbxconferenceid" SortExpression="pbxconferenceid"
                                            ReadOnly="True" HeaderText="Conference ID" 
                                            meta:resourcekey="GridBoundColumnResource1">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="Description" SortExpression="description"
                                            HeaderText="Description" meta:resourcekey="GridBoundColumnResource2">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="Room_No" SortExpression="Room_No" 
                                            HeaderText="Room No" meta:resourcekey="GridBoundColumnResource3">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="password" SortExpression="password" 
                                            HeaderText="Password" meta:resourcekey="GridBoundColumnResource4">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="account_status" SortExpression="account_status"
                                            HeaderText="Account Status" meta:resourcekey="GridBoundColumnResource5">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                    </Columns>
                                    <CommandItemTemplate>
                                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                    </CommandItemTemplate>
                                </MasterTableView>
                                <PagerStyle Mode="Slider" />
                                <FilterMenu Skin="Office2007">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </FilterMenu>
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
