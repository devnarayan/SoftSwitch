<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSelectDIDs.ascx.cs"
    Inherits="CCEstore.wucSelectDIDs" %>
<script type="text/javascript" language="javascript">
    function PostBackSelf(value) {
        window.location = window.location.pathname + '?val=' + value;
    }
    function ShowLoading() {
        document.getElementById('lblLoading').style.display = 'inline';
    }
</script>
<%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>--%>
<style>
    .style5
    {
        background-color: #5b84bf;
        font-weight: bold;
        color: White;
    }
</style>
<p>
    &nbsp;&nbsp;&nbsp;
</p>
<table cellspacing="0" cellpadding="5" width="100%" border="0" style="table-layout: fixed;">
    <tbody>
        <tr>
            <td class="heading">
                <asp:Label ID="Label1" runat="server" Text="Select Phone Number" meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Literal ID="lblMessage" runat="server" EnableViewState="False" meta:resourcekey="lblErrorResource1"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Label ID="Label2" runat="server" Text='You are no longer tied to your "local area code". You can choose from our list of
                                    available area codes below. This means even if you live in New York, you can have
                                    a California area code.' meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
        </tr>
    </tbody>
</table>
<table cellspacing="0" cellpadding="0" align="center" border="0" width="100%">
    <tbody>
        <tr>
            <td style="height: 319px">
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td class="bg_white" colspan="3" style="text-align: right; height: 157px;">
                                <table border="0" cellpadding="3" cellspacing="0" style="width: 650px">
                                    <tr id="trNumberPhoneLines" runat="server" bgcolor="#DDE2EC">
                                        <td align="left" style="width: 258px; height: 13px" runat="server">
                                            <asp:Label ID="Label3" runat="server" Text="Number of Phone Lines" meta:resourcekey="Label3Resource1"></asp:Label>
                                        </td>
                                        <td align="left" runat="server">
                                            <asp:TextBox ID="txtNoOfPhoneLines" runat="server" CssClass="inputA" AutoPostBack="True"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                                FilterType="Numbers" TargetControlID="txtNoOfPhoneLines" Enabled="True">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </td>
                                        <td runat="server">
                                        </td>
                                        <td runat="server">
                                        </td>
                                    </tr>
                                    <tr bgcolor="#DDE2EC" runat="server" visible="False" id="trExtensionDigitLength">
                                        <td align="left" style="width: 258px; height: 13px" runat="server">
                                            <asp:Label ID="Label4" runat="server" Text="Extension Digit Length" meta:resourcekey="Label4Resource1"></asp:Label>
                                        </td>
                                        <td align="left" runat="server">
                                            <asp:TextBox ID="txtExtensionLimit" runat="server" CssClass="input"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="ftbExtensionLimit" runat="server" FilterType="Numbers"
                                                TargetControlID="txtExtensionLimit" Enabled="True">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </td>
                                        <td runat="server">
                                        </td>
                                        <td runat="server">
                                        </td>
                                    </tr>
                                    <tr bgcolor="#DDE2EC" runat="server" visible="False" id="trNumberOfExtensions">
                                        <td align="left" runat="server">
                                            <asp:Label ID="Label5" runat="server" Text="Number Of Extensions" meta:resourcekey="Label5Resource1"></asp:Label>
                                        </td>
                                        <td align="left" runat="server">
                                            <asp:TextBox ID="txtNoOfExtension" runat="server" CssClass="input"></asp:TextBox>
                                            <ajaxIPSmarx:FilteredTextBoxExtender ID="ftbextensions" runat="server" FilterType="Numbers"
                                                TargetControlID="txtNoOfExtension" Enabled="True">
                                            </ajaxIPSmarx:FilteredTextBoxExtender>
                                        </td>
                                        <td runat="server">
                                        </td>
                                        <td runat="server">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="text-align: left">
                                            <asp:Label ID="lblLoading" runat="server" ForeColor="Red" Style="display: none" Text="Loading..."></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 13px" colspan="4">
                                            <asp:Table CellPadding="3" CellSpacing="0" Style="width: 100%" ID="tblPhone" runat="server"
                                                BorderStyle="None" BorderColor="White">
                                                <asp:TableRow ID="TableRow1" runat="server">
                                                    <asp:TableCell ID="TableCell1" Style="width: 100px; height: 13px" runat="server">
                                                                &nbsp;</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" Style="width: 100px; height: 13px" runat="server"></asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" Style="width: 100px; height: 13px" runat="server"></asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" Style="width: 100px; height: 13px" runat="server"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow ID="TableRow2" runat="server">
                                                    <asp:TableCell ID="tcDIDGroup" Style="width: 100px; height: 13px" runat="server">
                                                        <strong>&nbsp; <span style="color: #5b84bf">
                                                            <asp:Label ID="lblDIDGroup" runat="server" Text="DID Group"></asp:Label>
                                                        </span>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" Style="width: 100px; height: 13px" runat="server">
                                                        <strong>&nbsp; <span style="color: #5b84bf">
                                                            <asp:Label ID="Label6" runat="server" Text="Type"></asp:Label>
                                                        </span>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" Style="width: 100px; height: 13px" runat="server">
                                                        <strong>&nbsp; <span style="color: #5b84bf">
                                                            <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
                                                        </span>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="cellState" Style="width: 100px; height: 13px" runat="server">
                                                        <strong>&nbsp; <span style="color: #5b84bf">
                                                            <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
                                                        </span>
                                                    </asp:TableCell>
                                                    <asp:TableCell Style="width: 100px; height: 13px; color: #5b84bf; font-weight: bold"
                                                        ID="cityrow" runat="server" Text="
                                                                            City"></asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" Style="width: 100px; height: 13px" runat="server">
                                                        <strong><span style="color: #5b84bf">
                                                            <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label>
                                                        </span>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="tcForwardTo" Style="width: 100px; height: 13px" runat="server"
                                                        meta:resourcekey="tcForwardToResource1">
                                                        <strong><span style="color: #5b84bf">
                                                            <asp:Label ID="lblForwardTo" runat="server" Text="Forward To"></asp:Label>
                                                        </span>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="bg_white" width="100%" colspan="2" align="left">
                                <asp:Table ID="tblDID" runat="server" Width="80%" border="0" align="left" CellPadding="3"
                                    CellSpacing="1" meta:resourcekey="tblDIDResource1">
                                    <asp:TableRow BackColor="#5b84bf" runat="server" meta:resourcekey="TableRowResource1">
                                        <asp:TableCell class="style5" ForeColor="White" Font-Bold="true" Text="Phone No" meta:resourcekey="TableCellResource7" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Phone Type" meta:resourcekey="TableCellResource8" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Price" meta:resourcekey="TableCellResource9" ID="tcPrice" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Plan Type" meta:resourcekey="TableCellResource10" ID="tcPlanType" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="DID Cost/Minute" ID="tcPricePerMinute" runat="server" meta:resourcekey="tcPricePerMinuteResource1"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="DID Cost/Call" ID="tcCostPerCall" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="DID Cost/Month" ID="tcPricePerMonth" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Status" ID="tcSIPTrunkingStatus" runat="server"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Setup Fee" ID="tcPriceSetup" runat="server" meta:resourcekey="tcPriceSetupResource1"></asp:TableCell>
                                        <asp:TableCell ID="tcForwardTo2" class="style5" Text="Forward To" meta:resourcekey="TableCellResource11"
                                            runat="server"></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="trDIDPrice" runat="server" meta:resourcekey="trDIDPriceResource1">
                                        <asp:TableCell ID="txtPhone" runat="server" meta:resourcekey="txtPhoneResource1"></asp:TableCell>
                                        <asp:TableCell ID="txtPhoneType" runat="server" meta:resourcekey="txtPhoneTypeResource1"></asp:TableCell>
                                        <asp:TableCell ID="txtPrice" runat="server" meta:resourcekey="txtPriceResource1"></asp:TableCell>
                                        <asp:TableCell ID="txtPlanType" runat="server" meta:resourcekey="txtPlanTypeResource1"></asp:TableCell>
                                        <asp:TableCell ID="tcDIDCostPerMin" runat="server"></asp:TableCell>
                                        <asp:TableCell ID="tcDIDCostPerCall" runat="server"></asp:TableCell>
                                        <asp:TableCell ID="tcDIDCostPerMonth" runat="server"></asp:TableCell>
                                        <asp:TableCell ID="tcDIDStatus" runat="server"></asp:TableCell>
                                        <asp:TableCell ID="txtForwardTo" runat="server" meta:resourcekey="txtForwardToResource1"></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div align="right">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="bg_white">
                                    <asp:Label ID="lblChoose" runat="server" meta:resourcekey="lblChooseResource1"></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td class="bg_blue" style="height: 20px">
                                <table cellspacing="0" cellpadding="0" width="90%" border="0">
                                    <tbody>
                                        <tr>
                                            <td width="1%" style="height: 13px">
                                            </td>
                                            <!-- <td><img src="images/green_one.GIF" border="0" alt="" width="41" height="30" align="left"></td> -->
                                            <td width="99%" style="height: 13px">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td style="height: 13px">
                                &nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
<asp:Label ID="lblDIDNotFoundText" runat="server" Visible="False" meta:resourcekey="lblDIDNotFoundTextResource1"
    Text="Your requested new phone number will be e-mailed to you within 24 hours after completing the on-line registration.Thank-You for choosing us for your telephony needs. Please press the next button below to proceed"></asp:Label>
<br />
<br />
<table cellspacing="0" cellpadding="0" width="100%" border="0" id="tblButtons" runat="server"
    visible="False">
    <tr runat="server">
        <td style="text-align: center" runat="server">
            <asp:Button ID="btnPurchase" runat="server" Text="Check Out" CssClass="Button" meta:resourcekey="btnPurchaseResource1"
                OnClick="btnPurchase_Click" />
        </td>
    </tr>
</table>
<%--</ContentTemplate>
</asp:UpdatePanel>--%>