<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TicketComment.ascx.cs"
    Inherits="CCEstore.Controls.TicketComment" %>
<style type="text/css">
    *
    {
        margin: 0;
        padding: 0;
        vertical-align: middle;
    }
</style>
<table width="100%" cellpadding="0" border="0" cellspacing="0" runat="server" id="tblInfo">
    <tr id="tr0" runat="server">
        <td class="box" id="td0" runat="server" colspan="2">
            <asp:Label ID="lblTitle" runat="server" Text="Add a Comment" EnableTheming="True"></asp:Label>
        </td>
    </tr>
    <tr id="tr0555" runat="server">
        <td class="errorbar" colspan="2">
            <asp:Label ID="lblComError" runat="server" Font-Bold="True" Font-Italic="True" meta:resourcekey="lblErrorResource1"
                EnableViewState="False"></asp:Label>
        </td>
    </tr>
    <tr runat="server" id="tr1">
        <td>
            <asp:Label ID="Label1" Text="Comment" runat="server"></asp:Label>
        </td>
        <td runat="server" id="td11" colspan="1">
            <WebCtlIpsmarx:RadEditor Height="100" Width="98%" ToolsFile="~/DataFiles/XML/BasicTools.xml"
                EditModes="Design" ID="radBody" runat="server" Skin="Telerik" EnableResize="false">
                <CssFiles>
                    <WebCtlIpsmarx:EditorCssFile Value="" />
                </CssFiles>
                <Content>
                </Content>
            </WebCtlIpsmarx:RadEditor>
        </td>
    </tr>
    <tr id="trholdtickets" runat="server" visible="false">
        <td>
            &nbsp;
        </td>
        <td>
            <asp:CheckBox ID="chkKeepTicket" runat="server" Text="Keep this ticket in my ongoing tickets" />
        </td>
    </tr>
    <tr id="trassignedto" runat="server">
        <td>
            <asp:Label ID="lblNotePrivacy0" Text="Assigned To" runat="server"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlUsers" runat="server" AutoPostBack="True" Height="56px"
                Width="250px">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr id="trprivacy" runat="server">
        <td>
            <asp:Label ID="lblNotePrivacy" Text="Note Privacy" runat="server"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkNotePrivacy" runat="server" Text="Make Private" />
        </td>
    </tr>
    <tr id="trmycannedreply" runat="server">
        <td>
            <asp:Label ID="Label2" Text="My Canned Reply" runat="server"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlMyCannedReplies" runat="server" AutoPostBack="True"
                Height="56px" Width="500px">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr id="trglobalcannedreply" runat="server">
        <td>
            <asp:Label ID="Label3" Text="Global Canned Reply" runat="server"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlGlobalCannedReplies" runat="server" AutoPostBack="True"
                Width="500px">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr id="trcategory" runat="server">
        <td>
            <asp:Label ID="Label5" Text="Category" runat="server"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlCategory" runat="server" AutoPostBack="True"
                Width="500px">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr id="trticketstatus" runat="server">
        <td valign="top">
            <asp:Label ID="Label4" Text="Ticket Status" runat="server"></asp:Label>
        </td>
        <td valign="top">
            <WebCtlIpsmarx:RadComboBox ID="ddlUserDefinedTicketStatus" EnableViewState="true"
                runat="server" Height="100px">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblNotePrivacy1" Text="Attachments" runat="server"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadUpload ID="radUploads" runat="server" InitialFileInputsCount="1"
                Skin="Vista" ControlObjectsVisibility="AddButton,RemoveButtons" MaxFileInputsCount="5" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
        <td>
            <table width="50%">
                <tr>
                    <td>
                        <asp:Button ID="btnAddComment" runat="server" Text="Add Comment" />
                    </td>
                    <td>
                        <asp:Button ID="btnDiscard" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<asp:CheckBox ID="chkRepeatTicketCount" runat="server" Visible="false" Text="Increment Return Ticket Count" />