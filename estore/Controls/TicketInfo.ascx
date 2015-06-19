<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TicketInfo.ascx.cs"
    Inherits="CCEstore.Controls.TicketInfo" %>
<table width="100%" class="resetmargin" border="0" runat="server" id="tblInfo">
    <tr id="tr0" runat="server">
        <td class="subtitle" colspan="4" id="td0" runat="server">
            <asp:Label ID="lblTitle" runat="server" Text="Ticket Number : " EnableViewState="False"></asp:Label>
        </td>
    </tr>
    <tr runat="server" id="tr1">
        <td runat="server" id="td11">
            <asp:Label ID="lblTitle0" runat="server" Text="Customer ID"></asp:Label>
        </td>
        <td runat="server" id="td12">
            <asp:HyperLink ID="hlCustomerID" runat="server"></asp:HyperLink>
        </td>
        <td runat="server" id="td13">
            &nbsp;
        </td>
        <td runat="server" id="td14">
            &nbsp;
        </td>
    </tr>
    <tr runat="server" id="tr2">
        <td runat="server" id="td21">
            <asp:Label ID="lblTitle1" runat="server" Text="Assigned To"></asp:Label>
        </td>
        <td runat="server" id="td22">
            <asp:HyperLink ID="hlAssignedTo" runat="server"></asp:HyperLink>
        </td>
        <td runat="server" id="td23">
            &nbsp;
        </td>
        <td runat="server" id="td24">
            &nbsp;
        </td>
    </tr>
    <tr runat="server" id="tr3">
        <td runat="server" id="td31">
            <asp:Label ID="lblTitle2" runat="server" Text="Created On"></asp:Label>
        </td>
        <td runat="server" id="td32">
            <asp:Label ID="lblCreatedOn" runat="server"></asp:Label>
        </td>
        <td runat="server" id="td33">
            &nbsp;
        </td>
        <td runat="server" id="td34">
            &nbsp;
        </td>
    </tr>
    <tr runat="server" id="tr4">
        <td runat="server" id="td41">
            <asp:Label ID="lblTitle3" runat="server" Text="Last Updated On"></asp:Label>
        </td>
        <td runat="server" id="td42">
            <asp:Label ID="lblLastUpdatedOn" runat="server"></asp:Label>
        </td>
        <td runat="server" id="td43">
            &nbsp;</td>
        <td runat="server" id="td44">
            &nbsp;</td>
    </tr>
    <tr runat="server" id="tr5">
        <td runat="server" id="td51">
            <asp:Label ID="lblTitl54" runat="server" Text="Name"></asp:Label>
        </td>
        <td runat="server" id="td52">
            <asp:HyperLink ID="hlCustomerName" runat="server">[hlCustomerName]</asp:HyperLink>
        </td>
        <td runat="server" id="td53">
            <asp:Label ID="lblTitle5" runat="server" Text="Phone No"></asp:Label>
        </td>
        <td runat="server" id="td54">
            <asp:HyperLink ID="hlCustomerPhone" runat="server">[hlCustomerPhone]</asp:HyperLink>
        </td>
    </tr>
    <tr runat="server" id="tr6">
        <td runat="server" id="td61">
            <asp:Label ID="lblTitle6" runat="server" Text="Email"></asp:Label>
        </td>
        <td runat="server" id="td62">
            <asp:HyperLink ID="hlCustomerEmail" runat="server">[hlCustomerEmail]</asp:HyperLink>
        </td>
        <td runat="server" id="td63">
            &nbsp;
        </td>
        <td runat="server" id="td64">
            &nbsp;
        </td>
    </tr>
</table>
<asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
<asp:HyperLink ID="hlStatus" runat="server"></asp:HyperLink>

<asp:HyperLink ID="hlIssuedBy" runat="server"></asp:HyperLink>
