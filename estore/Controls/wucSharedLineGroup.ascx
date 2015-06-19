<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSharedLineGroup.ascx.cs" Inherits="CCEstore.Controls.wucSharedLineGroup" %>

    <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);

        var senderID;
        function BeginRequestHandler(sender, args) {
            var elem = args.get_postBackElement();
            senderID = elem.id;

        }
        function EndRequestEventHandler(sender, args) {
            if (senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_rgIVRs_ctl00")
                scrollTo(0, screen.height);
            else if (senderID != "ctl00_cphMain_rcbSearchBy")
                scrollTo(0, 0)
        }
    </script>

<asp:Panel ID="pnlSearch" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                
                    <table style="width: 100%; border-collapse: collapse">
                        <tr>
                            <td>
                                <strong>
                                    <asp:Label ID="lblSearch" runat="server" Text="Search"></asp:Label></strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #3b72d9; text-align: center;">
                                <strong style="color: white; position: relative; top: 5px; left: -5px;">
                                    <asp:Label ID="lblPageSize" runat="server" Text="Page Size"></asp:Label></strong>
                                <WebCtlIpsmarx:RadComboBox ID="rcbPageSize" runat="server" Width="50px" AutoPostBack="true">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem Text="10" Value="10" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="20" Value="20" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="50" Value="50" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="100" Value="100" />
                                    </Items>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="background-color: #3b72d9; text-align: center;">
                                <strong style="color: white; position: relative; top: 5px; left: -5px;">
                                    <asp:Label ID="lblSearchBy" runat="server" Text="Search By"></asp:Label></strong>
                                <WebCtlIpsmarx:RadComboBox ID="rcbSearchBy" runat="server" Width="160px">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem Text="All" Value="All" />
                                        <WebCtlIpsmarx:RadComboBoxItem Text="Name" Value="Name" />
                                    </Items>
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="background-color: #3b72d9; text-align: left;">
                                <strong style="color: white">
                                    <asp:CheckBox ID="chkExact" runat="server" />
                                    <asp:Label ID="lblExact" runat="server" Text="Exact"></asp:Label></strong>
                            </td>
                            <td style="background-color: #3b72d9">
                                <asp:ImageButton ID="imgExport" Style="cursor: hand" runat="server" ToolTip="Export Data"
                                    BorderStyle="None" ImageUrl="Images/export.gif" 
                                    meta:resourcekey="imgExportResource1" Visible="False">
                                </asp:ImageButton>
                            </td>
                        </tr>
                        <tr style="background-color: #98AFC7; text-align: center">
                            <td>
                                <strong style="color: white; position: relative; left: 85px;">
                                    <asp:Label ID="lblSearchFor" runat="server" Text="Search For"></asp:Label></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSearchFor" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="Button" />
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
    </asp:Panel>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table style="width: 100%">
                    <tr>
                        <td colspan="4" class="heading">
                            <strong>
                                <asp:Label ID="lblManage" runat="server" Text="Manage Shared Line Group"></asp:Label></strong>
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
                                <asp:Label ID="lblIvr" runat="server" Text="Shared Line Group"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtName" runat="server" Width="250" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMaxLines" runat="server" Text="Max. Lines"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNumberLines" runat="server" MaxLength="5"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblVirtualNumber" runat="server" Text="Virtual extension number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtVirtualNumber" runat="server" MaxLength="5"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%; text-align: center;">
                    <tr>
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" Enabled="false" /><br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" Enabled="false" /><br />
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
                            <WebCtlIpsmarx:RadGrid ID="rgGroups" runat="server" AllowPaging="True" AllowSorting="true"
                                GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="false">
                                <HeaderContextMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                <MasterTableView>
                                    <Columns>
                                        <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column">
                                        </WebCtlIpsmarx:GridButtonColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="pbxsharedlinegroupID" HeaderText="ID" UniqueName="ID">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        
                                        
                                        <WebCtlIpsmarx:GridBoundColumn DataField="Name" HeaderText="Name" UniqueName="Name" ItemStyle-Width="50%">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="Lines" HeaderText="Max. Lines" UniqueName="MaxLines">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="VirtualNumber" HeaderText="Virtual Number" UniqueName="VirtualNumber">
                                        </WebCtlIpsmarx:GridBoundColumn>
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
