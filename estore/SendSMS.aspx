<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true"
    CodeBehind="SendSMS.aspx.cs" Inherits="CCEstore.SendSMS" %>

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
    <style type="text/css">
 
.AutoShrink
{
    width:auto;
    max-width:400px;
    float:left;
}
 
.AutoShrink .rgMasterTable
{
    width:auto !important;
}
 
.clearFloat
{
    clear:both;
}
 
</style>

     

    <table width="100%" cellpadding="5" cellspacing="5" border="0">
        <tr>
            <td colspan="2" class="heading">
                <asp:Label ID="Label1" runat="server" Text="Send SMS" meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <!-- <hr /> -->
                <asp:Label ID="lblInactive" runat="server" Text="Your account is Inactive" ForeColor="Red"
                    Visible="False" meta:resourcekey="lblInactiveResource1" />
                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" EnableViewState="false"
                    meta:resourcekey="lblErrorResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label2" runat="server" Text="From(*)" meta:resourcekey="Label2Resource1"></asp:Label>
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
                <asp:Label ID="Label5" runat="server" Text="Destination Number" meta:resourcekey="Label5Resource1"></asp:Label>
            </td>
            <td align="left">
                <WebCtlIpsmarx:RadComboBox ID="ddlDestinationNumber" runat="server" Width="251px" EmptyMessage="Select/Enter PhnoeNo"
                    HighlightTemplatedItems="true" MarkFirstMatch="true" AllowCustomText="true">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </WebCtlIpsmarx:RadComboBox>            
                <a href="javascript:void(0)" runat="server" id="aOutPackagDID" onclick="openRadWindow(this)">Import</a>
                <br />
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label7" runat="server" Text="Message(*)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtMessage" runat="server" CssClass="NotEditable" Columns="100"
                    Height="76px" MaxLength="250" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:Label ID="Label8" runat="server" Text="(max 250 characters)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="Button" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="heading">
                <asp:Label ID="Label3" runat="server" Text="SMS Sent Report"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <WebCtlIpsmarx:RadGrid ID="gvSentStatus" runat="server" AllowPaging="True" AllowSorting="True" CssClass
                    AutoGenerateColumns="false" GridLines="None" Skin="Sunset" Width="100%">
                    <HeaderContextMenu Skin="Sunset">
                        <CollapseAnimation Duration="200" Type="OutQuint" />
                    </HeaderContextMenu>
                    <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                    <MasterTableView>
                        <Columns>
                            <WebCtlIpsmarx:GridBoundColumn DataField="SentDate" HeaderText="SentDate" UniqueName="columnSentDate">
                            </WebCtlIpsmarx:GridBoundColumn>
                            <WebCtlIpsmarx:GridBoundColumn DataField="FromPhoneNumber" HeaderText="FromPhoneNumber"
                                UniqueName="columnFromPhoneNumber">
                            </WebCtlIpsmarx:GridBoundColumn>
                            <WebCtlIpsmarx:GridBoundColumn DataField="ToPhoneNumber" HeaderText="ToPhoneNumber"
                                UniqueName="columnToPhoneNumber">
                            </WebCtlIpsmarx:GridBoundColumn>
                            <WebCtlIpsmarx:GridBoundColumn DataField="Message"  ItemStyle-Wrap="true" ItemStyle-Width="200px" HeaderText="Message" UniqueName="columnMessage">
                             <HeaderStyle Width="200px" Wrap="true" /> 
                            </WebCtlIpsmarx:GridBoundColumn>
                            <WebCtlIpsmarx:GridBoundColumn DataField="SentStatus" HeaderText="SentStatus" UniqueName="columnSentStatus">
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
