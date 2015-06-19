<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ActivityContainer.ascx.cs" Inherits="CCEstore.Controls.ActivityContainer" %>
<%@ Register Src="~/Controls/ActivityLog.ascx" TagName="TicketLog" TagPrefix="uc1" %>

<table width="100%" cellpadding="0" border="0" cellspacing="0" runat="server" id="tblInfo">
    <tr id="tr0" runat="server">
        <td class="box" colspan="4" id="td0" runat="server">
            <asp:Label ID="lblTitle" runat="server" Text="Activity Log : " EnableTheming="True"
                EnableViewState="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:DataList ID="dlsActivity" runat="server" Width="100%">
                <ItemTemplate>
                    <uc1:TicketLog ID="ucTicketActiviyLog"  runat="server" />
                    <asp:Label ID="lblCommentID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CommentID") %>' Visible="false"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
