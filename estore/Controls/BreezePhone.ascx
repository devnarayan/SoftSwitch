<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BreezePhone.ascx.cs"
    Inherits="CCEstore.Controls.BreezePhone" %>
<%@ Register Src="~/Controls/PhoneConfig.ascx" TagName="BreezeDev" TagPrefix="uc" %>
<style type="text/css">
    .style1 {
        width: 100%;
    }
</style>
<table cellpadding="0" cellspacing="0" border="1" width="670px">
    <tr>
        <td>
            <asp:Label ID="lblTitle" runat="server" Text="General" meta:resourcekey="lblSellBuyPackResource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="errorbar">
            <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
        </td>
    </tr>
    <tr>
        <td>
            <table border="0" style="border: 0px !important" cellpadding="5" width="100%">
                <tr>
                    <td colspan="3">
                        <table border="0" id="tblcustoInfo" runat="server" cellpadding="0" cellspacing="0"
                            visible="false">
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="lblName1" Text="Customer Name(*)" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" CssClass="TextBox" runat="server" Height="20px" Width="270px"
                                        ToolTip="Please enter customer full name"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="lblName7" Text="Customer Email(*)" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" CssClass="TextBox" runat="server" Height="20px" Width="270px"
                                        ToolTip="Please enter customer's email address"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="lblName8" Text="Customer Phone(*)" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPhone" CssClass="TextBox" runat="server" Height="20px" Width="270px"
                                        ToolTip="Please enter customer's phone"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="lblName4" Text="Application Description" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAppDescription" CssClass="TextBox" runat="server" Height="20px"
                                        Width="270px" ToolTip="Application description"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="lblName5" Text="Keyword" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtKeyword" CssClass="TextBox" runat="server" Height="20px" Width="270px"
                                        ToolTip="Key words to be used when searching for the app on Apple Store and Android Market"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="lblName9" Text="Primary Color Code" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPrimaryColorCode" CssClass="TextBox" runat="server" Height="20px" Width="270px"
                                        ToolTip="Please provide the HEX code for primary color of the application"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Font-Size="10pt" ForeColor="Blue" Text="Please provide the HEX code for primary color of the application"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="style1" width="100%" cellspacing="3" cellpadding="3">
                            <tr>
                                <td>&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                                <td colspan="2" class="heading">IPsmarx Use Only
                                </td>
                            </tr>
                            <tr style="height: 30px">
                                <td>
                                    <asp:Label ID="lblApplicationName" Text="Application Name" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAppName" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblName" Text="Bundle ID" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtBundleName" runat="server" CssClass="textbox" Width="150px" BackColor="#E4E4E4"
                                        Wrap="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 30px">
                                <td>
                                    <asp:Label ID="lblApplicationName1" Text="Server IP" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIP" runat="server" CssClass="textbox" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblApplicationName0" Text="Version" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtVersion" runat="server" CssClass="textbox" Width="150px" BackColor="#E4E4E4"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 30px">
                                <td>
                                    <asp:Label ID="lblApplicationName3" Text=" URL" runat="server"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txtCompanyHomePage" runat="server" CssClass="textbox" Width="350px"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="7pt" ForeColor="#0033FF"
                                        Text="Note: Company home page should be fully functional<br> to get the app approved"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label4" runat="server" Text="About Us Text"></asp:Label>
                                </td>
                                <td>
                                    <WebCtlIpsmarx:RadEditor ID="txtAboutUs" runat="server" Skin="Telerik" EnableResize="false" Height="300px"
                                        Width="800px" CssClass="text-align:left" ToolsFile="~/DataFiles/XML/BasicTools.xml">
                                        <Content>
                                        </Content>
                                    </WebCtlIpsmarx:RadEditor>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="trTestAccount" runat="server">
                    <td colspan="3">
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <tr>
                                <td class="subtitle">
                                    <asp:Label ID="lblTitle0" runat="server" Text="Test Account" meta:resourcekey="lblSellBuyPackResource1"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 75px">
                                <td>
                                    <table border="0" style="border: 0px !important" cellpadding="5" width="100%">
                                        <tr>
                                            <td class="style1">
                                                <asp:Label ID="lblName0" Text="Username" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox" Width="170px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style1">
                                                <asp:Label ID="lblApplicationName4" Text="Password" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPassword" runat="server" Width="170px" CssClass="textbox" Enabled="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="trIphone" runat="server">
                    <td colspan="3">
                        <uc:BreezeDev ID="ucIphoneDev" runat="server" PhoneType="IPhone" Visible="true" />
                    </td>
                </tr>
                <tr id="trAndroid" runat="server">
                    <td colspan="3">
                        <uc:BreezeDev ID="ucAndroidDev" runat="server" PhoneType="Android" Visible="true" />
                    </td>
                </tr>
                <tr runat="server" visible="false">
                    <td class="style2">
                        <asp:Label ID="lblApplicationName2" Text="DNS" CssClass="textbox" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDNS" runat="server" Width="170px"></asp:TextBox>
                    </td>
                    <td valign="top">&nbsp;
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr bgcolor="#999999" style="border-style: none">
        <td style="border-style: none">
            <table border="0" cellpadding="3" cellspacing="0" bgcolor="#999999" style="border: 0px !important"
                runat="server" width="500px">
                <tr>
                    <td align="center" bgcolor="#999999" style="height: 50px">
                        <div style="vertical-align: middle; text-align: center">
                            <asp:Button ID="btnCModify" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                                BorderWidth="1px" CssClass="btn_style" Enabled="False" TabIndex="14" Text="Modify"
                                OnClientClick="return confirm('Please make sure that all information you entered is correct. You would not be able to change the information once it is saved to our database.')"
                                Width="100px" />
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
