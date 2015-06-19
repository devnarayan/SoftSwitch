<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TicketDescription.ascx.cs" Inherits="CCEstore.Controls.TicketDescription" %>
<table id="tblInfo" runat="server" border="0" cellpadding="0" cellspacing="0" 
    width="100%">
    <tr id="tr0" runat="server">
        <td id="td0" runat="server" class="box" colspan="4">
            <asp:Label ID="lblTitle" runat="server" EnableTheming="True" 
                EnableViewState="False" Text="Title : "></asp:Label>
        </td>
    </tr>
    <tr id="tr1" runat="server">
        <td id="td11" runat="server" colspan="4">
            <asp:Label ID="radBody" runat="server"></asp:Label>
        </td>
    </tr>
</table>
