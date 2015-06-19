<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImportSMSNumbers.aspx.cs"
    Inherits="CCEstore.ImportSMSNumbers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="css/CCEstore.css" rel="stylesheet" type="text/css">
<link href="css/MainServiceMaster.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/Style.css" />
<body>
    <script type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow)
                oWindow = window.radWindow;
            else if (window.frameElement.radWindow)
                oWindow = window.frameElement.radWindow;
            return oWindow;
        }
        function closeWindow() {
            var currentWindow = GetRadWindow();

            currentWindow.argument = "";
            currentWindow.Close();
        }

        function OnClientClose(oWnd, args) {
            __doPostBack('__Page', 'MyCustomArgument');
        }

    </script>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <WebCtlIpsmarx:RadAjaxManager runat="server">
        <AjaxSettings>
            <WebCtlIpsmarx:AjaxSetting AjaxControlID="ScriptManager1">
            </WebCtlIpsmarx:AjaxSetting>
        </AjaxSettings>
    </WebCtlIpsmarx:RadAjaxManager>
    <div id="bodycontent">
        <div id="accounttopbody">
            <table width="100%">
                <tr>
                    <td class="main_container">
                        <table width="100%">
                            <tr>
                                <td colspan="2" class="heading">
                                    <asp:Label ID="Label2" runat="server" Text="Upload SMS Phone Numbers"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="errorbar">
                                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <table id="Table4" align="center" border="0" cellpadding="5" cellspacing="0" class="tableblue"
                                        width="100%">
                                        <tr>
                                            <td class="top" style="width: 75px">
                                                <asp:Label ID="lblSrchFor" runat="server" Text="Select File"></asp:Label>
                                            </td>
                                            <td class="top" style="width: 200px">
                                                <asp:FileUpload ID="ruImportSMSFile" runat="server" />
                                            </td>
                                            <td class="top">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="top" style="width: 75px">
                                                <asp:Label ID="lblSrchFor0" runat="server" Text="Import Log"></asp:Label>
                                            </td>
                                            <td class="top" style="width: 200px">
                                                <asp:TextBox ID="txtLOG" runat="server" Height="100px" TextMode="MultiLine" Width="221%"></asp:TextBox>
                                            </td>
                                            <td class="top">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="100%" colspan="3">
                                                <table width="100%" style="border-style: none">
                                                    <tr>
                                                        <td width="50%">
                                                            <div align="center">
                                                                <asp:Button ID="btnImport" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                                                                    BorderWidth="1px" CssClass="btn_style" meta:resourcekey="btnSearchResource1"
                                                                    Text="Import" Width="100px" OnClick="btnImport_Click" />
                                                            </div>
                                                        </td>
                                                        <td width="50%">
                                                            <div align="center">
                                                                <input id="Button1" type="button" class="btn_style" value="Close" style="width: 93px"
                                                                    onclick="closeWindow()" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="trDetail" runat="server">
                                <td width="100%">
                                    <WebCtlIpsmarx:RadGrid ID="dgDetail" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None">
                                        <HeaderContextMenu Skin="Office2007">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </HeaderContextMenu>
                                        <MasterTableView CommandItemDisplay="Bottom">
                                            <CommandItemTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                            </CommandItemTemplate>
                                        </MasterTableView>
                                        <PagerStyle Mode="Slider" />
                                        <FilterMenu Skin="Office2007">
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </FilterMenu>
                                        <ClientSettings EnableRowHoverStyle="True">
                                            <Selecting AllowRowSelect="True" />
                                        </ClientSettings>
                                    </WebCtlIpsmarx:RadGrid>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
