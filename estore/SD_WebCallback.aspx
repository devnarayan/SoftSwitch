<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_WebCallback.aspx.cs"
    Inherits="CCEstore.SD_WebCallback" MasterPageFile="mainService.master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="100%" cellpadding="5" cellspacing="5" border="0">
        <tr>
            <td colspan="2" class="heading">
                <asp:Label ID="Label1" runat="server" Text="Web Callback" 
                    meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <!-- <hr /> -->
                <asp:Label ID="lblInactive" runat="server" Text="Your account is Inactive" ForeColor="Red"
                    Visible="False" meta:resourcekey="lblInactiveResource1" />
                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                    meta:resourcekey="lblErrorResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label2" runat="server" Text="Your Number(*)" 
                    meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtSourcePhone" runat="server" CssClass="NotEditable" 
                    meta:resourcekey="txtSourcePhoneResource1"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" 
                    Text="(Please include Country Code (e.g. 14161234567)" 
                    meta:resourcekey="Label6Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label5" runat="server" Text="Destination Number" 
                    meta:resourcekey="Label5Resource1"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtDestinationPhone" runat="server" CssClass="NotEditable" 
                    meta:resourcekey="txtDestinationPhoneResource1"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" 
                    Text="(If the destination number is empty, system will ask you for destination)" 
                    meta:resourcekey="Label7Resource1"></asp:Label>
            </td>
        </tr>
        <tr id="trwebcallbackpin" runat="server">
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label9" runat="server" Text="Your Pin Number" 
                    meta:resourcekey="Label9Resource1"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtPinNo" runat="server" CssClass="NotEditable" 
                    meta:resourcekey="txtPinNoResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label8" runat="server" Text="Callback Status" 
                    meta:resourcekey="Label8Resource1"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="lblCallbackStatus" runat="server" 
                    meta:resourcekey="lblCallbackStatusResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnConnect" runat="server"  Text="Connect"
                    CssClass="Button" meta:resourcekey="btnDisplayResource1" 
                    onclick="btnConnect_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
    </table>
</asp:Content>
