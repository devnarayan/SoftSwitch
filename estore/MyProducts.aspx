<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProducts.aspx.cs" MasterPageFile="~/MainService.Master"
    Inherits="CCEstore.MyProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <WebCtlIpsmarx:RadWindowManager ID="rwmMain" runat="server" Width="630" Height="400"
        Modal="True" Skin="Default" SkinsPath="~/RadControls/Window/Skins" DestroyOnClose="true">
        <Windows>
            <WebCtlIpsmarx:RadWindow ID="rwVideoWindow" runat="server" Width="630" Height="400"
                Modal="True" Skin="Default" SkinsPath="~/RadControls/Window/Skins" DestroyOnClose="true" />
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

        function CheckAllDataGridCheckBoxes(aspCheckBoxID, checkVal) {

            re = new RegExp(aspCheckBoxID + '$')
            //generated control name starts with a colon

            for (i = 0; i < ctl00_cphMain_dlsGroup.all.length; i++) {

                elm = ctl00_cphMain_dlsGroup.all[i];

                if (elm.type == 'checkbox') {


                    if (re.test(elm.name)) {

                        elm.checked = checkVal

                    }
                }
            }
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
                                        <td colspan="2">
                                            <WebCtlIpsmarx:RadTabStrip ID="rtsMain" runat="server" AutoPostBack="true" meta:resourcekey="rtsMainResource1"
                                                Font-Size="Medium" CausesValidation="false" EnableEmbeddedSkins="true">
                                            </WebCtlIpsmarx:RadTabStrip>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 15px;">
                                            <asp:Label Text="" runat="server" ID="lblwelcome"  style='font-size:8.5pt;font-family:"Arial","sans-serif"' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" >
                                            <asp:Label ForeColor="#E47911" ID="Label3" runat="server" Text="See what other clients with  similar systems have purchased..."
                                                Style='font-weight: bold; font-size: 12.0pt; font-family: "Arial","sans-serif";
                                                color: #E47911'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 15px;">
                                            <br /> <asp:Label Text="Mark all the modules you are interested in and click submit at the bottom of the page to receive more information."
                                                runat="server" style='font-size:8.5pt;font-family:"Arial","sans-serif";
color:#2E3D47' ID="Label4" />
                                        </td>
                                    </tr>
                                    <tr>





                                        <td class="subtitle" colspan="2">
                                            <asp:Label ID="lblError" runat="server" Text="" EnableViewState="false" CssClass="error"
                                                Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="subtitle" colspan="2">
                                            <div align="right">
                                                <font style="font-size: 8pt">Check All </font>
                                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkRights',this.checked)" /></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:DataList ID="dlsGroup" runat="server" BorderStyle="None" BorderWidth="0px" CellPadding="0"
                                                Font-Size="Large" RepeatColumns="1" RepeatDirection="Horizontal" Width="100%">
                                                <HeaderTemplate>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table width="100%" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td style="height: 30px; background-color: #F0F0F0;">
                                                                <asp:CheckBox Text='<%# DataBinder.Eval(Container.DataItem,"Name") %>' ID="chkRights"
                                                                    Style='font-size: 10.5pt; font-family: "Arial","sans-serif"; color: #2E3D47;
                                                                    font-weight: bold' runat="server" />
                                                                <asp:Label ID="lblLockMangerID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"LockManagerID") %>'
                                                                    Visible="false" Font-Bold="True" Font-Size="9pt"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="lblID" runat="server" style='font-size:8.5pt;font-family:"Arial","sans-serif";
color:#2E3D47' Text='<%# DataBinder.Eval(Container.DataItem,"Description") %>'
                                                                    Visible="true" Font-Bold="false" Font-Size="9pt"></asp:Label>
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
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button Text="Submit" ID="btnSubmit" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox Text="Skip this page." ID="chkDontShow" AutoPostBack="true" runat="server" />
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
