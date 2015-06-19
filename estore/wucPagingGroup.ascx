<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucPagingGroup.ascx.cs" Inherits="CCEstore.wucPagingGroup" %>

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
            if(senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_rgPaging_ctl00")
                scrollTo(0, screen.height);
            else if(senderID != "ctl00_cphMain_rcbSearchBy" && senderID != "ctl00_cphMain_rcbPaging" && 
                    senderID != "ctl00_cphMain_btnUp" && senderID != "ctl00_cphMain_btnDown")
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
                                    <WebCtlIpsmarx:RadComboBox ID="rcbPageSize" runat="server" Width="50px" 
                                        meta:resourcekey="rcbPageSizeResource1">
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
                                                meta:resourcekey="RadComboBoxItemResource6" Text="Paging Name" 
                                                Value="PBXPagingName" />
                                            <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                meta:resourcekey="RadComboBoxItemResource7" Text="Paging Number" 
                                                Value="PBXPagingNumber" />
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
                        <table style="width: 100%">
                            <tr>
                                <td colspan="4" class="heading">
                                    <strong>
                                        <asp:Label ID="lblManagePaging" runat="server" Text="Manage Paging Group" 
                                        meta:resourcekey="lblManagePagingResource1"></asp:Label></strong>
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
                                <td colspan="4">
                                    <strong>
                                        <asp:Label ID="lblDefinePaging" runat="server" Text="Define Paging" 
                                        meta:resourcekey="lblDefinePagingResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPagingName" runat="server" Text="Paging Name (*)" 
                                        meta:resourcekey="lblPagingNameResource1"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txtPagingName" runat="server" Width="300px" 
                                        meta:resourcekey="txtPagingNameResource1"></asp:TextBox>
                                </td>
                            </tr>                                                     
                            <tr>
                                <td>
                                    <asp:Label ID="lblPaging" runat="server" Text="Paging Number (*)" Width="100px" 
                                        meta:resourcekey="lblPagingResource1"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txtPaging" runat="server" MaxLength="15" 
                                        meta:resourcekey="txtPagingResource1"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr style="position:relative; left:0px;">
                                <td>
                                </td>
                                <td>
                                    <asp:Label ID="lblAssignedPaging" runat="server" Text="Assigned Extensions" 
                                        meta:resourcekey="lblAssignedPagingResource1"></asp:Label>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:Label ID="lblUnassignedPaging" runat="server" Text="Unassigned Extensions" 
                                        meta:resourcekey="lblUnassignedPagingResource1"></asp:Label>
                                </td>
                            </tr>
                            <tr style="position:relative; left:0px;">
                                <td>
                                    <asp:Button ID="btnUp" runat="server" Text="Up" CssClass="Button" 
                                        meta:resourcekey="btnUpResource1" /><br />
                                    <br />
                                    <asp:Button ID="btnDown" runat="server" Text="Down" CssClass="Button" 
                                        meta:resourcekey="btnDownResource1" />
                                </td>
                                <td>
                                    <asp:ListBox ID="lbAssignedPaging" runat="server" Width="200px" Height="100px" 
                                        SelectionMode="Multiple" meta:resourcekey="lbAssignedPagingResource1" ></asp:ListBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnAdd" runat="server" Text="<< Add" CssClass="Button" 
                                        meta:resourcekey="btnAddResource1" /><br />
                                    <br />
                                    <asp:Button ID="btnRemove" runat="server" Text="Remove >>" CssClass="Button" 
                                        meta:resourcekey="btnRemoveResource1" />
                                </td>
                                <td>
                                    <asp:ListBox ID="lbUnassignedPaging" runat="server" Width="200px" 
                                        Height="100px" SelectionMode="Multiple" 
                                        meta:resourcekey="lbUnassignedPagingResource1" ></asp:ListBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        
                        <table style="width: 100%">
                            <tr style="text-align: center">
                                <td>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" 
                                        meta:resourcekey="btnResetResource1" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnAddPaging" runat="server" Text="Add" CssClass="Button" 
                                        meta:resourcekey="btnAddPagingResource1" /><br />
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
                                    <WebCtlIpsmarx:RadGrid ID="rgPaging" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" Skin="Sunset" Width="100%" 
                                        meta:resourcekey="rgPagingResource1" >
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
