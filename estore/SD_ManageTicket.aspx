<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_ManageTicket.aspx.cs"
    Inherits="CCEstore.SD_ManageTicket" MasterPageFile="mainService.master" %>
<%@ Register TagPrefix="uc1" TagName="ticketinfo" Src="~/Controls/TicketInfo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ticketdesc" Src="~/Controls/TicketDescription.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ticketatt" Src="~/Controls/TicketAttachments.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ticketcmt" Src="~/Controls/TicketComment.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ticketcontainer" Src="~/Controls/ActivityContainer.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td class="main_container">
                <table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="left" class="maintitle">
                            &nbsp;<asp:Label ID="lblPageTitle" runat="server" Text="Manage Support Ticket" meta:resourcekey="lblPageTitleResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="errorbar" style="height: 21px">
                            <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Italic="True" meta:resourcekey="lblErrorResource1"
                                EnableViewState="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <uc1:ticketinfo id="ucInfo" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <uc1:ticketdesc id="ucDesc" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <uc1:ticketatt id="ucAtt" runat="server" showcheckbox="false" />
                        </td>
                    </tr>
                    <tr id="trActButtons" runat="server">
                        <td>
                            <table width="100%" cellpadding="0" border="0" cellspacing="0" runat="server" id="tblInfo">
                                <tr id="tr0" runat="server">
                                    <td class="box" id="td0" runat="server">
                                        <asp:Label ID="lblTitle" runat="server" Text="Select Activity"></asp:Label>
                                    </td>
                                </tr>
                                <tr runat="server" id="tr1">
                                    <td runat="server" id="td11">
                                        <asp:Button ID="btnAddComment" runat="server" Text="Add Comment" />
                                        &nbsp;<asp:Button ID="btnTakeOver" runat="server" Text="Take Over" />
                                        &nbsp;<asp:Button ID="btnAssign" runat="server" Text="Assign" />
                                        &nbsp;<asp:Button ID="btnClose" runat="server" Text="Close" />
                                        &nbsp;<asp:Button ID="btnEmailTicket" runat="server" Text="Email Ticket" />
                                        &nbsp;<asp:Button ID="btnEditTicket" runat="server" Text="Edit Ticket" OnClientClick="return openRadWindow(1)" />
                                        &nbsp;<asp:Button ID="btnStartWork" runat="server" Text="Start Work" Visible="false" />
                                        &nbsp;<asp:Button ID="btnStopWorking" runat="server" Text="Stop Work" Visible="false" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                 
                    <tr id="trComment" runat="server" visible="false">
                        <td>
                            <uc1:ticketcmt id="ucComment" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <asp:Timer ID="Timer1" runat="server" Enabled="false">
                        </asp:Timer>
                        <td>
                            <uc1:ticketcontainer id="TicketContainer1" runat="server" />
                        </td>
                    </tr>
                </table>               
            </td>
        </tr>
    </table>
</asp:Content>
