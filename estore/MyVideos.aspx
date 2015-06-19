<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyVideos.aspx.cs" Inherits="CCEstore.MyVideos"
    MasterPageFile="~/MainService.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <WebCtlIpsmarx:RadWindowManager ID="rwmMain" runat="server" Width="630" Height="400" Modal="True" Skin="Default" SkinsPath="~/RadControls/Window/Skins" DestroyOnClose="true">   
    <Windows>  
        <WebCtlIpsmarx:RadWindow ID="rwVideoWindow" runat="server" Width="630" Height="400" Modal="True" Skin="Default" SkinsPath="~/RadControls/Window/Skins" DestroyOnClose="true" />  
    </Windows>  
</WebCtlIpsmarx:RadWindowManager>  

    <script type="text/javascript">
        function OpenVideo(url) {

            var oManager = GetRadWindowManager();

            var oWin = oManager.Open(url, 'rwVideoWindow');
            oWin.Width = 630;
            oWin.Height = 400;
            oWin.Center();
            return false;

        }
    </script>
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]>
            <v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt">
            <![endif]-->
            <div class="content">
                <asp:Panel ID="pnlSearch" runat="server" meta:resourcekey="pnlSearchResource1">
                    <table style="table-layout: fixed;">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td colspan="2" class="heading">
                                            <asp:Label ID="lblTitle" runat="server" Text="My Videos" meta:resourcekey="lblTitleResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <WebCtlIpsmarx:RadTabStrip ID="rtsMain" runat="server" AutoPostBack="true" meta:resourcekey="rtsMainResource1"
                                                Font-Size="Medium" CausesValidation="false" EnableEmbeddedSkins="true">
                                            </WebCtlIpsmarx:RadTabStrip>
                                        </td>
                                    </tr>
<tr>
                                                            <td style="height: 15px;">
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:DataList ID="dlsGroup" runat="server" BackColor="WhiteSmoke" BorderStyle="None"
                                                BorderWidth="0px" CellPadding="0" Font-Size="Large" RepeatColumns="1" RepeatDirection="Horizontal"
                                                Width="100%">
                                                <HeaderTemplate>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table width="100%" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td style="color: white; height: 30px; background-color: gray">
                                                                <a id="aShowHide" onclick='OpenVideo(&#39;<%# DataBinder.Eval(Container.DataItem, "URL") %>&#39;);' style="cursor:hand;text-decoration: underline;">
                                                                    <%# DataBinder.Eval(Container.DataItem,"LinkName") %></a>
                                                                <br />
                                                                <asp:Label ID="lblID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"LinkDescription") %>'
                                                                    Visible="true" Font-Bold="True" Font-Size="9pt"></asp:Label>
                                                                <br />
                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 20px;">
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#939FB0"></HeaderStyle>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="No videos in this category"
                                                Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"
                                                meta:resourcekey="lblErrorResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">
                                            &nbsp;
                                        </td>
                                        <td width="70%" style="font-size: large">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <!--[if IE]>
            </v:roundrect>
            <![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
