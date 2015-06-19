<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true" CodeBehind="UpdatePackage.aspx.cs" Inherits="CCEstore.UpdatePackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">

    <div>

    <table width="100%" cellpadding="5" cellspacing="5" border="0">
        <tr>
            <td colspan="2" class="heading">
                <asp:Label ID="Label1" runat="server" Text="Download Software Update Package"
                    meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <!-- <hr /> -->
                <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                &nbsp;</td>
            <td align="left">

                <asp:Label ID="lblNoVersionNote0" runat="server" Text="Note: You must login to ticketing system from your server in order to download the update package." ForeColor="Red" meta:resourcekey="lblInactiveResource1" style="font-weight: 700" />

            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">
                <asp:Label ID="Label11" runat="server" Text="Available Version"
                    meta:resourcekey="Label5Resource1" style="font-weight: 700"></asp:Label>
            </td>
            <td align="left">
                <WebCtlIpsmarx:RadComboBox ID="ddlVersion7" runat="server" Width="160px" Visible="False">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                    <Items>
                        <WebCtlIpsmarx:RadComboBoxItem Text="Version 7.2.1" Value="7.2.1" />
                        <WebCtlIpsmarx:RadComboBoxItem Text="Version 7.2.2" Value="7.2.2" />
                    </Items>
                </WebCtlIpsmarx:RadComboBox>

                <WebCtlIpsmarx:RadComboBox ID="ddlVersion8" runat="server" Width="160px" Visible="False">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                    <Items>
                        <WebCtlIpsmarx:RadComboBoxItem Text="Version 8.0.1" Value="8.0.1" />
                    </Items>
                </WebCtlIpsmarx:RadComboBox>

                <asp:Label ID="lblNoVersionNote" runat="server" Text="No Available Version found" ForeColor="Red"
                    Visible="False" meta:resourcekey="lblInactiveResource1" />

            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td align="left" class="auto-style2">

                <asp:RadioButtonList ID="rblDownloadChoice" runat="server" RepeatDirection="Horizontal" Width="401px" Visible="False">
                    <asp:ListItem Value="Z" Selected="True">Zip FIle</asp:ListItem>
                    <asp:ListItem Value="E">Self Extract</asp:ListItem>
                </asp:RadioButtonList>

                <asp:Label ID="Label10" runat="server"
                    Text="Click on the link below to download the update software "
                    meta:resourcekey="Label6Resource1"></asp:Label>

            </td>
        </tr>
        <tr>
            <td class="fontnormal" style="width: 180px">&nbsp;</td>
            <td align="left">
               <%-- <asp:Panel ID="Panel1" Width="200px" runat="server">--%>
                    <asp:LinkButton ID="lbDownloadStart" runat="server" Font-Bold="True" ForeColor="#0066CC">Download</asp:LinkButton>
                <%--</asp:Panel>--%>
            </td>
        </tr>


        <tr>
            <td class="fontnormal" style="width: 180px">&nbsp;</td>
            <td align="left" style="color: #0066CC">
                <a href="IPsmarxSoftwareUpdateInstruction.pdf" style="color:#0066CC; font-weight:bold">Click here to download the instrunctions on how to update the software</a> </td>
        </tr>


        <tr>
            <td class="fontnormal" style="width: 180px">&nbsp;</td>
            <td align="left">
                <asp:Label ID="lblReady" runat="server" Enabled="false"
                    Text="Your file is ready to download"
                    meta:resourcekey="Label6Resource1" Visible="false"></asp:Label>
                &nbsp;
                    <asp:LinkButton ID="lbDownload" runat="server" Font-Bold="True" ForeColor="#0066CC" Enabled="False" Visible="false">Click Here</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:HiddenField ID="hfCusotmerId" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
    </table>
</div>
</asp:Content>
