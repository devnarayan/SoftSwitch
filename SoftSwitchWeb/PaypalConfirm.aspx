<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMaster.master" AutoEventWireup="true" CodeFile="PaypalConfirm.aspx.cs" Inherits="PaypalConfirm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Payment Confirmation || Download Setup
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="section odd">
        <!--start content-->
        <div class="content clearfix">
            <!--section title--><br /><br /><br />
            <div class="section-title">
                <h2>
                    Download Setup</h2>
            </div>
            <!--end section title-->
            <p>
                Please Keep this <b>Serial Key</b> to install this setup.</p>
            <asp:TextBox ID="txtSerialKey" runat="server" Height="30px" Width="200px" BackColor="Brown"
                BorderColor="Gray" BorderWidth="2px" BorderStyle="Dashed" Font-Bold="true" Enabled="false"
                ForeColor="Wheat"></asp:TextBox>
            <br />
            <br />
            <a href="Scriptword©.exe" class="submit submitTheme" target="_blank"><i class="fa fa-download fa-2x">
            </i>&nbsp;&nbsp; Download</a>&nbsp;&nbsp;
            <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2">
                        <table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td height="26">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td height="33" valign="middle" align="center" style="font-size: medium; font-weight: bold;"
                                    bgcolor="#e31e24" class="OP08">
                                    Payment Confirmation Details
                                </td>
                            </tr>
                            <tr bgcolor="#F3F3F3" style="height: 300px;">
                                <td valign="top">
                                    <table width="700px" align="center">
                                        <tr>
                                            <td width="50%" colspan="2" align="center" class="style5">
                                                <asp:Label ID="lblBalance" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr><td>Customer ID:</td><td><asp:Label ID="txtCustomerID" runat="server"></asp:Label></td></tr>
                                        <tr>
                                            <td width="50%">
                                                Payer First Name :
                                            </td>
                                            <td width="50%">
                                                <asp:Label ID="PayerFirstName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;Payer Last Name :
                                            </td>
                                            <td>
                                                <asp:Label ID="PayerLastName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Payer Email :
                                            </td>
                                            <td>
                                                <asp:Label ID="PayerEmail" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Gross Total :&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="GrossTotal" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Currency :
                                            </td>
                                            <td>
                                                <asp:Label ID="Currency" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>PDT Response</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblResponse" runat="server" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
