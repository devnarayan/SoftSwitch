<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallCenterQueueSubGroup.ascx.cs"
    Inherits="CCEstore.Controls.CallCenterQueueSubGroup" %>
<style type="text/css">
    .RadComboBox_Gray
    {
        vertical-align: bottom;
    }
    
    .RadComboBox_Gray
    {
        font: 11px verdana,sans-serif;
        color: #333;
    }
    
    .RadComboBox_Gray *
    {
        margin: 0;
        padding: 0;
    }
    
    .RadComboBox_Gray .rcbInput
    {
        font: 11px verdana,sans-serif;
        color: #333;
    }
    
    .style2
    {
        width: 132px;
    }
    .style3
    {
        width: 295px;
    }
    .style4
    {
        width: 187px;
    }
</style>
<script type="text/javascript">
        /* <![CDATA[ */
            var cancelDropDownClosing = false;
            
            function StopPropagation(e)
            {
                //cancel bubbling
                e.cancelBubble = true;
                if (e.stopPropagation)
                {
                    e.stopPropagation();
                }
            }

            function onDropDownClosing()
            {
                cancelDropDownClosing = false;
            }

            function onCheckBoxClick(chk)
            { 
                var combo = $find("<%= ddlExtension.ClientID %>");
                
                //prevent second combo from closing
                cancelDropDownClosing = true;
                //holds the text of all checked items
                var text = "";
                //holds the values of all checked items
                var values = "";
                //get the collection of all items
                var items = combo.get_items();
                //enumerate all items
                for (var i = 0; i < items.get_count(); i++)
                {
                    var item = items.getItem(i);
                    //get the checkbox element of the current item
                    var chk1 = $get(combo.get_id() + "_i" + i + "_chk1");
                    if (chk1.checked)
                    {
                        text += item.get_text() + "," ;
                        values += item.get_value() + ","; 
                    }
                }
                //remove the last comma from the string
                text = removeLastComma(text);
                values = removeLastComma(values);
             
                if (text.length > 0)
                {
                    //set the text of the combobox
                    combo.set_text(text);
                
                   
                }
                else
                {
                    //all checkboxes are unchecked
                    //so reset the controls 
                    combo.set_text(""); 
                    
                    
                }
            }

            //this method removes the ending comma from a string
            function removeLastComma(str)
            {
                return str.replace(/,$/,"");
            }



