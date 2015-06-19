<%@ Page Language="C#" MasterPageFile="main.master" AutoEventWireup="true" CodeBehind="selectphone.aspx.cs"
    Trace="false" TraceMode="SortByTime" Inherits="CCEstore.selectphone" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="cc" TagName="SelectDIDs" Src="wucSelectDIDs.ascx" %>
<%@ Register TagPrefix="ccc" TagName="tag" Src="wucSteps.ascx" %>
<%@ Register TagPrefix="uc" TagName="AssignedDID" Src="~/Controls/SipTrunking/wucSIPtrunkingAssignedDID.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <input type="hidden" id="hidStore" name="hidStore" runat="server" value="1" />
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
            <tr>
                <td style="height: 525px" class="main" valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0" runat="server" id="tblSteps">
                        <tbody>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ccc:tag ID="stepUserControl" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="page_cont">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="page" align="center">
                                                    <table class="widht_t" cellspacing="0" cellpadding="0" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td align="left">
                                                                    <asp:Literal ID="lblMessage" runat="server" EnableViewState="False" meta:resourcekey="lblErrorResource1"></asp:Literal>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlAssignedDID" runat="server" meta:resourcekey="pnlSearchResource1">
                                                                    <uc:AssignedDID ID="ucSIPTrunkingAssignedDID" runat="server">
                                                                    </uc:AssignedDID>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <cc:SelectDIDs ID="SelectDIDs1" runat="server" PlanType="1" IsNotDirectDID="true" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblNote" runat="server" ForeColor="Blue" EnableViewState="False" Text="Note: You are limited to order only 1 DID during the registration process.<br />Additional DID can be purchased after login to the user portal."></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td align="center">
                                                                    <input class="buttonDefault" onclick="history.back();" type="button" value="Back"
                                                                        name="Back" id="Button1" runat="server" meta:resourcekey="Button1Resource1" />
                                                                    <script language="JavaScript">

                                                                        function BackOneScreen() {
                                                                            var aurl = 'selectservice.aspx';
                                                                            window.location = aurl;
                                                                        }
                                                                    </script>
                                                                </td>
                                                                <td align="center">
                                                                    <asp:Button ID="submit" OnClick="submit_Click" CssClass="buttonDefault" runat="server"
                                                                        Text="Continue" meta:resourcekey="submitResource1"></asp:Button>
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
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
