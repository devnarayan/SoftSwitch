<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketWizard.aspx.cs" Inherits="CCEstore.TicketWizard"
    MasterPageFile="~/MainService.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <script type="text/javascript">
    </script>
    <table width="700px">
     <tr>
            <td colspan="2" class="heading">
                <asp:Label ID="Label4" runat="server" Text="Open New Ticket" 
                    meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 100%" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 100%">
                           
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td class="main" style="height: 586px" valign="top">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td>
                                                    &nbsp;<asp:Label ID="lblMessage" runat="server" EnableViewState="False" Font-Bold="True"
                                                        ForeColor="Red"></asp:Label><br />
                                                    <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                                    <table id="Table11" border="0" cellpadding="0" cellspacing="0" class="Table" height="20"
                                                        width="100%">
                                                        <tr>
                                                            <td>
                                                                <table id="tblQuestionTitle" runat="server" border="0" cellpadding="0" cellspacing="0" class="table" height="20"
                                                                    width="100%">
                                                                    <tr>
                                                                        <td width="20">
                                                                            <div align="center">
                                                                                <div align="center">
                                                                                    <img border="0" hspace="5" src="Images/m1.gif" /></div>
                                                                            </div>
                                                                        </td>
                                                                        <td class="letter">
                                                                            <table border="0" cellpadding="0" cellspacing="0" height="18" width="100%">
                                                                                <tr>
                                                                                    <td align="left" class="top">
                                                                                        <div align="left">
                                                                                            <span class="PageTitle">
                                                                                                <asp:Label ID="lblQuestionTitle" runat="server" Font-Bold="true" Text="Please select the reason for creating ticket"></asp:Label></span></div>
                                                                                    </td>
                                                                                    <td align="right" class="top" >
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" id="table19">
                                            <tr>
                                                <td> 
                                                    <asp:RadioButtonList ID="ddlQuestions" runat="server" CellPadding="5">
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel runat="server" ID="pnl" Visible="false">
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox TextMode="MultiLine" Visible="false" Rows="10" Columns="100" runat="server"
                                                        ID="txtinfo"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td id="tdfinalstep" runat="server" visible="false">
                                                    <table border="0" cellpadding="5" cellspacing="5">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label1" Text="Subject" runat="server" />
                                                            </td>
                                                            <td colspan="3">
                                                                <asp:TextBox runat="server" ID="txtSubject" Width="400" />
                                                            </td>
                                                        </tr>
                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                                                        <ContentTemplate>
                                                        <tr>
                                                            <td>
                                                                <asp:Label Text="Priority" runat="server" />
                                                            </td>
                                                            <td colspan="3">
                                                                <WebCtlIpsmarx:RadComboBox ID="ddlPriority" runat="server" AutoPostBack="true">
                                                                    <Items>
                                                                    </Items>
                                                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                                                </WebCtlIpsmarx:RadComboBox><br />
                                                                <asp:Label ID="lblPriorityDesc" runat="server" ForeColor="Red"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label2" Text="Data Collected" runat="server" />
                                                            </td>
                                                            <td colspan="3">
                                                                <asp:Label ID="lblCollectedData" Text="" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr id="tradditionalinfo" runat="server">
                                                            <td>
                                                                <asp:Label ID="Label3" Text="Additional Information" runat="server" />
                                                            </td>
                                                            <td colspan="3">
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
                                                            <td align="left" class="fontnormal">
                                                                <asp:Label ID="lblName4" runat="server" Text="Attachments"></asp:Label>
                                                            </td>
                                                            <td align="left" colspan="3">
                                                                <WebCtlIpsmarx:RadUpload ID="radUploads" runat="server" ControlObjectsVisibility="AddButton,RemoveButtons"
                                                                    InitialFileInputsCount="1" MaxFileInputsCount="5" Skin="Vista" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="fontnormal">
                                                            </td>
                                                            <td align="left" colspan="3">
                                                                <asp:Label ID="lblipsmarxtext" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>                                                        
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="3" cellspacing="3" style="width: 100%">
                                                        <tr>
                                                            <td style="width: 100px; text-align: center">
                                                                <asp:Button ID="btnBack" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                                                                    BorderWidth="1px" CssClass="Button" Font-Bold="True" Font-Names="Arial" Font-Size="9pt"
                                                                    TabIndex="7" Text="Back" Width="100px" OnClientClick="history.back(); return false;"
                                                                    Enabled="False" />
                                                            </td>
                                                            <td style="width: 100px">
                                                                <asp:Button ID="btnNext" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                                                                    BorderWidth="1px" CssClass="Button" Font-Bold="True" Font-Names="Arial" Font-Size="9pt"
                                                                    TabIndex="7" Text="Next" Width="100px" />
                                                                <asp:Button ID="btnSubmitTicket" runat="server" BackColor="White" BorderColor="Black"
                                                                    BorderStyle="Solid" BorderWidth="1px" CssClass="Button" Font-Bold="True" Font-Names="Arial"
                                                                    Font-Size="9pt" TabIndex="7" Text="Submit Ticket" Width="100px" Visible="false" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <asp:HiddenField ID="hidID" runat="server" />
                <asp:HiddenField ID="hidPath" runat="server" />
                <input type="hidden" id="myhidden" value="bk" />
            </td>
            <td align="right" style="width: 100%" valign="top">
        </tr>
    </table>
</asp:Content>