</script>
<table cellpadding="3" cellspacing="0" border="0" style="750">
    <tr>
        <td class="subtitle" colspan="5">
            <asp:Label ID="Label91" runat="server" Text="Call Center Queue Sub Group"></asp:Label>
        </td>
        <td class="subtitle">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" EnableViewState="false" meta:resourcekey="lblErrorResource1"></asp:Label>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr id="trgouppriority" runat="server">
        <td colspan="6">
            <table cellspacing="0" cellpadding="3">
                <tr>
                    <td bgcolor="#E4E4E4">
                        <asp:Label ID="Label95" runat="server" ForeColor="Black" Text="Sub Group Name"></asp:Label>
                    </td>
                    <td bgcolor="#E4E4E4">
                        <asp:Label ID="Label90" runat="server" ForeColor="Black" Text="Max. Ring Time (sec)"></asp:Label>
                    </td>
                    <td bgcolor="#E4E4E4">
                        &nbsp;
                    </td>
                    <td bgcolor="#E4E4E4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#E4E4E4" valign="top">
                        <asp:TextBox ID="txtSubGroupName" runat="server" MaxLength="100"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubGroupName"
                            ErrorMessage="*" ValidationGroup="agent">Name is required</asp:RequiredFieldValidator>
                    </td>
                    <td bgcolor="#E4E4E4" valign="top">
                        <WebCtlIpsmarx:RadNumericTextBox ID="txtMaxRingTime" runat="server" Culture="English (United States)"
                            MaxLength="4" MaxValue="30" MinValue="1" Value="30" Width="75px">
                            <NumberFormat DecimalDigits="0" GroupSizes="5" />
                        </WebCtlIpsmarx:RadNumericTextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMaxRingTime"
                            ErrorMessage="*" ValidationGroup="agent">Time is required</asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td bgcolor="#E4E4E4" valign="top">
                        <WebCtlIpsmarx:RadComboBox ID="ddlExtension" runat="server" Width="251px"
                            EmptyMessage="Select/Search Extension" HighlightTemplatedItems="true" MarkFirstMatch="true"
                            AllowCustomText="true" OnClientDropDownClosed="onDropDownClosing" Height="21px">
                            <ItemTemplate>
                                <div onclick="StopPropagation(event)" class="combo-item-template">
                                    <asp:CheckBox runat="server" ID="chk1" onclick="onCheckBoxClick(this)" />
                                    <asp:Label runat="server" ID="Label1" AssociatedControlID="chk1">
                                    <%# Eval("DescriptionExtension")%>
                                    </asp:Label>
                                </div>
                            </ItemTemplate>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </WebCtlIpsmarx:RadComboBox>
                        
                    </td>
                    <td bgcolor="#E4E4E4" valign="top">
                        <asp:Button ID="btnSaveSubGroup" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                            BorderWidth="1px" CssClass="btn_style" Text="Save" Width="75px" ValidationGroup="agent" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="4"><asp:Label ID="Label5" runat="server" ForeColor="#3366ff"
                                       Text="Note: Higher number is higher priority"></asp:Label></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr id="tragents" runat="server">
        <td colspan="6">
            <table cellspacing="0" cellpadding="3">
                <tr>
                    <td bgcolor="#E4E4E4" class="style3">
                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Agent"></asp:Label>
                    </td>
                    <td bgcolor="#E4E4E4">
                        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Priority"></asp:Label>
                    </td>
                    <td bgcolor="#E4E4E4" valign="middle">
                        <asp:Label ID="Label98" runat="server" ForeColor="Black" Text="Max Ring Time"></asp:Label>
                    </td>
                    <td bgcolor="#E4E4E4" class="style4">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#E4E4E4" valign="top" class="style3">
                        <WebCtlIpsmarx:RadComboBox ID="ddlAgent" runat="server" Width="250px">
                            <Items>
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Selected="True" Text="Disable" Value="0"
                                    Owner="ddlAgent" />
                                <WebCtlIpsmarx:RadComboBoxItem runat="server" Text="Enable" Value="1" Owner="ddlAgent" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </WebCtlIpsmarx:RadComboBox>
                        <br />
                    </td>
                    <td bgcolor="#E4E4E4" valign="top">
                        <WebCtlIpsmarx:RadNumericTextBox ID="txtAgentPriority" runat="server" Culture="English (United States)"
                            MaxLength="4" MaxValue="30" MinValue="0" Value="0" Width="75px">
                            <NumberFormat DecimalDigits="0" GroupSizes="5" />
                        </WebCtlIpsmarx:RadNumericTextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAgentPriority" Display="Dynamic"
                            ErrorMessage="*" ValidationGroup="agentpriority">Priority is required</asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td bgcolor="#E4E4E4" valign="top">
                        &nbsp;<WebCtlIpsmarx:RadNumericTextBox ID="txtAgentMaxRingTime" runat="server" 
                            Culture="English (United States)" MaxLength="4" MaxValue="1200" MinValue="1" 
                            Value="1" Width="75px">
                            <NumberFormat DecimalDigits="0" GroupSizes="5" />
                        </WebCtlIpsmarx:RadNumericTextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtAgentMaxRingTime" ErrorMessage="*" 
                            ValidationGroup="agentpriority" Display="Dynamic">Max Ring time is required</asp:RequiredFieldValidator>
                    </td>
                    <td bgcolor="#E4E4E4" class="style4" valign="top">
                        <asp:Button ID="btnSaveAgent" runat="server" BorderColor="#AAAABB" BorderStyle="Solid"
                            BorderWidth="1px" CssClass="btn_style" Text="Save" Width="75px" ValidationGroup="agentpriority" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4"><asp:Label ID="Label4" runat="server" ForeColor="#3366ff"
                                       Text="Note: Higher number is higher priority"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr id="trsubgruoptitle" runat="server">
        <td colspan="5" class="subtitle">
            <asp:Label ID="Label97" runat="server" Text="Sub Groups" Font-Bold="True" 
                Font-Italic="False"></asp:Label>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <WebCtlIpsmarx:RadGrid ID="rgAgentPriority" runat="server" AllowPaging="True" AllowSorting="True"
                GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="False">
                <HeaderContextMenu Skin="Sunset">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </HeaderContextMenu>
                <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False" />
                <MasterTableView DataKeyNames="PBXCallCenterSubGroupAgentID">
                    <Columns>
                        <WebCtlIpsmarx:GridBoundColumn DataField="PBXCallCenterSubGroupAgentID" HeaderText="ID"
                            UniqueName="PBXCallCenterSubGroupAgentID">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="Extension_ID" HeaderText="Name" UniqueName="Extension_ID">
                        </WebCtlIpsmarx:GridBoundColumn>
                        
                         <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3" meta:resourcekey="GridTemplateColumnResource1">
                            <HeaderTemplate>
                                Max. Ring Time
                            </HeaderTemplate>
                            <ItemTemplate>
                                <WebCtlIpsmarx:RadNumericTextBox ID="txtAgMaxRingTime" runat="server" Culture="English (United States)"
                                    Text='<%# DataBinder.Eval(Container.DataItem, ("MaxRingTime")) %>'
                                    MaxLength="4" MaxValue="1200" MinValue="1" Value="30" Width="40px">
                                    <NumberFormat DecimalDigits="0" GroupSizes="5" />
                                </WebCtlIpsmarx:RadNumericTextBox>
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>

                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3" meta:resourcekey="GridTemplateColumnResource1">
                            <HeaderTemplate>
                                Priority
                            </HeaderTemplate>
                            <ItemTemplate>
                                <WebCtlIpsmarx:RadNumericTextBox ID="txtAgPriority" runat="server" Culture="English (United States)"
                                    Text='<%# DataBinder.Eval(Container.DataItem, ("Priority")) %>'
                                    MaxLength="4" MaxValue="30" MinValue="1" Value="30" Width="40px">
                                    <NumberFormat DecimalDigits="0" GroupSizes="5" />
                                </WebCtlIpsmarx:RadNumericTextBox>
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="clmPriority">
                            <HeaderTemplate>
                                Delete
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtDelete" Text="Delete" AutoPostBack="True" runat="server" CommandArgument='<%# Eval("PBXCallCenterSubGroupAgentID")%>'
                                    CommandName="Delete" OnClientClick="return confirm('Are you sure, you want to delete this record?')" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                    </Columns>
                   
                </MasterTableView>
                <FilterMenu Skin="Sunset">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </FilterMenu>
                <ClientSettings EnableRowHoverStyle="true">
                </ClientSettings>
            </WebCtlIpsmarx:RadGrid>
            <WebCtlIpsmarx:RadGrid ID="rgSubgGroup" runat="server" AllowPaging="True" AllowSorting="True"
                GridLines="None" Skin="Sunset" Width="100%" AutoGenerateColumns="False">
                <HeaderContextMenu Skin="Sunset">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </HeaderContextMenu>
                <PagerStyle AlwaysVisible="True" Mode="NumericPages" Wrap="False"  />
                <MasterTableView DataKeyNames="PBXCallCenterQueueSubGroupID">
                    <Columns>
                        <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Select" UniqueName="column">
                        </WebCtlIpsmarx:GridButtonColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="PBXCallCenterQueueSubGroupID" HeaderText="ID"
                            UniqueName="PBXCallCenterQueueSubGroupID">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="SubGroupName" HeaderText="Name" UniqueName="SubGroupName">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridBoundColumn DataField="MaxRingTime" HeaderText="MaxRingTime" UniqueName="MaxRingTime">
                        </WebCtlIpsmarx:GridBoundColumn>
                         <WebCtlIpsmarx:GridBoundColumn  DataField="Extensions" HeaderText="Extensions" UniqueName="Extensions">
                        </WebCtlIpsmarx:GridBoundColumn>
                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn3" meta:resourcekey="GridTemplateColumnResource1">
                            <HeaderTemplate>
                                Move
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtUp" Text="Up" AutoPostBack="True" runat="server" CommandArgument='<%# Eval("GroupPriority")%>'
                                    CommandName="Up" />
                                <asp:LinkButton ID="lbtDown" Text="Down" AutoPostBack="True" runat="server" CommandArgument='<%# Eval("GroupPriority")%>'
                                    CommandName="Down" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn4">
                            <HeaderTemplate>
                                Delete
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtDelete" Text="Delete" AutoPostBack="True" runat="server" CommandArgument='<%# Eval("PBXCallCenterQueueSubGroupID")%>'
                                    CommandName="Delete" OnClientClick="return confirm('Are you sure, you want to delete this record?')" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                    </Columns>
                   
                </MasterTableView >
                <FilterMenu Skin="Sunset">
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </FilterMenu>
                <ClientSettings EnableRowHoverStyle="true">
                </ClientSettings>
            </WebCtlIpsmarx:RadGrid>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr id="trupdatebutton" runat="server">
                                    <td align="right" colspan="4">
                                        <asp:Button ID="btnUpdatePriorities" Text="Update" runat="server" />
                                    </td>
                                </tr>
    <tr>
        <td style="width: 125px">
            &nbsp;
        </td>
        <td class="style2">
            &nbsp;
        </td>
        <td style="width: 250px">
            &nbsp;
        </td>
        <td style="width: 125px">
            &nbsp;
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
</table>
