<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="CustomerHome.aspx.cs" Inherits="CCEstore.CustomerHome"
    MasterPageFile="MainService.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table width="100%">
                    <tr>
                        <td colspan="4" class="heading">
                            <asp:Label ID="lblTitle" runat="server" Text="Quick Account Summary"></asp:Label>
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
                            <strong>
                                <asp:Label ID="lblAccountInfo" runat="server" Text="Assigned DID"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr style="text-align:center">
                        <td>
                            <asp:ListBox ID="lbAssignedDID" runat="server" Width="200px" Height="100px" ></asp:ListBox>
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
                
                <strong><asp:Label ID="lblLDActivity" runat="server" Text="Last Day Activity"></asp:Label></strong>
                <table style="width: 70%; text-align:center">
                    <tr>
                        <td>
                            <asp:Label ID="lblTotalCalls" runat="server" Text="Total Calls"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTotalCalls" runat="server" Enabled="false" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTotalMininutes" runat="server" Text="Total Minutes"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTotalMinutes" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTotalCost" runat="server" Text="Total Cost($)"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTotalCost" runat="server" Enabled="false"></asp:TextBox>
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
                
                <strong><asp:Label ID="lblLWActivity" runat="server" Text="Last Week Activity"></asp:Label></strong>
                <table style="width: 70%; text-align:center">
                    <tr >
                        <td>
                            <asp:Label ID="lblLWTotalCalls" runat="server" Text="Total Calls"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLWTotalCalls" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLWTotalMinutes" runat="server" Text="Total Minutes"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLWTotalMinutes" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLWTotalCost" runat="server" Text="Total Cost($)"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLWTotalCost" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                
                
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft"></div>
    </div>
</div>
    
</asp:Content>