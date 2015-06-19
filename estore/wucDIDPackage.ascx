<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDIDPackage.ascx.cs"
    Inherits="CCEstore.wucDIDPackage" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 260px;
    }
</style>

<script type="text/javascript" language="javascript">
    function PostBackSelf(value) {

        window.location = window.location.pathname + '?val=' + value;

    }
</script>

<table cellspacing="0" cellpadding="5" width="100%" border="0" style="table-layout: fixed;">
    <tbody>
        <tr>
            <td class="heading">
                <asp:Label ID="Label1" runat="server" Text="Select Phone Number" meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="lblError" runat="server" ForeColor="Red" EnableViewState="False" 
                    meta:resourcekey="lblErrorResource1"></asp:Label>
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
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="bg_white" width="100%" colspan="2" align="left">
                                <asp:Table ID="tblGroupDID" runat="server" Width="80%" border="0" align="left" CellPadding="3"
                                    CellSpacing="1" meta:resourcekey="tblGroupDIDResource1">
                                </asp:Table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <asp:Label ID="lblAdditionalDID" runat="server" 
                                                                meta:resourcekey="lblAdditionalDIDResource1">Enter number of additional phone lines </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtNumberOfDID" runat="server" Width="76px" 
                                                                meta:resourcekey="txtNumberOfDIDResource1"></asp:TextBox>
                                                            &nbsp;
                                                            <asp:Button ID="btnAddDID" runat="server" CssClass="Button" Text="Add" 
                                                                meta:resourcekey="btnAddDIDResource1" />
                                                            <asp:Button ID="btnRemoveAdditionalDID" runat="server" CssClass="Button" 
                                                                Text="Remove All Additional DID" 
                                                                meta:resourcekey="btnRemoveAdditionalDIDResource1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <asp:Table ID="tblAdditionalDID" runat="server" Width="80%" border="0" align="left"
                                                CellPadding="3" CellSpacing="1" 
                                                meta:resourcekey="tblAdditionalDIDResource1">
                                            </asp:Table>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="bg_white" width="100%" colspan="2" align="left">
                                <asp:Table ID="tblDID" runat="server" Width="80%" border="0" align="left" CellPadding="3"
                                    CellSpacing="1" meta:resourcekey="tblDIDResource1">
                                    <asp:TableRow BackColor="#3E65BF" meta:resourcekey="TableRowResource1">
                                        <asp:TableCell class="style5" Text="Phone No" meta:resourcekey="TableCellResource7"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Phone Type" meta:resourcekey="TableCellResource8"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Price" meta:resourcekey="TableCellResource9"
                                            ID="tcPrice"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Plan Type" meta:resourcekey="TableCellResource10"
                                            ID="tcPlanType"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Per Minute1" ID="tcPricePerMinute" 
                                            meta:resourcekey="tcPricePerMinuteResource1"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Per Month" ID="tcPricePerMonth" 
                                            meta:resourcekey="tcPricePerMonthResource1"></asp:TableCell>
                                        <asp:TableCell class="style5" Text="Setup Fee" ID="tcPriceSetup" 
                                            meta:resourcekey="tcPriceSetupResource1"></asp:TableCell>
                                        <asp:TableCell ID="tcForwardTo2" class="style5" Text="Forward To" meta:resourcekey="TableCellResource11"></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
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
<asp:Label ID="lblDIDNotFoundText" runat="server" Visible="False" meta:resourcekey="lblDIDNotFoundTextResource1">Your requested new phone number will be e-mailed to you within 24 hours after completing the on-line registration.Thank-You for choosing us for your telephony needs. Please press the next button below to proceed</asp:Label>
<br />
<br />
<table cellspacing="0" cellpadding="0" width="100%" border="0" id="tblButtons" runat="server"
    visible="false">
    <tr>
        <td style="text-align: center">
            <asp:Button ID="btnPurchase" runat="server" Text="Check Out" CssClass="Button" 
                meta:resourcekey="btnPurchaseResource1" />
        </td>
    </tr>
</table>
