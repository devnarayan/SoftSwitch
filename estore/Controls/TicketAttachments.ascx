<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TicketAttachments.ascx.cs" Inherits="CCEstore.Controls.TicketAttachments" %>
<table width="100%" cellpadding="0" border="0" cellspacing="0" runat="server" id="tblInfo">
    <tr id="tr0" runat="server">
        <td class="box" id="td0" runat="server">
            <asp:Label ID="lblTitle" runat="server" Text="Attachments "></asp:Label>
        </td>
    </tr>
    <tr runat="server" id="trviewattachments">
        <td runat="server" id="td11">
            <asp:DataList ID="dlsAttachments" runat="server" Width="100%">
                <ItemTemplate>
                    <table cellpadding="5" cellspacing="3" border="0" width="100%">
                        <tr>
                            <td>
                                <asp:LinkButton ID="lAttachment" Text='<%# DataBinder.Eval(Container.DataItem,"FileName") %>'
                                    runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"FileName") %>'
                                    OnClick="lAttachment_Click"></asp:LinkButton>
                                Uploaded By:
                                <asp:Label ID="lblValue" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Staff") %>'></asp:Label>
                                on
                                <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"UploadDate") %>'></asp:Label>
                                &nbsp;<asp:CheckBox ID="chkRemove" runat="server" Text="Remove" />
                                <asp:Label ID="lblAttachmentId" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem,"AttachmentID") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
