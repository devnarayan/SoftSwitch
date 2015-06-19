<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PhoneConfig.ascx.cs" Inherits="CCEstore.Controls.PhoneConfig" %>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
    <tr>
        <td class="subtitle">
            <asp:Label ID="lblTitle" runat="server" Text="General" meta:resourcekey="lblSellBuyPackResource1"></asp:Label>
        </td>
    </tr>
    <tr style="height: 75px">
        <td>
            <table border="0" style="border: 0px !important" cellpadding="5" width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" CssClass="textbox" runat="server" Height="20px" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword"  Text="Password" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword"  CssClass="textbox" runat="server" Height="20px" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                 <tr id="trver" runat="server" visible="false">
                    <td>
                        <asp:Label ID="lblPassword0" Text="Version" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVersion" CssClass="textbox" runat="server" Height="20px" 
                            Width="270px" BackColor="#E4E4E4" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr id="trLicKey" runat="server">
                    <td>
                        <asp:Label ID="lblPassword1" Text="License" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLicKey" CssClass="textbox" runat="server" Height="20px" 
                            Width="270px" BackColor="#E4E4E4" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAttachement1" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads1" runat="server" ControlObjectsVisibility="None"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista" AllowedFileExtensions=".png"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo1" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAttachement2" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads2" runat="server" ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo2" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAttachement3" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads3" runat="server" ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista" 
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo3" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAttachement4" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads4" runat="server" ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista" 
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo4" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAttachement5" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads5" runat="server" 
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista" 
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo5" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr> 
                 <tr runat="server" id ="triphone120" visible="false">
                    <td>
                        <asp:Label ID="lblAttachement6" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads6" runat="server" 
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista" 
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo6" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>     


                <tr id="Tr1" runat="server" >
                    <td>
                        <asp:Label ID="lblAttachement7" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads7" runat="server"
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo7" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr id="Tr2" runat="server" >
                    <td>
                        <asp:Label ID="lblAttachement8" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads8" runat="server"
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo8" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr id="Tr3" runat="server" >
                    <td>
                        <asp:Label ID="lblAttachement9" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads9" runat="server"
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo9" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr id="Tr4" runat="server" >
                    <td>
                        <asp:Label ID="lblAttachement10" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads10" runat="server"
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo10" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>
                <tr runat="server" id="trbackground2" visible="false">
                    <td>
                        <asp:Label ID="lblAttachement11" runat="server" Text="Attachments"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadUpload ID="radUploads11" runat="server"
                            ControlObjectsVisibility="None" AllowedFileExtensions=".png"
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista"
                            Height="22px" />
                        <asp:HyperLink ID="imgLogo11" runat="server" Target="_blank">View Image File</asp:HyperLink>
                    </td>
                </tr>


                <tr id="trApk" runat="server">
                    <td>
                        <asp:Label ID="lblAttachementApk" runat="server" Text="Download .apk File"></asp:Label>
                    </td>
                    <td>
                            <asp:HyperLink ID="hlAPK" runat="server" Target="_blank">Download File</asp:HyperLink>
                    </td>
                </tr>



                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#0033FF"
                            Text="Note: File should only be in .png format"></asp:Label>
                    </td>
                </tr>



                 <tr id="trPrivacyPolicy" runat="server">
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Privacy Policy"></asp:Label>
                    </td>
                    <td>
                        <WebCtlIpsmarx:RadEditor ID="txtPrivacyPolicy" runat="server" Skin="Telerik" EnableResize="false" Height="300px"
                            Width="800px" CssClass="text-align:left" ToolsFile="~/DataFiles/XML/BasicTools.xml">
                            <Content>
                            </Content>
                        </WebCtlIpsmarx:RadEditor>
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>
                        <WebCtlIpsmarx:RadUpload ID="radUploadPakFile" runat="server" 
                            ControlObjectsVisibility="None" 
                            InitialFileInputsCount="1" MaxFileInputsCount="1" Skin="Vista" 
                            Height="22px" Visible="False" />
                            