<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CardDetail.ascx.cs" Inherits="CCEstore.CardDetail" %>
<table width="100%" border="1" cellpadding="5" cellspacing="0" bgcolor="#ffffff">
                      <tr>
                        <td class="fontnormal"><strong> Serial Number: </strong></td>
                        <td class="fontnormal"><asp:Label id="lblserial" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black">Label</asp:Label>
                          </td>
                        <td class="fontnormal"><strong> Pin Number: </strong></td>
                        <td>
                            <strong> </strong>
                            <asp:Label id="lblpin" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black">Label</asp:Label></td>
                      </tr>
                      <tr style="font-size: 8pt">
                        <td class="fontnormal"><strong> Initial Balance: </strong></td>
                        <td class="fontnormal">
                            <asp:Label id="lblcredit" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black">Label</asp:Label></td>
                        <td class="fontnormal" style="font-weight: bold; font-size: 9pt; font-family: Arial"> Current Balance: </td>
                        <td>
                            <asp:Label id="lblbalance" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black">Label</asp:Label></td>
                      </tr>
                      <tr>
                        <td class="fontnormal"><strong> Expiration Date: </strong></td>
                        <td class="fontnormal">
                            <asp:Label id="lblExpDate" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black">Label</asp:Label></td>
                        <td class="fontnormal"><strong> Status: </strong></td>
                        <td>
                            <asp:Label id="lblStatus" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black">Label</asp:Label></td>
                      </tr>
                  </table>