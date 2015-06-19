<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCardDetail.ascx.cs" Inherits="CCEstore.wucCardDetail" %>


      

  <table width="100%" border="1" cellpadding="5" cellspacing="0" bgcolor="#ffffff">
    <tr >
        <td align="center"  colspan="2" class="heading" >
            
            
                <asp:Label ID="Label1" runat="server" Text="Card Detail" meta:resourcekey="Label1Resource1" ></asp:Label>
            
        </td>
    </tr>
    
    </tr>
                      <tr>
                        <td class="fontStrong" width="160px" > 
                            <asp:Label ID="Label6" runat="server" Text="Current Balance" meta:resourcekey="Label6Resource1"></asp:Label>
                            <asp:Label ID="lblCurrencySymbol1" runat="server" Text="Label" meta:resourcekey="lblCurrencySymbol2Resource1"></asp:Label>
                            :
                            
                            </td>
                        <td class="fontnormal" width="160px" style="width: 320px" >
                            <asp:Label id="lblbalance" runat="server" 
                                meta:resourcekey="lblbalanceResource1" Text="Label" ></asp:Label>
                          </td>
                      </tr>
                      <tr>
                        <td class="fontStrong" width="160px" > 
                            <asp:Label ID="Label7" runat="server" Text="Status" meta:resourcekey="Label7Resource1"></asp:Label>:</td>
                        <td class="fontnormal" width="160px" style="width: 320px" >
                            <asp:Label id="lblStatus" runat="server" meta:resourcekey="lblStatusResource1" 
                                Text="Label" ></asp:Label>
                          </td>
                      </tr>
                      <tr>
                        <td class="fontStrong" width="160px" > 
                            <asp:Label ID="Label4" runat="server" Text="Expiration Date" meta:resourcekey="Label4Resource1"></asp:Label>:</td>
                        <td class="fontnormal" width="160px" style="width: 320px" >
                            <asp:Label id="lblExpDate" runat="server" 
                                meta:resourcekey="lblExpDateResource1" Text="Label" ></asp:Label>
                          </td>
                      </tr>
                      <%--<tr>
                        <td class="fontStrong" width="160px" > 
                            <asp:Label ID="Label2" runat="server" Text="Serial Number" meta:resourcekey="Label2Resource1"></asp:Label>:</td>
                        <td class="fontnormal" width="160px" ><asp:Label id="lblserial" runat="server" 
                                meta:resourcekey="lblserialResource1" Text="Label" ></asp:Label>
                          </td>
                        <td class="fontStrong" width="160px"> 
                            <asp:Label ID="Label5" runat="server" Text="Pin Number" meta:resourcekey="Label5Resource1"></asp:Label>:
                        </td>
                        <td width="160px">
                            
                            <asp:Label id="lblpin" runat="server" meta:resourcekey="lblpinResource1" 
                                Text="Label" ></asp:Label></td>
                      </tr>
                      <tr >
                        <td class="fontStrong"> 
                            <asp:Label ID="Label3" runat="server" Text="Initial Balance" meta:resourcekey="Label3Resource1"></asp:Label>
                            <asp:Label ID="lblCurrencySymbol1" runat="server" Text="Label" meta:resourcekey="lblCurrencySymbol1Resource1"></asp:Label>
                            :
                            </td>
                        <td class="fontnormal">
                            <asp:Label id="lblcredit" runat="server" meta:resourcekey="lblcreditResource1" 
                                Text="Label" ></asp:Label></td>
                        <td class="fontStrong" > 
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                      </tr>--%>
                      </table>
      

   

