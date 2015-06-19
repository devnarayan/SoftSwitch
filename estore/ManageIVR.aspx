<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" CodeBehind="ManageIVR.aspx.cs"
    Inherits="CCEstore.ManageIVR" MasterPageFile="MainService.master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

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
                                        <strong style="color: white; position: relative; top: 5px; left: -5px;">
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
                                        <strong style="color: white; position: relative; top: 5px; left: -5px;">
                                            <asp:Label ID="lblSearchBy" runat="server" Text="Search By" 
                                            meta:resourcekey="lblSearchByResource1"></asp:Label></strong>
                                        <WebCtlIpsmarx:RadComboBox ID="rcbSearchBy" runat="server" Width="160px" CausesValidation="false"
                                            meta:resourcekey="rcbSearchByResource1">
                                            <Items>
                                                <%--<WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                    meta:resourcekey="RadComboBoxItemResource5" Text="All" Value="All" />--%>
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                    meta:resourcekey="RadComboBoxItemResource6" Text="Name" Value="IVRName" />
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" 
                                                    meta:resourcekey="RadComboBoxItemResource7" Text="File Name" 
                                                    Value="IVRFileName" />
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                    <td style="background-color: #3b72d9; text-align: left;">
                                        <strong style="color: white">
                                            <asp:CheckBox ID="chkExact" runat="server" 
                                            meta:resourcekey="chkExactResource1" />
                                            <asp:Label ID="lblExact" runat="server" Text="Exact" 
                                            meta:resourcekey="lblExactResource1"></asp:Label></strong>
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
                                            <asp:Label ID="lblSearchFor" runat="server" Text="Search For" 
                                            meta:resourcekey="lblSearchForResource1"></asp:Label></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSearchFor" runat="server" Width="300px" 
                                            meta:resourcekey="txtSearchForResource1"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="Button" CausesValidation="false"
                                            meta:resourcekey="btnSearchResource1" />
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
                        <table style="width: 100%">
                            <tr>
                                <td colspan="4" class="heading">
                                    <strong>
                                        <asp:Label ID="lblManageIvr" runat="server" Text="Manage IVR" 
                                        meta:resourcekey="lblManageIvrResource1"></asp:Label></strong>
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
                                        <asp:Label ID="lblIvr" runat="server" Text="IVR" 
                                        meta:resourcekey="lblIvrResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblName" runat="server" Text="IVR Name" 
                                        meta:resourcekey="lblNameResource1"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server" meta:resourcekey="txtNameResource1"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req1" ControlToValidate="txtName" 
                                        runat="server" ToolTip="name is required">*</asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:Label ID="lblLanguage" runat="server" Text="Language" Visible="False" 
                                        meta:resourcekey="lblLanguageResource1"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadComboBox ID="rcbLanguages" runat="server" Width="110px" 
                                        Visible="False" meta:resourcekey="rcbLanguagesResource1">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                    </WebCtlIpsmarx:RadComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblAudioFile" runat="server" Text="File Name" 
                                        meta:resourcekey="lblAudioFileResource1"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:FileUpload ID="fulAudioFile" runat="server" Width="350px" 
                                        meta:resourcekey="fulAudioFileResource1" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                <!-- 2012.07.04 David Y B-01248 -->
                                    <asp:Label ID="lblFormat" runat="server" Font-Italic="True" 
                                        Text="* Use .WAV and .MP3 format audio file. Prefered format (WAV/8Hz/16bit). It is highly recommended to upload audio files not bigger than 4MB."
                                        meta:resourcekey="lblFormatResource1"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 100%; text-align: center;">
                            <tr>
                                <td>
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" 
                                        meta:resourcekey="btnResetResource1" /><br />
                                    <br />
                                </td>
                                <td>
                                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" 
                                        meta:resourcekey="btnAddResource1"  /><br />
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
                                    <WebCtlIpsmarx:RadGrid ID="rgIVRs" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="False" 
                                        meta:resourcekey="rgIVRsResource1">
                                        <HeaderContextMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </HeaderContextMenu>
                                        <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                        <MasterTableView>
                                            <Columns>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" 
                                                    UniqueName="column" meta:resourcekey="GridButtonColumnResource1">
                                                </WebCtlIpsmarx:GridButtonColumn>
                                                <WebCtlIpsmarx:GridBoundColumn DataField="ID" HeaderText="ID" UniqueName="ID" 
                                                    meta:resourcekey="GridBoundColumnResource1">
                                                </WebCtlIpsmarx:GridBoundColumn>
                                                <WebCtlIpsmarx:GridBoundColumn DataField="Name" HeaderText="IVR Name" 
                                                    UniqueName="Name" meta:resourcekey="GridBoundColumnResource2">
                                                </WebCtlIpsmarx:GridBoundColumn>
                                                <WebCtlIpsmarx:GridBoundColumn DataField="File Name" HeaderText="File Name" UniqueName="File Name"
                                                    Visible="true" meta:resourcekey="GridBoundColumnResource3">
                                                </WebCtlIpsmarx:GridBoundColumn>
                                                <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3" 
                                                    meta:resourcekey="GridTemplateColumnResource1">
                                                    <HeaderTemplate>
                                                        Listen
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbListen" Text="Listen" AutoPostBack="True" runat="server"  CausesValidation="false"
                                                            CommandName="Listen" meta:resourcekey="lbListenResource1" />
                                                    </ItemTemplate>
                                                </WebCtlIpsmarx:GridTemplateColumn>
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
            <div runat="server" id="divIVRRecorded" Visible="false">
            <div class="module" style="width: 700px">
                <div class="container">
                    <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                    <div class="content">
                        <table width="100%">
                            <tr>
                                <td class="heading">
                                    <strong>
                                        <asp:Label ID="lblIVRRecorded" runat="server" Text="IVR recorded through the phone" 
                                        meta:resourcekey="lblIVRRecordedResource1"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblIVRRecordedDescription" runat="server"
                                        Text="* The system identified IVRs recorded through the phone. You can delete or add them into the system."
                                        meta:resourcekey="lblIVRRecordedDescriptionResource1"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblErrorIVRRecorded" runat="server" CssClass="error" Font-Bold="True" 
                                        ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100%;">
                                    <br />
                                    <WebCtlIpsmarx:RadGrid ID="rgIVRRecorded" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="False" 
                                        meta:resourcekey="rgIVRRecordedsResource1">
                                        <HeaderContextMenu Skin="Sunset">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </HeaderContextMenu>
                                        <PagerStyle Visible="False" AlwaysVisible="False" Mode="NumericPages" Wrap="False" />
                                        <MasterTableView>
                                            <Columns>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Add" Text="Add" 
                                                    UniqueName="column" meta:resourcekey="GridButtonColumnAddRecordedResource1">
                                                </WebCtlIpsmarx:GridButtonColumn>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Delete" Text="Delete" 
                                                    UniqueName="Delete" meta:resourcekey="GridButtonColumnDeleteRecordedResource1">
                                                </WebCtlIpsmarx:GridButtonColumn>
                                                <WebCtlIpsmarx:GridBoundColumn DataField="DateTime" HeaderText="Date/Time" 
                                                    UniqueName="DateTime" meta:resourcekey="GridBoundColumnDateTimeRecordedResource2">
                                                </WebCtlIpsmarx:GridBoundColumn>
                                                <WebCtlIpsmarx:GridBoundColumn DataField="Caller" HeaderText="Phone number" 
                                                    UniqueName="Caller" meta:resourcekey="GridBoundColumnCallerRecordedResource3">
                                                </WebCtlIpsmarx:GridBoundColumn>
                                                <WebCtlIpsmarx:GridBoundColumn DataField="Size" HeaderText="Length" 
                                                    UniqueName="Size" meta:resourcekey="GridBoundColumnSizeRecordedResource4">
                                                </WebCtlIpsmarx:GridBoundColumn>
                                                <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn2" 
                                                    meta:resourcekey="GridTemplateColumnResource1">
                                                    <HeaderTemplate>
                                                        Listen
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbListen" Text="Listen" AutoPostBack="True" runat="server" 
                                                            CommandName="Listen" meta:resourcekey="lbListenRecordedResource1" CausesValidation="false"  />
                                                            <asp:HiddenField runat="server" ID="hdFileName" Value='<%# DataBinder.Eval(Container.DataItem, "FileName") %>' />
                                                    </ItemTemplate>
                                                </WebCtlIpsmarx:GridTemplateColumn>
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
            </div>
</asp:Content>
    