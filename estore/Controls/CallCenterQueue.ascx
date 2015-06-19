<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallCenterQueue.ascx.cs"
    Inherits="CCEstore.Controls.CallCenterQueue" %>
<table cellpadding="3" cellspacing="3" style="width: 530px" border="0">
    <tr>
        <td class="subtitle" colspan="4">
            <asp:Label ID="Label91" runat="server" Text="Call Center Queue"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" EnableViewState="false" meta:resourcekey="lblErrorResource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label95" runat="server" ForeColor="Black" Text="Queue Name" Width="110px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            <asp:TextBox ID="txtQueueName" runat="server" Width="175px" MaxLength="100" meta:resourcekey="txtVirtualExtensionResource1"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="lblVirtualExtension" runat="server" Text="Virtual Extension (*)" meta:resourcekey="lblVirtualExtensionResource1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtVirtualExtension" runat="server" Width="50" MaxLength="5" meta:resourcekey="txtVirtualExtensionResource1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label97" runat="server" ForeColor="Black" Text="Queue Type"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlQueueType" runat="server" AutoPostBack="True">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Sub Group Priority" Value="1"
                        Selected="True" Owner="ddlQueueType" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Agent Priority" Value="2" Owner="ddlQueueType" />
                </Items>
                <CollapseAnimation Duration="200" Type="OutQuint" />
            </WebCtlIpsmarx:RadComboBox>
        </td>
        <td>
            <asp:Label ID="Label94" runat="server" ForeColor="Black" Text="Queue Size"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadNumericTextBox ID="txtQueueSize" runat="server" Culture="English (United States)"
                MaxLength="4" MaxValue="9999" MinValue="0" Value="0" Width="100px">
                <NumberFormat DecimalDigits="0" GroupSizes="5" />
            </WebCtlIpsmarx:RadNumericTextBox><br />
            <span style="color: #3366ff"><span id="Span2" style="color: #0033FF;">Note: 0 is unlimited</span></span>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label90" runat="server" ForeColor="Black" Text="Queue Status"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlQueueStatus" runat="server">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Selected="True" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" />
                </Items>
                <CollapseAnimation Duration="200" Type="OutQuint" />
            </WebCtlIpsmarx:RadComboBox>
        </td>
        <td>
            <asp:Label ID="Label98" runat="server" ForeColor="Black" Text="Hold Time"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadNumericTextBox ID="txtHoldTime" runat="server" Culture="English (United States)"
                MaxLength="4" MaxValue="9999" MinValue="0" Value="0" Width="100px">
                <NumberFormat DecimalDigits="0" GroupSizes="5" />
            </WebCtlIpsmarx:RadNumericTextBox>
            <asp:Label ID="Label101" runat="server" ForeColor="Black" Text="(min)"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label99" runat="server" ForeColor="Black" Text="Voicemail Manager"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlVoicemailManager" runat="server">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Selected="True"
                        Owner="ddlVoicemailManager" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" Owner="ddlVoicemailManager" />
                </Items>
                <CollapseAnimation Duration="200" Type="OutQuint" />
            </WebCtlIpsmarx:RadComboBox>
        </td>
        <td>
            <asp:Label ID="Label100" runat="server" ForeColor="Black" Text="Overflow Sent to Voicemail"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlOverflowVoicemail" runat="server">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Selected="True"
                        Owner="ddlOverflowVoicemail" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" Owner="ddlOverflowVoicemail" />
                </Items>
                <CollapseAnimation Duration="200" Type="OutQuint" />
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label96" runat="server" ForeColor="Black" Text="Queue Wait IVR"></asp:Label>
        </td>
        <td colspan="3">
            <WebCtlIpsmarx:RadUpload ID="fulAudioFile" runat="server" InitialFileInputsCount="1"
                Skin="Vista" ControlObjectsVisibility="None" MaxFileInputsCount="1" AllowedFileExtensions=".mp3,.wav"
                Width="500px" /><br />
            <asp:Label ID="Label5" runat="server" ForeColor="#3366ff"
                 Text="Note: Use .WAV and .MP3 format audio file"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4" style="width: 100%;" align="center">
            <table width="100%" align="center" border="0">
                <tr>
                    <td>
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" meta:resourcekey="btnResetResource1" /><br />
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" meta:resourcekey="btnAddResource1" /><br />
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" Enabled="False"
                            meta:resourcekey="btnModifyResource1" /><br />
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" Enabled="False"
                            OnClientClick="return confirm('Are you sure you wnat to delete ?')" CommandName="Delete"
                            meta:resourcekey="btnDeleteResource1" /><br />
                        <br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
