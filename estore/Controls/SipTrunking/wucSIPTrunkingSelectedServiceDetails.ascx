<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSIPTrunkingSelectedServiceDetails.ascx.cs"
    Inherits="CCEstore.Controls.wucSIPTrunkingSelectedServiceDetails" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style22
    {
    }
    .style33
    {
        width: 50x;
    }
    .style4
    {
        width: 1266px;
    }
    .style34
    {
        width: 101px;
    }
</style>
<div>
    <table border="0" width="800px">
        <tr>
        <td colspan="2" align="center">
            <asp:Label EnableViewState="false" ID="lblError" Font-Bold="true" ForeColor="Red" runat="server" />
        </td
        </tr>
        <tr>
            <td rowspan="6" class="style34">
                <asp:Image ID="imgService" runat="server" />
            </td>
            <td width="550px" class="style3">
                <asp:Label ID="lblOnlineTitle" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblOnlineDesc" runat="server" />
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
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr style="font-weight: bold">
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="style4" style="text-align: right">
                            <asp:Label Text="Monthly Base Price" runat="server" />
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblMonthlyBasePrice" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DataList ID="dlsPackageChargeItem" runat="server" Width="800px">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table border="0" width="100%">
                            <tr>
                                <td class="style22">
                                    &nbsp;
                                </td>
                                <td class="style22" colspan="2">
                                    <table class="style1" width="100%">
                                        <tr>
                                            <td colspan="3" class="style3">
                                                <%#Eval("GroupName")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td style="width: 500px">
                                                <asp:Label Text="No of DIDs" runat="server" />
                                            </td>
                                            <td style="width: 250px">
                                                <%#Eval("TotalDID")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" Text="Concurent Calls" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("TotalDID")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" Text="Free Minutes" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("Minutes")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" Text="DID Cost Per Month" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("DIDPerMonthCost")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label4" Text="DID Cost Per Minute" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("DIDPerMinuteCost")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" Text="DID Cost Per Call" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("DIDPerCallCost")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label6" Text="Allowed To Buy Extra DID" runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label runat="server" Text='<%# CanByExtraDID(DataBinder.Eval(Container.DataItem, "CanBuyExtraDID").ToString())  %>' />
                                            </td>
                                        </tr>
                                        <tr id="trExtraDIDCostPerMonth" runat="server" visible='<%# int.Parse(DataBinder.Eval(Container.DataItem, "CanBuyExtraDID").ToString())==1 %>'>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label7" Text="Extra DID Cost Per Month" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("ExtraDIDPerMonthCost")%>
                                            </td>
                                        </tr>
                                        <tr id="trExtraDIDCostPerMin" runat="server" visible='<%# int.Parse(DataBinder.Eval(Container.DataItem, "CanBuyExtraDID").ToString())==1 %>'>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label8" Text="Extra DID Cost Per Minute" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("ExtraDIDPerMinuteCost")%>
                                            </td>
                                        </tr>
                                        <tr id="trExtraDIDCostPerCall" runat="server" visible='<%# int.Parse(DataBinder.Eval(Container.DataItem, "CanBuyExtraDID").ToString())==1 %>'>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label9" Text="Extra DID Cost Per Call" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("ExtraDIDPerCallCost")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label11" Text="Total Extra Channels" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("TotalExtraChannels")%>
                                            </td>
                                        </tr>
                                        <tr id="trExtraChannelCost" runat="server" visible='<%# int.Parse(DataBinder.Eval(Container.DataItem, "TotalExtraChannels").ToString())>=1 %>'>
                                            <td class="style33">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="Label10" Text="Extra Channel Cost Per Month" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("ExtraChannelCostPermonth")%>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="font-weight: bold">
                                <td colspan="3" align="right">
                                    <asp:Label Text="Group Total" runat="server" />
                                </td>
                                <td>
                                    <%#Eval("GroupCost")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <FooterTemplate>
                        <table border="0" width="800px">
                            <tr style="font-weight: bold; background-color: #FFFFCC">
                                <td style="width: 100px">
                                </td>
                                <td colspan="3" align="right" width="700px">
                                    Package Total
                                </td>
                                <td>
                                    <%#GetPackageTotal()%>*
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <asp:Label Text="Note: *Some additional charges may apply to Package Total" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </FooterTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
        <tr>
            <td align="center">
                <input class="buttonDefault" onclick="history.back();" type="button" value="Back"
                    name="Back" id="Button1" runat="server" meta:resourcekey="Button1Resource1">
                <script language="JavaScript">
                    function BackOneScreen() {
                        var aurl = 'plans.aspx';
                        window.location = aurl;
                    }
                </script>
            </td>
            <td align="center">
                <asp:Button ID="submit" runat="server" CssClass="buttonDefault" Text="Continue"  
                    meta:resourcekey="submitResource1"></asp:Button>
            </td>
        </tr>
    </table>
</div>
