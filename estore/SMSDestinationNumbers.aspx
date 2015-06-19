<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true" CodeBehind="SMSDestinationNumbers.aspx.cs" Inherits="CCEstore.SMSDestinationNumbers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

 <WebCtlIpsmarx:RadWindowManager Skin="Office2007" Height="500px" Modal="True" Width="830px"
    BorderStyle="Inset" KeepInScreenBounds="True" ID="RadWindowManager1" runat="server"
    ReloadOnShow="True" ShowContentDuringLoad="False" VisibleStatusbar="False" 
    OnClientClose="OnClientClose" Behavior="Default" InitialBehavior="None" Left="" 
    meta:resourcekey="RadWindowManager1Resource1" style="display: none;" Top="">
    <Windows>
        <WebCtlIpsmarx:RadWindow runat="server" ID="RadWindow1" Behaviors="Close" 
            meta:resourcekey="RadWindow1Resource1">
        </WebCtlIpsmarx:RadWindow>
    </Windows>
</WebCtlIpsmarx:RadWindowManager>

    <script type="text/javascript">
        function openRadWindow(me) {

            var oWnd = radopen("ImportSMSNumbers.aspx");
            oWnd.center();
        }

        function OnClientClose(oWnd, args) {
            __doPostBack('__Page', 'MyCustomArgument');
        }

    </script>

     

    <table width="100%" cellpadding="5" cellspacing="5" border="0">
        <tr>
            <td colspan="2" class="heading">
                <asp:Label ID="Label1" runat="server" Text="SMS Destination Numbers" 
                    meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <!-- <hr /> -->
                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" EnableViewState="false"
                    meta:resourcekey="lblErrorResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label2" runat="server" Text="Destination Number(*)" 
                    meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtDestinationPhone" runat="server" CssClass="NotEditable" meta:resourcekey="txtDestinationPhoneResource1"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="(Please include Country Code (e.g. 14161234567)"
                    meta:resourcekey="Label6Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label5" runat="server" Text="Import Destination Number" 
                    meta:resourcekey="Label5Resource1"></asp:Label>
            </td>
            <td align="left">
                <a href="javascript:void(0)" runat="server" id="aOutPackagDID" onclick="openRadWindow(this)">Import</a>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <table width="100%">
                    <tr style="text-align: center">
                        <td>
                            <asp:Button ID="btnReset" runat="server" CssClass="Button" 
                                meta:resourcekey="btnResetResource1" Text="Reset" />
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" CssClass="Button" 
                                meta:resourcekey="btnAddResource1" Text="Add" />
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnModify" runat="server" CssClass="Button" Enabled="False" 
                                meta:resourcekey="btnModifyResource1" Text="Modify" />
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" 
                                CssClass="Button" Enabled="False" meta:resourcekey="btnDeleteResource1" 
                                Text="Delete" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="heading">
                <asp:Label ID="Label3" runat="server" Text="SMS Destination Numbers"></asp:Label>
                <asp:HiddenField ID="hidID" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <WebCtlIpsmarx:RadGrid ID="dgDetail" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="false" GridLines="None" Skin="Sunset" Width="100%">
                    <HeaderContextMenu Skin="Sunset">
                        <CollapseAnimation Duration="200" Type="OutQuint" />
                    </HeaderContextMenu>
                    <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                    <MasterTableView>
                        <Columns>
                         <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column"
                                            meta:resourcekey="GridButtonColumnResource1">
                                        </WebCtlIpsmarx:GridButtonColumn>
                            <WebCtlIpsmarx:GridBoundColumn DataField="DestinationNumberId" HeaderText="DestinationNumberId" UniqueName="columnSentDate">
                            </WebCtlIpsmarx:GridBoundColumn>
                            <WebCtlIpsmarx:GridBoundColumn DataField="PhoneNumber" HeaderText="PhoneNumber"
                                UniqueName="columnFromPhoneNumber">
                            </WebCtlIpsmarx:GridBoundColumn>                           
                        </Columns>
                    </MasterTableView>
                    <PagerStyle Mode="Slider" />
                    <FilterMenu Skin="Sunset">
                        <CollapseAnimation Duration="200" Type="OutQuint" />
                    </FilterMenu>
                    <ClientSettings EnableRowHoverStyle="true">
                    </ClientSettings>
                </WebCtlIpsmarx:RadGrid>
            </td>
        </tr>
    </table>
</asp:Content>
