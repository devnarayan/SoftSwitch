<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucConsole.ascx.cs" Inherits="CCEstore.wucConsole" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

    <table id="Table4" align="center"  border="0" cellpadding="2" cellspacing="0"
        width="100%" >

        <tr  height="30px">
            <td class="fontnormal" colspan="2" align="center">
                <table border="0" cellpadding="2" cellspacing="0" width="100%" height="30px" >
                    <tr >
                        <td  width="100%" class="heading">                                     
                            <asp:Label ID="Label7" runat="server" Text="Console" meta:resourcekey="Label7Resource1" ></asp:Label>                                       
                        </td>
                    </tr>
                    <tr>
                        <!-- <hr /> -->
                    </tr>
                </table>
            </td>
        </tr>
        <tr >
            <td colspan="2" align="left">
                <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" class="fontnormal" width="30%" colspan="2" >
                <asp:Label ID="Label2" runat="server" Text="Click the link below to download the Console." meta:resourcekey="Label2Resource1"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="The installation package will ask the IP of your PBX/Call Center server. Please get this information with the administrator." meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
        </tr>
        <tr><td colspan="2">&nbsp;</td></tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnDownload" runat="server" CssClass="Button" OnClick="btnDownload_Click"
                    Text="Download" meta:resourcekey="btnDownloadResource1" />
            </td>
        </tr>
    </table>
 
</ContentTemplate>
</asp:UpdatePanel>
