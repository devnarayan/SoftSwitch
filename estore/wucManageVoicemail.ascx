<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucManageVoicemail.ascx.cs" Inherits="CCEstore.wucManageVoicemail" %>



<table width="100%" >
<tr>
    <td colspan="4" class="heading"> 
        <asp:Label ID="Label1" runat="server" Text="Manage Voicemail" 
            meta:resourcekey="Label1Resource1"></asp:Label>
    </td>
    
</tr>
<tr>
    <td colspan="4">
    <!-- <hr /> -->
        <asp:Label ID="lblError" runat="server" CssClass="error" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label></td>
</tr>
<tr>
    <td colspan="2" width="100px" class="fontnormal" >
    <!-- 2012.07.12  David Y   D-01267 -->
        <asp:Label ID="Label2" runat="server" Text="EXT " 
            meta:resourcekey="Label2Resource1" ></asp:Label>
    </td>
    <td>
        <WebCtlIpsmarx:RadComboBox ID="ddlDIDs" runat="server" 
            MaxHeight="150px" Width="250px" meta:resourcekey="ddlToCountryResource1">
            
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            
       </WebCtlIpsmarx:RadComboBox>
    </td>
    <td></td>
    <td></td>
</tr>

<tr>
    <td colspan="2" width="100px" class="fontnormal" >
        <asp:Label ID="Label3" runat="server" Text="Message Type" 
            meta:resourcekey="Label3Resource1"></asp:Label>
           
    </td>
    <td style="height: 23px">
        <WebCtlIpsmarx:RadComboBox ID="ddlMessageTypes" runat="server" 
            MaxHeight="150px" Width="250px" meta:resourceKey="ddlToCountryResource1" >
            
            <Items>
                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="All Messages" Value="All" 
                    meta:resourcekey="RadComboBoxItemResource1" />
                <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" 
                    Text="New Messages" Value="New" 
                    meta:resourcekey="RadComboBoxItemResource2" />
            </Items>
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
            
       </WebCtlIpsmarx:RadComboBox>    
    </td>
    <td style="height: 23px"></td>
    <td style="height: 23px"></td>
</tr>


<tr>
    <td colspan="4"> 
    <table id="Table1" align="center" border="0" cellpadding="10" cellspacing="0" width="90%">
                                        <tr>
                                            <td style="height: 21px; width: 50%">
                                                <div align="center">
                                                	<asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" 
                                                        Text="Display" CssClass="Button" meta:resourcekey="btnDisplayResource1"  />
                                                </div>
                                            </td>
                                            <td style="height: 21px;width: 50%">
                                                <div align="center">
													<asp:Button ID="btnDeleteSelected" runat="server" 
                                                        OnClick="btnDeleteSelected_Click" Text="Delete Selected" CssClass="Button" 
                                                        Width="110px" meta:resourcekey="btnDeleteSelectedResource1" />
                                                </div>
                                            </td>
                                        </tr>
</table>
    </td>
</tr>
<tr>
    <td colspan="4">
        <WebCtlIpsmarx:RadGrid ID="dgDetails" runat="server" GridLines="None" 
            OnLoad="dgDetails_Load" Skin="Sunset" 
            meta:resourcekey="dgDetailsResource1" AutoGenerateColumns="False" 
            onitemcommand="dgDetails_ItemCommand">
            
            
            <MasterTableView>
                <Columns>
                    <WebCtlIpsmarx:GridTemplateColumn  UniqueName="TemplateColumn1" 
                        meta:resourcekey="GridTemplateColumnResource1">
                        <HeaderTemplate>
                            <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="True" 
                                OnCheckedChanged="chkSelectAll_CheckChanged" 
                                meta:resourcekey="chkSelectAllResource1" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" 
                                meta:resourcekey="chkSelectResource1"/>
                        </ItemTemplate>
                    </WebCtlIpsmarx:GridTemplateColumn>

                    <WebCtlIpsmarx:GridTemplateColumn HeaderText="New"  
                        UniqueName="TemplateColumn2" meta:resourcekey="GridTemplateColumnResource2">
                        
                        <ItemTemplate>
                            <asp:CheckBox ID="chkNewFile" runat="server" Enabled="False" 
                                
                                Checked='<%# int.Parse(DataBinder.Eval(Container.DataItem, "NewFile").ToString())==1 %>' meta:resourcekey="chkNewFileResource1"
                            />
                        </ItemTemplate>
                    </WebCtlIpsmarx:GridTemplateColumn>

                    <WebCtlIpsmarx:GridBoundColumn DataField="From" HeaderText="From" 
                        UniqueName="column1" meta:resourcekey="GridBoundColumnResource1">
                    </WebCtlIpsmarx:GridBoundColumn>
                    <WebCtlIpsmarx:GridBoundColumn DataField="Date" HeaderText="Date" 
                        UniqueName="column2" meta:resourcekey="GridBoundColumnResource2">
                    </WebCtlIpsmarx:GridBoundColumn>
                    <WebCtlIpsmarx:GridBoundColumn DataField="FileName" HeaderText="FileName" 
                        UniqueName="column3" Visible="false" 
                        meta:resourcekey="GridBoundColumnResource3">
                    </WebCtlIpsmarx:GridBoundColumn>
                    
                    <WebCtlIpsmarx:GridBoundColumn DataField="Size" HeaderText="Length" 
                        UniqueName="column4" meta:resourcekey="GridBoundColumnResource4" >
                    </WebCtlIpsmarx:GridBoundColumn>
                    
                    <WebCtlIpsmarx:GridTemplateColumn 
                        UniqueName="TemplateColumn3" 
                        meta:resourcekey="GridTemplateColumnResource3">
                        <HeaderTemplate>
                            Listen
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbListen" Text="Listen" AutoPostBack="True" runat="server"
                            CommandName="Listen" meta:resourcekey="lbListenResource1"
                              />
                        </ItemTemplate>
                    </WebCtlIpsmarx:GridTemplateColumn>
                </Columns>
            </MasterTableView>
<HeaderContextMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

<FilterMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
        </WebCtlIpsmarx:RadGrid></td>
</tr>
</table>



