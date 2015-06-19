<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewInvoice.ascx.cs" Inherits="CCEstore.Controls.ViewInvoice" %>
  
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
          
        <table    border="0" cellspacing="0" width="100%">
            <tr>
                <td colspan="4" align="center">
                    <table border="0" cellpadding="2" cellspacing="0" width="100%" height="30px">
                        <tr >
                            <td width="100%"  class="heading">
                                
                                <asp:Label ID="Label7" runat="server" Text="Invoice History" 
                                    meta:resourcekey="Label7Resource1" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><hr /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="left">
                <td colspan="4">
                    <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Label></td>
            </tr>
            <tr>
                <td width="10%">
                </td>
                <td width="20%" class="fontnormal">
                    <asp:Label ID="Label9" runat="server" Text="Period From (*)" meta:resourcekey="Label9Resource1"></asp:Label></td>
                <td style="height: 20px" width="40%">
                    <WebCtlIpsmarx:RadDateTimePicker ID="txtFromDate" runat="server" Skin="Forest" 
                        Culture="English (United States)" meta:resourcekey="rdtpFromResource1">
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <Calendar Skin="Forest" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                            ViewSelectorText="x">
                        </Calendar>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <DateInput LabelCssClass="" Width="">
                        </DateInput>
                    </WebCtlIpsmarx:RadDateTimePicker>
                </td>
                <td width="50%">
                </td>
            </tr>
            <tr>
                <td width="10%">
                </td>
                <td align="left"   class="fontnormal" style="height: 24px" valign="middle">
                    <asp:Label ID="Label10" runat="server" Text="Period To (*)" meta:resourcekey="Label10Resource1"></asp:Label></td>
                <td   style="height: 24px">
                    <WebCtlIpsmarx:RadDateTimePicker ID="txtToDate" runat="server" Skin="Forest" 
                        Culture="English (United States)" meta:resourcekey="rdtpToResource1">
                        <TimePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <TimeView Culture="(Default)" CellSpacing="-1">
                        </TimeView>
                        <Calendar Skin="Forest" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False"
                            ViewSelectorText="x">
                        </Calendar>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" CssClass="" />
                        <DateInput LabelCssClass="" Width="">
                        </DateInput>
                    </WebCtlIpsmarx:RadDateTimePicker>
                </td>
                <td>
                    <asp:Button ID="btnDisplay" runat="server" CssClass="Button" OnClick="btnview_Click"
                        Text="Show" autopostback="true" meta:resourcekey="btnDisplayResource1" />
                </td>
            </tr>
            <tr valign="top">
                <td colspan="4">
                    <table bgcolor="#ffffff" border="0" cellpadding="3" cellspacing="1" width="100%">
                        <tr> 
                            <td bgcolor="#ffffff" class="fontnormal" width="100px">
                                </td>
                            <td bgcolor="#ffffff" class="fontnormal" width="100px">
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" style="width: 150px">
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" width="100px">
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" style="width: 100px">
                            </td>
                            <td bgcolor="#ffffff" class="fontnormal" >
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="4" >
                    <br />
                    <div >
                        <WebCtlIpsmarx:RadGrid ID="dgDetails" runat="server" AllowPaging="True" 
                            AllowSorting="True" GridLines="None" OnItemCommand="dgDetails_ItemCommand" 
                            OnItemDataBound="dgDetails_ItemDataBound" 
                            OnNeedDataSource="dgDetails_NeedDataSource" 
                            OnPageIndexChanged="dgDetails_PageIndexChanged" 
                            OnSelectedIndexChanged="dgDetails_SelectedIndexChanged" 
                            OnSortCommand="dgDetails_SortCommand" 
                            meta:resourcekey="dgDetailsResource1">
                            <HeaderContextMenu>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </HeaderContextMenu>
                            <PagerStyle Mode="Slider" />
                            <MasterTableView>
                                <Columns>
                                  
                                    <WebCtlIpsmarx:GridButtonColumn CommandName="1" ConfirmDialogType="RadWindow" 
                                          Text="" 
                                        UniqueName="column2" Visible="false" 
                                        meta:resourcekey="GridButtonColumnResource3" >
                                    </WebCtlIpsmarx:GridButtonColumn>
                                    <WebCtlIpsmarx:GridTemplateColumn HeaderText="From" UniqueName="TemplateColumn" 
                                        meta:resourcekey="GridTemplateColumnResource1">
                                        <ItemTemplate>
                                            <asp:RadioButton ID="optFrom" runat="server" AutoPostBack="True" 
                                                GroupName="optFrom" meta:resourcekey="optFromResource1" 
                                                OnCheckedChanged="optFrom_CheckedChanged" />
                                        </ItemTemplate>
                                    </WebCtlIpsmarx:GridTemplateColumn>
                                    <WebCtlIpsmarx:GridTemplateColumn HeaderText="To" UniqueName="TemplateColumn1" 
                                        meta:resourcekey="GridTemplateColumnResource2">
                                        <ItemTemplate>
                                            <asp:RadioButton ID="optTo" runat="server" AutoPostBack="True" 
                                                GroupName="optTo" meta:resourcekey="optToResource1" 
                                                OnCheckedChanged="optTo_CheckedChanged" />
                                        </ItemTemplate>
                                    </WebCtlIpsmarx:GridTemplateColumn>
                                </Columns>
                            </MasterTableView>
                            <FilterMenu>
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </FilterMenu>
                        </WebCtlIpsmarx:RadGrid>
                    </div>
                    <br />
                    &nbsp;
                     <table style="width: 100%" cellpadding="0" cellspacing="0" class = "tableblue">
                                                        <tr style="height:35px;">
                                                            <td class="dark">
                                                            </td>
                                                            <td style="text-align: center;" class="dark">&nbsp;</td>
                                                            <td class="dark" style="text-align: center"><asp:Button ID="btnEmailSelected" 
                                                                    runat="server" CssClass="btn_style" Text="Email Selected Invoices" 
                                                                    Width="143px" OnClick="btnEmailSelected_Click" 
                                                                    meta:resourcekey="btnEmailSelectedResource1" /></td>
                                                            <td style="text-align: center" class="dark">
                                                                <asp:Button ID="Button2" runat="server" CssClass="btn_style" 
                                                                    Text="Print Selected Invoices" Width="143px" OnClick="btnPrint_Click" 
                                                                    meta:resourcekey="Button2Resource1" />
                                                            </td>
                                                            <td class="dark" align="center">
                                                            </td>
                                                        </tr>
                                                    </table>
                    </td>
            </tr>
        </table>
      
    
             

    
    
    
 
