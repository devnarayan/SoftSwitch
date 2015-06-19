<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ActivityLog.ascx.cs" Inherits="CCEstore.Controls.ActivityLog" %>
<%@ Register Src="~/Controls/TicketAttachments.ascx" TagName="TicketAttc"
    TagPrefix="uc1" %>
<table width="100%" cellpadding="0" border="0" cellspacing="0">
    <tr id="tr0">
        <td colspan="4">
            <table width="100%" cellpadding="0" border="0" cellspacing="0">
                <tr>
                     <td id="td1" class="box" style=" width: 80px;" runat="server">
                        <asp:Label ID="Label2" runat="server" Text="Action Taken : " EnableTheming="True" EnableViewState="False"></asp:Label>
                    </td>
                    <td class="box" style="width: 80px;">
                        <asp:Label ID="lblActionTaken" runat="server" Text="" EnableTheming="True" EnableViewState="False"></asp:Label>
                    </td>
                    
                    <td id="td0" class="box"  style=" width: 85px;" runat="server">
                        <asp:Label ID="lblTitle" runat="server" Text="User : " EnableTheming="True" EnableViewState="False"></asp:Label>
                    </td>
                    <td class="box" style=" width: 500px;" >
                        <asp:Label ID="lblUserName" runat="server" Text="" EnableTheming="True" EnableViewState="False"></asp:Label>
                    </td>
                     <td class="subtitle" style=" width: 80px;" >
                        <asp:Label ID="lblUserName0" runat="server" Text="Note Privacy : " 
                            EnableTheming="True" EnableViewState="False"></asp:Label>
                    </td>
                     <td class="subtitle">
                        <asp:Label ID="lblNotePrivacy" runat="server" EnableTheming="True" 
                             EnableViewState="False"></asp:Label>
                     </td>
                    <td class="box" >
                        <asp:Label ID="Label1" runat="server" Text="Activity Date : " EnableTheming="True"
                            EnableViewState="False"></asp:Label>
                    </td>
                    <td class="box">
                        <asp:Label ID="lblActivityDate" runat="server" Text="" EnableTheming="True" EnableViewState="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="lblBody" runat="server"></asp:Label></td>
    </tr>
    <tr>
        <td colspan="4">
            <uc1:TicketAttc ID="ucTickAtt" runat="server" ShowCheckBox="false" />
        </td>
    </tr>
</table>