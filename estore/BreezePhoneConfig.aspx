<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BreezePhoneConfig.aspx.cs"
    Inherits="CCEstore.BreezePhoneConfig" MasterPageFile="mainService.master" %>

<%@ Register TagPrefix="cc" TagName="BreezeConfig" Src="~/Controls/BreezePhone.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table style="width: 100%">
                    <tr>
                        <td class="heading">
                            <strong>
                                <asp:Label ID="lblManageIvr" runat="server" Text="Breeze Phone Configuration"></asp:Label></strong>
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <cc:BreezeConfig ID="ucBreezeConfig" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
