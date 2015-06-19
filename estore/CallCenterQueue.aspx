<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallCenterQueue.aspx.cs"
    Inherits="CCEstore.CallCenterQueue" MasterPageFile="MainService.master" %>

<%@ Register Src="~/Controls/CallCenterQueue.ascx" TagName="CallQueueu" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/CallCenterQueueSubGroup.ascx" TagName="QueueSubGroup"
    TagPrefix="uc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" EnableViewState="false"
                                meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <uc1:CallQueueu ID="ucCallQueue" runat="server"></uc1:CallQueueu>
                            <asp:Panel ID="pnlSubGroup" runat="server">
                                <uc1:QueueSubGroup ID="ucQueueSubGroup" runat="server"></uc1:QueueSubGroup>
                            </asp:Panel>
                            <WebCtlIpsmarx:RadGrid ID="rgCallCenterQueue" runat="server" AllowPaging="True" AllowSorting="True"
                                GridLines="None" Skin="Sunset" Width="650px" AutoGenerateColumns="False"  >
                                <HeaderContextMenu Skin="Sunset">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                <MasterTableView DataKeyNames="PBXCallCenterQueueID">
                                    <Columns>
                                        <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column">
                                        </WebCtlIpsmarx:GridButtonColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="PBXCallCenterQueueID" HeaderText="ID" UniqueName="PBXCallCenterQueueID">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="QueueName" HeaderText="QueueName" UniqueName="QueueName">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                       <WebCtlIpsmarx:GridBoundColumn DataField="VirtualExtension" HeaderText="VirtualExtension" UniqueName="VirtualExtension">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="QueueSize" HeaderText="QueueSize" UniqueName="QueueSize">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridBoundColumn DataField="Status" HeaderText="Status" UniqueName="Status">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3" meta:resourcekey="GridTemplateColumnResource1">
                                            <HeaderTemplate>
                                                Wait IVR
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbListen" Text="Listen" AutoPostBack="True" runat="server" CommandName="Listen" />
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
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
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
</asp:Content>
