<%@ Page Language="C#" AutoEventWireup="False" EnableEventValidation="false" Codebehind="ManagePBXMenus.aspx.cs"
    Inherits="CCEstore.ManagePBXMenus" MasterPageFile="~/MainService.Master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);
        
        function EndRequestEventHandler(sender, args)
        {
            scrollTo(0,0)
        }
    </script>
    
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table style="width: 100%;">
                    <tr>
                        <td colspan="4" class="heading">
                            <asp:Label ID="lblTitle" runat="server" Text="Manage PBX Menus" 
                                meta:resourcekey="lblTitleResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" 
                                ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSchedules" runat="server" Text="Schedules" 
                                meta:resourcekey="lblSchedulesResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbSchedules" runat="server" Width="142px" 
                                AutoPostBack="True" meta:resourcekey="rcbSchedulesResource1" >
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Label ID="lblMenuName" runat="server" Text="Menu Name" 
                                meta:resourcekey="lblMenuNameResource1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMenuName" runat="server" 
                                meta:resourcekey="txtMenuNameResource1"></asp:TextBox>
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Label ID="lblSelectMenu" runat="server" Text="Select Menu" 
                                meta:resourcekey="lblSelectMenuResource1"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbSelectMenu" runat="server" Width="142px" 
                                meta:resourcekey="rcbSelectMenuResource1">
                                <collapseanimation duration="200" type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table id="tbActionsButton" runat="server" width="100%">
                    <tr style="text-align: center" runat="server">
                        <td runat="server">
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="Button" /><br />
                            <br />
                        </td>
                        <td runat="server">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="Button" /><br />
                            <br />
                        </td>
                        <td runat="server">
                            <asp:Button ID="btnModify" runat="server" Text="Modify" CssClass="Button" 
                                Enabled="False" /><br />
                            <br />
                        </td>
                        <td runat="server">
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="Button" 
                                Enabled="False" /><br />
                            <br />
                        </td>
                        <td runat="server">
                            <asp:Button ID="btnDeleteAll" runat="server" Text="Delete All" CssClass="Button" /><br />
                            <br />
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
            
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <strong>
                                <asp:Label ID="lblAllDefinedMenu" runat="server" Text="All Defined Menus" 
                                meta:resourcekey="lblAllDefinedMenuResource1"></asp:Label></strong>
                        </td>
                    </tr>
                    
                    <asp:TreeView ID="tvMenuItem" runat="server" 
                        meta:resourcekey="tvMenuItemResource1">
                    </asp:TreeView>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>

</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
