<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyInstallments.aspx.cs"
    MasterPageFile="mainService.master" Inherits="CCEstore.MyInstallments" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <table border="0" cellpadding="3" cellspacing="3" width="100%">
                    <tr>
                        <td colspan="4" class="heading">
                            <strong>
                                <asp:Label ID="lblManage" runat="server" Text="My Installments"></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <hr />
                            <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table id="Table12" border="0" cellpadding="0" cellspacing="0" class="table" width="100%">
                                <tr>
                                    <td class="subtitle" colspan="4">
                                        <asp:Label ID="Label8" runat="server" Text="Installment Details" meta:resourcekey="Label2Resource1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 150px">
                                        <asp:Label ID="Label9" runat="server" Text="From Date"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadDatePicker ID="txtFromDate" runat="server" Width="178px">
                                            <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                            </Calendar>
                                            <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                        </WebCtlIpsmarx:RadDatePicker>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 150px">
                                        <asp:Label ID="Label7" runat="server" Text="To Date"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadDatePicker ID="txtToDate" runat="server" Width="178px">
                                            <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                            </Calendar>
                                            <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                        </WebCtlIpsmarx:RadDatePicker>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 150px">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Button ID="btnview" runat="server" CssClass="Button" Text="Display" 
                                            Width="143px" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table width="100%">
                                <tr>
                                    <td style="width: 100%;">                                        
                                        <br />
                                        <WebCtlIpsmarx:RadGrid ID="rgGroups" runat="server" AllowPaging="True" AllowSorting="true"
                                            GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="false">
                                            <HeaderContextMenu Skin="Sunset">
                                                <CollapseAnimation Duration="200" Type="OutQuint" />
                                            </HeaderContextMenu>
                                            <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                                            <MasterTableView>
                                                <Columns>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="InstallmentID" HeaderText="ID" UniqueName="ID">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="Amount" HeaderText="Payment" UniqueName="Amount"
                                                        ItemStyle-Width="10%">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="DueDate" HeaderText="Due Date" UniqueName="DueDate"
                                                        DataFormatString="{0:MM/dd/yyyy}">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="PublicNote" HeaderText="Note" UniqueName="PublicNote">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridBoundColumn DataField="Status" HeaderText="Status" UniqueName="Status">
                                                    </WebCtlIpsmarx:GridBoundColumn>
                                                    <WebCtlIpsmarx:GridTemplateColumn HeaderText="" UniqueName="clmVoucher">
                                                        <ItemTemplate>
                                                            <asp:Button Text="Pay Online" ID="btnPayOnline" OnClick="btnPayOnline_Click" runat="server" CssClass="Button"
                                                                CommandArgument='<%# Eval("InstallmentID") %>'  />
                                                        </ItemTemplate>
                                                    </WebCtlIpsmarx:GridTemplateColumn>
                                                    <WebCtlIpsmarx:GridTemplateColumn HeaderText="" UniqueName="clmVoucher">
                                                        <ItemTemplate>
                                                            <asp:Button Text="Pay At Bank" ID="btnPayAtBank" OnClick="btnPayAtBank_Click" runat="server" CssClass="Button"
                                                                CommandArgument='<%# Eval("InstallmentID") %>' />
                                                        </ItemTemplate>
                                                    </WebCtlIpsmarx:GridTemplateColumn>
                                                </Columns>
                                            </MasterTableView>
                                            <FilterMenu Skin="Sunset">
                                                <CollapseAnimation Duration="200" Type="OutQuint" />
                                            </FilterMenu>
                                            <ClientSettings EnableRowHoverStyle="True">
                                            </ClientSettings>
                                        </WebCtlIpsmarx:RadGrid>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" id="tdBank" runat="server" visible="false">
                            <table cellpadding="3" cellspacing="3" style="width: 100%">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label10" runat="server" 
                                            Text="For any USD wire payment transfer, kindly refer to the following bank details for the IPsmarx account: "></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="subtitle" colspan="2">
                                        <asp:Label ID="Label11" runat="server" Text="For payments in US" 
                                            meta:resourcekey="Label2Resource1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label12" runat="server" Text="Company Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBankName0" runat="server" CssClass="TextBox" Width="175px" TabIndex="4"
                                            ReadOnly="True">IPsmarx Technology Inc.</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label3" runat="server" Text="Bank Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBankName" runat="server" CssClass="TextBox" Width="175px" TabIndex="4"
                                            ReadOnly="True">Bank Of America</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label13" runat="server" Text="Bank Address"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBankName1" runat="server" CssClass="TextBox" Width="288px" TabIndex="4"
                                            ReadOnly="True">8300 Greensboro Dr., Mclean, VA 22102</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAccountNumber" runat="server" CssClass="TextBox" Width="175px"
                                            TabIndex="4" ReadOnly="True">0041 2605 6921</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label14" runat="server" 
                                            Text="Routing Number (international wires)"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAccountNumber0" runat="server" CssClass="TextBox" Width="175px"
                                            TabIndex="4" ReadOnly="True">026009593</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label2" runat="server" Text="Swift Code"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSwiftCode" runat="server" CssClass="TextBox" Width="175px" TabIndex="4"
                                            ReadOnly="True">BOFAUS3N</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="subtitle" colspan="2">
                                        <asp:Label ID="Label15" runat="server" Text="For payments in Canada" 
                                            meta:resourcekey="Label2Resource1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label16" runat="server" Text="Company Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBankName2" runat="server" CssClass="TextBox" Width="175px" TabIndex="4"
                                            ReadOnly="True">IPsmarx Technology Inc.</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label17" runat="server" Text="Bank Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBankName3" runat="server" CssClass="TextBox" Width="175px" TabIndex="4"
                                            ReadOnly="True">Royal Bank</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label18" runat="server" Text="Bank Address"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBankName4" runat="server" CssClass="TextBox" Width="288px" TabIndex="4"
                                            ReadOnly="True">200 Bay Street, Toronto, ON M5J 2J5, Canada</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label19" runat="server" Text="Account Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAccountNumber1" runat="server" CssClass="TextBox" Width="175px"
                                            TabIndex="4" ReadOnly="True">00002-4073144</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label20" runat="server" Text="ABA Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAccountNumber2" runat="server" CssClass="TextBox" Width="175px"
                                            TabIndex="4" ReadOnly="True">021000021</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        <asp:Label ID="Label21" runat="server" Text="Swift Code"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSwiftCode0" runat="server" CssClass="TextBox" Width="175px" TabIndex="4"
                                            ReadOnly="True">ROYCCAT2</asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="background-color: #CCCCCC">
                                    <td style="width: 199px">
                                        <asp:Label ID="Label4" runat="server" Text="Date Paid"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadDatePicker ID="txtPaidDate" runat="server" Width="178px">
                                            <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                            </Calendar>
                                            <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                        </WebCtlIpsmarx:RadDatePicker>
                                        <br />
                                        <asp:Label ID="lblFormat" runat="server" Font-Italic="True" Text="* Please note that your account will be automatically disabled if the payment is not revieved at our bank in 2 business days"
                                            meta:resourcekey="lblFormatResource1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 199px">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:HiddenField ID="hfInstallmentId" runat="server" />
                                        <asp:Button ID="btnSubmitBank" runat="server" Text="Submit" CssClass="Button" Enabled="true" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;
                        </td>
                    </tr>
                    <asp:HiddenField ID="hfID" runat="server" />
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
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
