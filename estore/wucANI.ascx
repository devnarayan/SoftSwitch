<%@ Control Language="C#" AutoEventWireup="true" Codebehind="wucANI.ascx.cs" Inherits="CCEstore.wucANI" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tbody>
                <tr>
                    <td class="heading">
                        <asp:Label ID="Label1" runat="server" Text="Pinless Access" meta:resourcekey="Label1Resource1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <strong>
                            <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table>
                            <tbody>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label2" runat="server" Text="Telephone number (*)" CssClass="fontnormal"
                                            Width="139px" meta:resourcekey="Label2Resource1"></asp:Label>
                                    </td>
                                    <td align="left" >
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="textbox" Width="180px" meta:resourcekey="txtPhoneNoResource1"></asp:TextBox>
                                               
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="100">
                                        <asp:Button ID="btnAddPhone" OnClick="btnAddPhone_Click" runat="server" Text="Add"
                                            CssClass="Button" meta:resourcekey="btnAddPhoneResource1"></asp:Button>
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Button ID="btnDeletePhone" OnClick="btnDeletePhone_Click" runat="server" Text="Remove"
                                            CssClass="Button" CausesValidation="False" meta:resourcekey="btnDeletePhoneResource1"></asp:Button>
                                    </td>
                                    <td align="left">
                                        <asp:ListBox ID="lbxPhone" runat="server" Width="180px" meta:resourcekey="lbxPhoneResource1"></asp:ListBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
