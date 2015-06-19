<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallRecording.ascx.cs"
    Inherits="CCEstore.Controls.CallRecording" %>
<script type="text/javascript">
    function SelectedIndexChange(sender, args) {
        
        var recenable = $find('<%=ddlCallRecording.ClientID %>').get_value();        
        var recext = $find('<%=ddlRecordingExtension.ClientID %>').get_value();        
        var selext = document.getElementById('ctl00$cphMain$txtExtension').value;
        if (recenable == "1") {
            if (recext == selext) {
                document.getElementById("<%=chkViewRecording.ClientID %>").checked = true;
            }
        }
        else if (recenable == "0") {
            document.getElementById("<%=chkViewRecording.ClientID %>").checked = false;
        }

    }
</script>
<table cellpadding="3" cellspacing="3" style="width: 100%">
    <tr>
        <td class="subtitle" colspan="4">
            <asp:Label ID="Label91" runat="server" Text=" Note: (*) Call recording files are available in a few minutes delay."></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 125px">
            <asp:Label ID="Label90" runat="server" ForeColor="Black" Text="Call Recording (*) "></asp:Label>
        </td>
        <td style="width: 250px">
            <WebCtlIpsmarx:RadComboBox ID="ddlCallRecording" OnClientSelectedIndexChanged="SelectedIndexChange" runat="server"  Width="178px">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" Owner="ddlCallRecording"
                        Selected="True" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Owner="ddlCallRecording" />
                </Items>
                <CollapseAnimation Duration="200" Type="OutQuint" />
            </WebCtlIpsmarx:RadComboBox>
        </td>
        <td style="width: 125px">
            <asp:Label ID="Label94" runat="server" ForeColor="Black" Text="Can View Recordings"></asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:CheckBox ID="chkViewRecording" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="width: 125px">
            <asp:Label ID="Label92" runat="server" ForeColor="Black" Text="Call Recording Extension"></asp:Label>
        </td>
        <td style="width: 250px">
            <WebCtlIpsmarx:RadComboBox ID="ddlRecordingExtension" runat="server"   OnClientSelectedIndexChanged="SelectedIndexChange"
                Width="152px">
                <Items>
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Disable" Value="0"
                        Owner="ddlRecordingExtension" />
                    <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Owner="ddlRecordingExtension" />
                </Items>
                <CollapseAnimation Duration="200" Type="OutQuint" />
            </WebCtlIpsmarx:RadComboBox>
            <asp:Label ID="Label93" runat="server" ForeColor="#0033FF" meta:resourcekey="Label3Resource1"
                Text="Note: Reocrded files will be saved under this extension" Visible="False"
                Font-Size="10pt"></asp:Label>
        </td>
        <td style="width: 125px">
            <asp:Label ID="Label89" runat="server" ForeColor="ControlText" Text="Max. Duration(sec)"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadNumericTextBox ID="txtDuration" runat="server" Culture="English (United States)"
                MaxLength="5" MaxValue="99999" MinValue="0" Width="175px">
                <NumberFormat DecimalDigits="0" GroupSizes="5" />
            </WebCtlIpsmarx:RadNumericTextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 125px">
        </td>
        <td style="width: 250px">
            &nbsp;
            <asp:Button ID="btnSaveCallRecording" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                BorderWidth="1px" CssClass="btn_style" Text="Save" Width="100px" OnClick="btnSaveCallRecording_Click" />
        </td>
        <td style="width: 125px">
        </td>
        <td>
        </td>
    </tr>
</table>
