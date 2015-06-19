<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuNewTicket.ascx.cs"
    Inherits="CCEstore.wuNewTicket" %>
<asp:PlaceHolder runat="server" ID="TextBoxesHere">
    <table align="center" border="0" cellpadding="2" cellspacing="0" width="400px" id="tblMain"
        runat="server">
        <tr height="30px">
            <td class="fontnormal" colspan="5" align="center">
                <table border="0" cellpadding="2" cellspacing="0" width="100%" height="30px">
                    <tr>
                        <td width="100%" class="heading">
                            <asp:Label ID="Label7" runat="server" Text="Open New Support Ticket" meta:resourcekey="Label7Resource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <!-- <hr /> -->
                    </tr>
                    <tr runat="server" id="trrdptext">
                        <td>
                            <asp:Label ID="Label4" ForeColor="Blue" Text="Note:Starting 7.2.0 release, IPsmarx has removed its account on your server and platform and we no longer have any kind of access to your r server. Therefore, you need to create an account on your server so we can login to your server and you need to create an account on your IPsmarx platform so we can login to your softswitch and troublehoot the issue. Please note that you SHOULD NOT share your administrator password with us and the username SHOULD NOT be ipsmarx." runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td colspan="5" align="left">
                <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
            </td>
        </tr>
        <tr id="trversion">
            <td>&nbsp;
            </td>
            <td>
                <asp:Label Text="Version" runat="server" />
            </td>

            <td colspan="3">
                <WebCtlIpsmarx:RadComboBox ID="ddlVersion" runat="server" Width="160px" meta:resourcekey="ddlServicesResource1" AutoPostBack="true">

                    <CollapseAnimation Duration="200" Type="OutQuint" />
                    <Items>
                        <WebCtlIpsmarx:RadComboBoxItem Text="Select Software Version" Value="0" />
                        <WebCtlIpsmarx:RadComboBoxItem Text="Version 6" Value="6" />
                        <WebCtlIpsmarx:RadComboBoxItem Text="Lower than 7.2.0" Value="7L" />
                        <WebCtlIpsmarx:RadComboBoxItem Text="7.2.0 and above " Value="7" />
                        <WebCtlIpsmarx:RadComboBoxItem Text="Octa" Value="8" />
                    </Items>

                </WebCtlIpsmarx:RadComboBox>
            </td>
        </tr>
        <tr id="trversiontext" runat="server" visible="false">
            <td>&nbsp;
            </td>


            <td colspan="4">
                <br />
                <asp:Label ForeColor="Blue" Text="Note:You are currently running on a version that is no longer supported by IPsmarx. We have previously sent you notifications that as of October 24, 2014, Version 6 and below are no longer supported. Please contact your Account Manager to upgrade and renew your support plan." runat="server" />
            </td>
        </tr>

        <tr style="height: 40px" id="trRDPCredentialsHeader" runat="server" visible="false">
            <td>&nbsp;
            </td>
            <td colspan="4">
                <asp:Label Text="Server Remote Desktop Login Details(RDP):" Font-Bold="true" runat="server" />
            </td>
        </tr>

        <tr id="trRDPCredentials" runat="server" visible="false">
            <td>&nbsp;
            </td>
            <td>
                <asp:Label ID="Label2" Text="Username" runat="server" /><span style="color: red">(*)</span>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="TextBox" Visible="true" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label3" Text="Password" runat="server" /><span style="color: red">(*)</span>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="TextBox" Visible="true" Width="200px"></asp:TextBox><asp:Label ID="Label5" Text="(min 8 chars)" runat="server" />
            </td>
        </tr>
        <tr style="height: 40px" id="trGUICredentialsHeader" runat="server" visible="false">
            <td>&nbsp;
            </td>
            <td colspan="4">
                <asp:Label ID="Label6" Text="IPsmarx admin interface Login details: :" Font-Bold="true" runat="server" />
                <a href="Remotedesktopaccess.pdf" style="color: red; font-size: 13px; font-weight: bold">Click here for instructions</a>
            </td>
        </tr>
        <tr id="trGUICredentials" runat="server" visible="false">
            <td>&nbsp;
            </td>
            <td>
                <asp:Label ID="Label8" Text="Username" runat="server" /><span style="color: red">(*)</span>
            </td>
            <td>
                <asp:TextBox ID="txtGUIUsername" runat="server" CssClass="TextBox" Visible="true" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label9" Text="Password" runat="server" /><span style="color: red">(*)</span>
            </td>
            <td>
                <asp:TextBox ID="txtGUIPassword" runat="server" CssClass="TextBox" Visible="true" Width="200px"></asp:TextBox><asp:Label ID="Label10" Text="(min 8 chars)" runat="server" />
            </td>
        </tr>



        <tr style="height: 25px;">
            <td width="10%"></td>
            <td align="left" class="fontnormal" width="30%"></td>
            <td width="70%" align="left" colspan="3">
                <asp:Label Text="" ID="lblPriorityDesc" ForeColor="Red" runat="server" />
            </td>
        </tr>
        <tr>
            <td width="10%"></td>
            <td align="left" class="fontnormal" width="30%">
                <asp:Label ID="lblName0" runat="server" Text="Subject/Title(*)"></asp:Label>
            </td>
            <td width="70%" align="left" colspan="3">
                <asp:TextBox ID="txtSubject" runat="server" CssClass="TextBox" Visible="true" Width="600px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="10%"></td>
            <td align="left" class="fontnormal">
                <asp:Label ID="lblName1" runat="server" Text="Details(*)"></asp:Label>
            </td>
            <td align="left" colspan="3">
                <WebCtlIpsmarx:RadEditor ID="txtBody" runat="server" EnableResize="false" Skin="Telerik"
                    ToolsFile="~/DataFiles/XML/BasicTools.xml" Width="600px">
                    <CssFiles>
                        <WebCtlIpsmarx:EditorCssFile Value="" />
                    </CssFiles>
                    <Content>
                                                        
                    </Content>
                </WebCtlIpsmarx:RadEditor>
            </td>
        </tr>
        <tr>
            <td width="10%"></td>
            <td align="left" class="fontnormal">
                <asp:Label ID="lblName4" runat="server" Text="Attachments"></asp:Label>
            </td>
            <td align="left" colspan="3">
                <WebCtlIpsmarx:RadUpload ID="radUploads" runat="server" ControlObjectsVisibility="AddButton,RemoveButtons"
                    InitialFileInputsCount="1" MaxFileInputsCount="5" Skin="Vista" />
                <span style="font-size: 9px">Note: File types allowed are .gif,.pdf, .jpg, .jpeg, .csv,
                    .xls , .zip , .doc</span>
            </td>
        </tr>
        <tr>
            <td width="10%"></td>
            <td align="left" class="fontnormal">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
            <td align="left" colspan="3">
                <br />
                <asp:Label ID="lblipsmarxtext" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="10%"></td>
            <td></td>
            <td align="left" colspan="3">
                <asp:Button ID="btnTicket" runat="server" CssClass="Button" Text="Submit Ticket"
                    meta:resourcekey="btnResetResource1" />
            </td>
        </tr>
    </table>
</asp:PlaceHolder>
