<%@ Control Language="C#" AutoEventWireup="true" Codebehind="wucResidentialCustomerSettings.ascx.cs"
    Inherits="CCEstore.wucResidentialCustomerSettings" %>
    

      
              <style type="text/css">


.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

                  .style1
                  {
                      width: 127px;
                  }

                  .style2
                  {
                      width: 221px;
                  }

              </style>
    

      
              <table style="width: 100%" cellpadding="2" cellspacing="1">
                <tr>
                    <td colspan="4" class="heading">
                        <asp:Label ID="lblTitle" runat="server" Text="Residential Service" 
                            meta:resourcekey="Label1Resource1" ></asp:Label></td>
                </tr> 
                
                <tr>
                    <td colspan="4">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" 
                                meta:resourcekey="lblErrorResource1" ></asp:Label>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td style="width: 125px">
                        <asp:Label ID="Label35" runat="server" Text="Sip Login" 
                            meta:resourcekey="Label35Resource1" ></asp:Label></td>
                    <td class="style2">
                        <asp:TextBox ID="txtPrefixSipUsername" runat="server" 
                            Enabled="False" CssClass="NotEditable" Width="30px" 
                            meta:resourcekey="txtPrefixSipUsernameResource1"></asp:TextBox><asp:TextBox ID="txtSIPLogin" runat="server" MaxLength="16" CssClass="NotEditable" onChange="txtMailboxLogin.value = txtusernameprefix.value + txtLogin.value;"
                            Width="150px" ReadOnly="True" meta:resourcekey="txtSIPLoginResource1" ></asp:TextBox></td>
                    <td style="width: 125px">
                        <asp:Label ID="Label83" runat="server" ForeColor="Black" Text="PIN" 
                            meta:resourcekey="Label83Resource1" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtResPIN" runat="server" CssClass="NotEditable" Width="150px" 
                            ReadOnly="True" meta:resourcekey="txtResPINResource1" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 125px; ">
                        <asp:Label ID="Label36" runat="server" Text="Password" 
                            meta:resourcekey="Label36Resource1" Visible="False" ></asp:Label></td>
                    <td class="style2">
                        <asp:TextBox ID="txtSIPPassword" runat="server" CssClass="textbox" 
                            Width="150px" meta:resourcekey="txtSIPPasswordResource1" Visible="False" MaxLength="16" ></asp:TextBox></td>
                    <td style="width: 125px; ">
                        <asp:Label ID="lblCell" runat="server" ForeColor="Black" Text="Cell Number" 
                             ></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="txtCell" runat="server" CssClass="textbox" Width="150px" 
                             ></asp:TextBox>
                        <asp:HiddenField ID="txtSipUserID" runat="server" EnableViewState="False" />
                    </td>
                </tr>
             
            </table>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                        Enabled="True" FilterType="Numbers" TargetControlID="txtRingTime">
                    </ajaxIPSmarx:FilteredTextBoxExtender>
                    <table style="width: 100%" cellpadding="2" cellspacing="1" id="tblVoiceMail" 
                        runat="server">
                        <tr runat="server">
                            <td colspan="4" class="subtitle" runat="server">
                                <asp:Label ID="lblVM" runat="server" Text="Voice Mail Settings" meta:resourcekey="lblVMResource1"></asp:Label></td>
                        </tr>
                        <tr runat="server">
                            <td style="width: 124px" runat="server">
                                <asp:Label ID="lbl2" runat="server" ForeColor="Black" meta:resourcekey="lbl2Resource1" >VoiceMail</asp:Label></td>
                            <td class="style2" runat="server">
                                <WebCtlIpsmarx:RadComboBox ID="ddlEnableVoiceMail" runat="server" 
                                    Width="153px" OnSelectedIndexChanged="ddlEnableVoiceMail_SelectedIndexChanged" 
                                    AutoPostBack="True" >
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Disable" Value="0"  />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1"  />
                                    </Items>
                                    
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                    
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td style="width: 125px" runat="server">
                                <asp:Label ID="Label43" runat="server" ForeColor="Black" meta:resourcekey="Label43Resource1"
                                    >Mailbox Password(*)</asp:Label>
                                </td>
                            <td runat="server">
                                <asp:TextBox ID="txtMailboxPass" runat="server" CssClass="textbox" 
                                    ></asp:TextBox>
                                </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server">
                                <asp:Label ID="Label40" runat="server" ForeColor="Black"  meta:resourcekey="Label40Resource1"
                                    >Email VoiceMail</asp:Label>
                            </td>
                            <td class="style2" runat="server">
                                <WebCtlIpsmarx:RadComboBox ID="ddlEmailVoiceMail" runat="server"
                                    Width="153px">
                                    <Items>
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Disable" Value="0" />
                                        <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" />
                                    </Items>
                                    <CollapseAnimation Duration="200" Type="OutQuint" />
                                </WebCtlIpsmarx:RadComboBox>
                            </td>
                            <td runat="server">
                                <asp:Label ID="Label42" runat="server" ForeColor="Black"  meta:resourcekey="Label42Resource1"
                                    >Max. Ring Time</asp:Label>
                            </td>
                            <td runat="server">
                                <asp:TextBox ID="txtRingTime" runat="server" CssClass="textbox" 
                                    ></asp:TextBox>
                            </td>
                        </tr>
                        
                      
                    </table>
                    &nbsp;
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="pnlCallFwdOption" runat="server" Width="100%" 
                        meta:resourcekey="pnlCallFwdOptionResource1" >
                        <asp:Panel ID="pnlFollowMe" runat="server" Width="100%" 
                            meta:resourcekey="pnlFollowMeResource1" >
                            <table style="width: 100%" cellpadding="2" border="0" cellspacing="1" >
                                <tr>
                                    <td colspan="4" class="subtitle">
                                        <asp:Label ID="lblFollowme" runat="server" Text="Call Forwarding Options" meta:resourcekey="lblFollowmeResource1" 
                                           ></asp:Label></td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 125px">
                                        <asp:Label ID="Label48" runat="server" ForeColor="Black" 
                                            meta:resourcekey="Label48Resource1" Text="Options" ></asp:Label></td>
                                    <td class="style2">
                                        <WebCtlIpsmarx:RadComboBox ID="ddlFollowMe" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="ddlFollowMe_SelectedIndexChanged" 
                                            Width="153px" meta:resourcekey="ddlFollowMeResource1">
                                            <Items>
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" 
                                                    meta:resourcekey="RadComboBoxItemResource1" />
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Always" Value="4" 
                                                    meta:resourcekey="RadComboBoxItemResource2" />
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="No Answer" Value="2" 
                                                    meta:resourcekey="RadComboBoxItemResource3" />
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="When Busy" Value="1" 
                                                    meta:resourcekey="RadComboBoxItemResource4" />
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                    <td style="width: 125px">
                                        <asp:Label ID="Label51" runat="server" ForeColor="Black" meta:resourcekey="Label51Resource2" 
                                            >Answer Time Out</asp:Label>
                                        </td>
                                    <td>
                                       
                                        <WebCtlIpsmarx:RadNumericTextBox ID="txtCallForwardingTimeOut" runat="server" 
                                            Culture="English (United States)" MaxValue="1000" MinValue="0" Value="10" 
                                            Width="150px" LabelCssClass="" 
                                            meta:resourcekey="txtCallForwardingTimeOutResource1">
                                            <NumberFormat DecimalDigits="0" GroupSeparator="" GroupSizes="6" 
                                                NegativePattern="n" />
                                        </WebCtlIpsmarx:RadNumericTextBox>
                                        <span>
                                        <asp:Label ID="Label80" runat="server" ForeColor="#0033FF" 
                                             
                                            style="font-size: xx-small" meta:resourcekey="Label80Resource1"></asp:Label>
                                        </span>
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 125px">
                                        <asp:Label ID="lblFollowMeStatus" runat="server" ForeColor="Black" 
                                            meta:resourcekey="lblFollowMeStatusResource1" Text="Follow Me 
                                        Status"></asp:Label>
                                    </td>
                                    <td class="style2">
                                        <WebCtlIpsmarx:RadComboBox ID="ddlFollowMeStatus" runat="server" 
                                            AutoPostBack="True" 
                                            onselectedindexchanged="ddlFollowMeStatus_SelectedIndexChanged" 
                                            Width="153px" meta:resourcekey="ddlFollowMeStatusResource1">
                                            <Items>
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Disable" Value="0" 
                                                    meta:resourcekey="RadComboBoxItemResource5" />
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" 
                                                    meta:resourcekey="RadComboBoxItemResource6" />
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                    <td style="width: 125px">
                                        <asp:Label ID="lblFollowMeOption" runat="server" ForeColor="Black" 
                                            meta:resourcekey="lblFollowMeOptionResource1" Text="Follow Me 
                                        Option"></asp:Label>
                                    </td>
                                    <td>
                                        <WebCtlIpsmarx:RadComboBox ID="ddlFollowMeOption" runat="server" 
                                            AutoPostBack="True" Width="153px" 
                                            meta:resourcekey="ddlFollowMeOptionResource1">
                                            <Items>
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" 
                                                    Text="Ring Sequential" Value="3" 
                                                    meta:resourcekey="RadComboBoxItemResource7" />
                                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Ring All" Value="8" 
                                                    Visible="False" meta:resourcekey="RadComboBoxItemResource8" />
                                            </Items>
                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                        </WebCtlIpsmarx:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="bottom">
                                        <asp:Label ID="Label50" runat="server" ForeColor="Black" 
                                            meta:resourcekey="Label50Resource1" Text="Phone Number " 
                                            ></asp:Label>
                                    </td>
                                    <td class="style2">
                                        <font size="1"><asp:Label ID="Label100" runat="server" ForeColor="Black" 
                                            meta:resourcekey="Label100Resource1" Text="Follow Me Numbers"></asp:Label><br />
                                        <asp:Label ID="Label200" runat="server" ForeColor="Black" 
                                            meta:resourcekey="Label200Resource1" Text="(Country Code +Area Code +Phone #)"></asp:Label><br /></font>
                                            <asp:TextBox ID="txtFollowMePhone" runat="server" CssClass="textbox" meta:resourcekey="txtFollowMePhoneResource1" 
                                                ></asp:TextBox>
                                    </td>
                                    <td valign="top">
                                        <asp:Label ID="lblFollowMeTimeOut" runat="server" ForeColor="Black" 
                                            meta:resourcekey="lblFollowMeTimeOutResource1" Text="Try Time Out"></asp:Label>
                                    </td>
                                    <td valign="top">
                                        <WebCtlIpsmarx:RadNumericTextBox ID="txtTimeOut" runat="server" 
                                            Culture="English (United States)" LabelCssClass="" meta:resourcekey="txtTimeOutResource1" 
                                            >
                                            <NumberFormat DecimalDigits="0" GroupSeparator="" GroupSizes="6" 
                                                NegativePattern="n" />
                                        </WebCtlIpsmarx:RadNumericTextBox>
                                        <span>
                                        <asp:Label ID="Label91" runat="server" ForeColor="#0033FF" meta:resourcekey="Label91Resource1" 
                                            ></asp:Label>
                                        </span></td>
                                </tr>
                               
                                <tr>
                                    <td style="width: 125px">
                                        <asp:Button ID="btnAddFollowMe" runat="server" CausesValidation="False" CssClass="Button"
                                            Text="Add" Width="75px" OnClick="btnAddFollowMe_Click" 
                                            meta:resourcekey="btnAddFollowMeResource1"  /><br />
                                        <br />
                                        <br />
                                        <asp:Button ID="btnRemovefollowMe" runat="server" CausesValidation="False" CssClass="Button"
                                            Text="Remove" Width="75px" OnClick="btnRemovefollowMe_Click" 
                                            meta:resourcekey="btnRemovefollowMeResource1"  /></td>
                                    <td class="style2">
                                        <asp:ListBox ID="lbxFollowMeNumbers" runat="server" Height="95px" onclick="showPhneNO(this)"
                                            Style="border-right: lightsteelblue 1px solid; border-top: lightsteelblue 1px solid;
                                            font-size: 11px; border-left: lightsteelblue 1px solid; color: navy; border-bottom: lightsteelblue 1px solid;
                                            font-family: verdana, arial" Width="150px" meta:resourcekey="lbxFollowMeNumbersResource1" 
                                            ></asp:ListBox>
                                        <br />
                                        <asp:ImageButton ID="btnUP" runat="server" BorderWidth="0px" CausesValidation="False"
                                            CssClass="button" Height="19px" ImageAlign="Left" ImageUrl="images/UpButton.gif"
                                            TabIndex="4" Text="MoveUP" Width="28px" Visible="False" 
                                            meta:resourcekey="btnUPResource1"  />
                                        &nbsp; &nbsp;  &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <asp:ImageButton ID="btnDown" runat="server" BorderWidth="0px" CausesValidation="False"
                                            CssClass="button" Height="19px" ImageUrl="images/DownButton.gif" TabIndex="4"
                                            Text="MoveDown" Width="28px" Visible="False" 
                                            meta:resourcekey="btnDownResource1"  /></td>
                                    <td style="width: 125px">
                                        &nbsp;<br />
                                        <br />
                                        <br />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Panel ID="pnlDID" runat="server" Width="100%" 
    meta:resourcekey="pnlDIDResource1" >
                <table style="width: 100%" cellpadding="2" cellspacing="1">
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label38" runat="server" 
                                Text="Assigned DIDs" style="font-weight: 700" 
                                meta:resourcekey="Label38Resource1"></asp:Label></td>
                    
                        <td align="left">
                        <asp:ListBox ID="lbxAssignedDID" runat="server" Height="95px" Style="border-right: lightsteelblue 1px solid;
                                border-top: lightsteelblue 1px solid; font-size: 11px; border-left: lightsteelblue 1px solid;
                                color: navy; border-bottom: lightsteelblue 1px solid; font-family: verdana, arial"
                                Width="150px" meta:resourcekey="lbxAssignedDIDResource1" ></asp:ListBox>
                        </td>
                    </tr>
                </table>
                
            </asp:Panel>
            <br />
            
            <table border="0" cellpadding="0" cellspacing="0" height="50" 
                width="100%">
                <tr>
                    <td colspan="4">
                    <div align="center">
                                        <asp:Button ID="btnRsApply" runat="server" CssClass="Button" 
                                            Text="Modify" Width="100px" OnClick="btnRsApply_Click" 
                                            meta:resourcekey="btnRsApplyResource1" /></div>
                    </td>
                
                </tr>
               
            </table>

      
      
      
