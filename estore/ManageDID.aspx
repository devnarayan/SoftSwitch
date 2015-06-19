<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDID.aspx.cs" Inherits="CCEstore.ManageDID"
    MasterPageFile="MainService.master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div>

        <div class="module" style="width: 700px">
            <div class="container">
                <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
                <div class="content">
                    <table width="100%">
                        <tr>
                            <td colspan="4" class="heading">
                                <asp:Label ID="Label1" runat="server" Text="Manage 'Calls TO'" meta:resourcekey="Label1Resource1"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>
                                    <asp:Label ID="lblDidSettings" runat="server" Text="DID mapping settings" meta:resourcekey="lblDidSettingsResource1"></asp:Label></strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr style="text-align: center">
                                        <td>
                                            <asp:Label ID="lblAssignedDid" runat="server" Text="Assigned DIDs" meta:resourcekey="lblAssignedDidResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="text-align: center">
                                        <td>
                                            <asp:ListBox ID="lbAssignedDID" runat="server" Width="150px" Height="100px" AutoPostBack="True"
                                                OnSelectedIndexChanged="lbAssignedDID_SelectedIndexChanged" meta:resourcekey="lbAssignedDIDResource1">
                                            </asp:ListBox>
                                            <br />
                                            <asp:Label ID="lblSelect" runat="server" Text="Select the DID for mapping configuration"
                                                meta:resourcekey="lblSelectResource1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table id="tbSetting" runat="server" visible="false" width="100%">
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="4">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblMapSelected" runat="server" meta:resourcekey="lblMapSelectedResource1">Map selected DID To</asp:Label>
                                        </td>
                                        <td colspan="3">
                                            <asp:GridView ID="gvMapTo" runat="server" AutoGenerateColumns="False" meta:resourcekey="gvMapToResource1">
                                                <Columns>
                                                    <asp:BoundField HeaderText="ID" DataField="ScheduleID" meta:resourcekey="BoundFieldResource1" />
                                                    <asp:BoundField HeaderText="ID" DataField="TypeMapping" Visible="false" meta:resourcekey="BoundFieldResource2" />
                                                    <asp:BoundField HeaderText="ID" DataField="Value" Visible="false" meta:resourcekey="BoundFieldResource3" />
                                                    <asp:BoundField HeaderText="Schedule" DataField="ScheduleName" meta:resourcekey="BoundFieldResource4" />
                                                    <asp:TemplateField HeaderText="Map To" meta:resourcekey="TemplateFieldResource1">
                                                        <ItemTemplate>
                                                            <asp:DropDownList ID="ddlScheduleMap" runat="server" Width="100px" AutoPostBack="True"
                                                                OnSelectedIndexChanged="ddlMap_SelectedIndexChanged" meta:resourcekey="ddlScheduleMapResource1">
                                                            </asp:DropDownList>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Value" meta:resourcekey="TemplateFieldResource2">
                                                        <ItemTemplate>
                                                            <asp:DropDownList ID="ddlScheduleValue" runat="server" Width="220px" AutoPostBack="True"
                                                                OnSelectedIndexChanged="ddlValue_SelectedIndexChanged" meta:resourcekey="ddlScheduleValueResource1">
                                                            </asp:DropDownList>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <asp:Label ID="lblNoSchedules" runat="server" Font-Bold="True" Visible="False" meta:resourcekey="lblNoSchedulesResource1">There is no schedule defined. Please define your own schedule first.</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <hr />
                                        </td>
                                    </tr>
                                    
                                    
                                   
                                    <tr>
                                        <td colspan="4">
                                            <strong>
                                                <asp:Label ID="lblIvr" runat="server" Text="Shared Line DID Configuration" meta:resourcekey="lblIvrResource1"></asp:Label></strong>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trNameSharedLine">
                                        <td>
                                            <asp:Label ID="lblNameSharedLineDID" runat="server" Text="Name" meta:resourcekey="lblNameSharedLineDIDResource1"></asp:Label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="txtNameSharedLineDID" runat="server" Width="250px" MaxLength="45"
                                                meta:resourcekey="txtNameSharedLineDIDResource1"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblMaxLinesSharedLineDID" runat="server" Text="Channels" meta:resourcekey="lblMaxLinesSharedLineDIDResource1"></asp:Label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="txtNumberLinesSharedLineDID" runat="server" Width="50px" MaxLength="5"
                                                meta:resourcekey="txtNumberLinesSharedLineDIDResource1"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" align="center">
                                            <asp:Button ID="btnUpdate" runat="server" Text="Update Shared Line" Width="150px"
                                                CssClass="Button" meta:resourcekey="btnUpdateResource1" />
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
                            <td colspan="4" class="heading">
                                <asp:Label ID="Label2" runat="server" Text="Manage 'Calls From'" meta:resourcekey="Label2Resource1"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                                    meta:resourcekey="lblErrorResource1"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number (*)" meta:resourcekey="lblPhoneNumberResource1"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPhoneNumber" runat="server" MaxLength="15" meta:resourcekey="txtPhoneNumberResource1"></asp:TextBox>
                                            <br />
                                            <asp:Label ID="Label4" runat="server" ForeColor="#3366ff"
                                                Text="Note: The number should be<br />Country code + city code + number"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            <asp:Label ID="lblVirtualExtension" runat="server" Text="Extension (*)" meta:resourcekey="lblVirtualExtensionResource1"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            <WebCtlIpsmarx:RadComboBox ID="rcbFollowmeExtension" runat="server" Width="142px"
                                                meta:resourcekey="rcbFollowmeExtensionResource1">
                                                <CollapseAnimation Duration="200" Type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                    </tr>
                                    <tr id="trcallrecordingext" runat="server">
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Record Call Extension (*)"></asp:Label>
                                        </td>
                                        <td>
                                            <WebCtlIpsmarx:RadComboBox ID="ddlRecordingExtension" runat="server" Skin="Default"
                                                Width="152px">
                                                <Items>
                                                </Items>
                                                <CollapseAnimation Duration="200" Type="OutQuint" />
                                            </WebCtlIpsmarx:RadComboBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr style="text-align: center">
                                        <td>
                                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" meta:resourcekey="btnResetResource1" /><br />
                                            <br />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnAddNumber" runat="server" Text="Add" CssClass="Button" meta:resourcekey="btnAddNumberResource1" /><br />
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
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <WebCtlIpsmarx:RadGrid ID="rgFollowme" runat="server" AllowPaging="True" AllowSorting="True"
                                    GridLines="None" Skin="Sunset" Width="50%" PageSize="10" meta:resourcekey="rgFollowmeResource1">
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

    </div>
</asp:Content>
