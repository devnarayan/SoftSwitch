<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="CustomerSettings.aspx.cs" Inherits="CCEstore.CustomerSettings" MasterPageFile="~/MainService.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table style="width: 100%">
                    <tr>
                        <td colspan="4" class="heading">
                            <strong>
                                <asp:Label ID="lblEditSettings" runat="server" Text="Edit Settings"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Label ID="lblVoicemailEnable" runat="server" Text="Voicemail Enable"></asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbVoicemailEnable" runat="server" Width="142px">
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                    </tr>
                    <tr></tr><tr></tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMailboxLogin" runat="server" Text="Mailbox Login"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMailboxLogin" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblMailboxPassword" runat="server" Text="Mailbox Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMailboxPassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr></tr><tr></tr>
                    
                    <tr>
                        <td>
                            <asp:Label ID="Label50" runat="server" ForeColor="Black">Phone Number</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFollowMePhone" runat="server" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblTimeOut" runat="server" ForeColor="Black">Time Out(sec.)</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTimeOut" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr></tr><tr></tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblForwardOption" runat="server" ForeColor="Black">Forward Option</asp:Label>
                        </td>
                        <td>
                            <WebCtlIpsmarx:RadComboBox ID="rcbForwardOption" runat="server" Width="142px">
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </WebCtlIpsmarx:RadComboBox>
                        </td>
                        <td>
                            <asp:ListBox ID="lbPhoneList" runat="server" Width="140px" Height="100px"></asp:ListBox>
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" Width="75px" /><br /><br />
                            <asp:Button ID="btnRemove" runat="server" Text="Remove" />
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
                            <table style="text-align: center; width: 100%;">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="Button" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!--[if IE]></v:roundrect><![endif]-->
                        <div class="ft">
                        </div>
                    </div>
                </div>
                
</asp:Content>