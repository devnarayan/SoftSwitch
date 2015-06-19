<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIPTrumkingDID.aspx.cs"
    Inherits="CCEstore.SIPTrumkingDID" MasterPageFile="MainService.master" %>

<%@ Register TagPrefix="uc" TagName="AssignedDID" Src="~/Controls/SipTrunking/wucSIPtrunkingAssignedDID.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestEventHandler);

        var senderID;
        function BeginRequestHandler(sender, args) {
            alert('tet  ')
            var elem = args.get_postBackElement();
            senderID = elem.id;

        }
        function EndRequestEventHandler(sender, args) {
            alert('test')
            if (senderID == "ctl00_cphMain_btnSearch" || senderID == "ctl00_cphMain_dgDID_ctl00")
                scrollTo(0, screen.height);
            else if (senderID != "ctl00_cphMain_ddlSearchBy")
                scrollTo(0, 0)
        }
    </script>
    <div class="module" style="width: 700px">
        <asp:Label ID="lblError" runat="server" EnableViewState="false" Font-Bold="True"
            ForeColor="Red"></asp:Label>
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <asp:Panel ID="pnlAssignedDID" runat="server" meta:resourcekey="pnlSearchResource1">
                    <uc:AssignedDID ID="ucSIPTrunkingAssignedDID" runat="server">
                    </uc:AssignedDID>
                </asp:Panel>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    <div style="width: 700px" runat="server" id="divExtraDID">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%;">
                            <br />
                            <table class="toptitle" height="18" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td colspan="4" class="heading">
                                        <strong>
                                            <asp:Label ID="lblManageConf" runat="server" Text="Purchase Additional DID"></asp:Label></strong>
                                    </td>
                                    <td class="top" align="right">
                                    </td>
                                </tr>
                            </table>
                            <WebCtlIpsmarx:RadGrid ID="rgGroupNames" runat="server" AllowPaging="True" AllowSorting="True"
                                AllowMultiRowEdit="True" GridLines="None" Skin="Sunset" AutoGenerateColumns="False">
                                <HeaderContextMenu Skin="Office2007">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </HeaderContextMenu>
                                <MasterTableView CommandItemDisplay="Bottom" DataKeyNames="GroupID" EditMode="InPlace">
                                    <Columns>
                                        <WebCtlIpsmarx:GridBoundColumn Visible="True" DataField="GroupName" SortExpression="GroupName"
                                            ReadOnly="True" HeaderText="Group Name">
                                        </WebCtlIpsmarx:GridBoundColumn>
                                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="ExtraDID" HeaderText="No. Of DID">
                                            <ItemTemplate>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <WebCtlIpsmarx:RadNumericTextBox ID="txtDID" runat="server" Culture="English (United States)"
                                                    MaxLength="4" MaxValue="10" MinValue="0" Width="100px" meta:resourcekey="txtUsageLimitResource1">
                                                    <NumberFormat DecimalDigits="0" GroupSizes="5" />
                                                </WebCtlIpsmarx:RadNumericTextBox>
                                                <asp:Label Text="(max." runat="server" Visible='<%#Convert.ToString(Eval("TotalDIDCanBeBought")) != "-1" %>' />
                                                <asp:Label ID="lblMaxDID" Text='<%#Eval("TotalDIDCanBeBought") %>' runat="server"
                                                    Visible='<%#Convert.ToString(Eval("TotalDIDCanBeBought")) != "-1" %>'></asp:Label>
                                                <asp:Label ID="Label2" Text=")" runat="server" Visible='<%#Convert.ToString(Eval("TotalDIDCanBeBought")) != "-1" %>' />
                                                <asp:Label ID="lblGroupID" Text='<%#Eval("GroupID") %>' runat="server" Visible="false"></asp:Label>
                                                <asp:Label ID="lblGroupName" Text='<%#Eval("GroupName") %>' runat="server" Visible="false"></asp:Label>
                                            </EditItemTemplate>
                                        </WebCtlIpsmarx:GridTemplateColumn>
                                    </Columns>
                                    <CommandItemTemplate>
                                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                    </CommandItemTemplate>
                                </MasterTableView>
                                <PagerStyle Mode="Slider" />
                                <FilterMenu Skin="Office2007">
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </FilterMenu>
                            </WebCtlIpsmarx:RadGrid>
                            <br />
                            <table class="toptitle" height="18" cellspacing="0" cellpadding="0" width="100%"
                                border="0">
                                <tr>
                                    <td colspan="4" class="heading">
                                        <asp:Button Text="Buy DID" runat="server" ID="btnPurchaseDID" />
                                    </td>
                                    <td class="top" align="right">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
    <div style="width: 700px" runat="server" id="divCanNotBuyDIDText">
        <div>
            <div class="content">
                <asp:Label Text="** Note:- Please note that you can not purchase additional DIDs when DIDs not available or if the number of DIDs permitted on the package group has reached the limit."
                    ForeColor="Red" Font-Size="12px" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
