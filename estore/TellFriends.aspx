<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TellFriends.aspx.cs" Inherits="CCEstore.TellFriends"
    MasterPageFile="mainService.master" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <table width="680px">
        <tr>
            <td colspan="2">
                <asp:Literal ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="heading" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Tell Friends" 
                    meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="width: 182px">
                <asp:Label Text="Email Address" ID="lblemail" runat="server" 
                    meta:resourcekey="lblemailResource1"></asp:Label>
                <asp:Label Text="(use comma for multiple addresses)" ID="Label3" runat="server" 
                    meta:resourcekey="Label3Resource1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" TextMode="MultiLine" runat="server" CssClass="textbox"
                    Height="69px" Width="371px" meta:resourcekey="txtemailResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 182px">
                <asp:Label Text="Email Subject" ID="lblemail0" runat="server" 
                    meta:resourcekey="lblemail0Resource1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="textbox" Width="371px" 
                    meta:resourcekey="txtSubjectResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 182px">
                <asp:Label Text="Your personal message" ID="Label2" runat="server" 
                    meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
            <td>
                <WebCtlIpsmarx:RadEditor Height="300px" Width="98%" ToolsFile="~/DataFiles/XML/BasicTools.xml"
                    EditModes="Design" ID="radBody" runat="server" Skin="Telerik" 
                    EnableResize="False" meta:resourcekey="radBodyResource1">
                    <CssFiles>
                        <WebCtlIpsmarx:EditorCssFile Value="" />
                    </CssFiles>
                    <Content>
                    

                    Hi, <br> I am using abc's service for long distance calls...you should also try !!!
                    
                   

                    </Content>
                </WebCtlIpsmarx:RadEditor>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div align="center">
                    <asp:Button ID="btnSend" runat="server" CssClass="Button" Text="Send" 
                        Width="234px" onclick="btnSend_Click" meta:resourcekey="btnSendResource1">
                    </asp:Button>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
