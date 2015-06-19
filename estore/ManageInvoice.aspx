<%@ Page language="c#" Codebehind="ManageInvoice.aspx.cs" AutoEventWireup="true"  meta:resourcekey="PageResource1" Inherits="CCEstore.ManageInvoice" Culture="auto" 
    UICulture="auto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Manage Invoices</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio 7.0">
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">

    <link href="css/Style.css" rel="stylesheet" type="text/css" />
	<link href="Css/form.css" rel="stylesheet" type="text/css" />

</head>
<body ms_positioning="GridLayout">

		<form id="MainForm" method="post" runat="server">
		               <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
                
             
           <script type="text/javascript" language="javascript">
 
        
        function confirm_delete()
			{
				if (confirm("Are you sure you want to delete the selected invoices ?")==true)
					return true;
				else
					return false;
			}

		
</script>
           
                <table cellspacing="0" cellpadding="0" width="100%">
                    <tr>
                        <td class="main_container">
                            
                                        <table cellspacing="0" cellpadding="0" width="100%">
                                            <tr>
                                                <td class="maintitle">
                                                    <asp:Label ID="Label6" runat="server" Text="Manage Invoices" meta:resourcekey="Label1Resource1"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="errorbar">
									<asp:label id="lblError" runat="server" Font-Bold="True" Font-Italic="True"></asp:label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                <table id="Table12" border="0" cellpadding="0" cellspacing="0" class="table" width="100%">
                                                   <tr>
                                                            <td class="subtitle" colspan="4">
                                                                <asp:Label ID="Label2" runat="server" Text="Invoice Details" meta:resourcekey="Label2Resource1"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    
                                                    <tr>
                                                        <td style="width: 150px">
                                                            <asp:Label ID="Label3" runat="server" Text="From Date"></asp:Label></td>
                                                        <td>
                                                                        <WebCtlIpsmarx:RadDatePicker ID="txtFromDate" runat="server" Width="178px">
                                                                            <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                                                            </Calendar>
                                                                            <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                                                        </WebCtlIpsmarx:RadDatePicker>
                                                                    </td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 150px">
                                                            <asp:Label ID="Label7" runat="server" Text="To Date"></asp:Label></td>
                                                        <td>
                                                                        <WebCtlIpsmarx:RadDatePicker ID="txtToDate" runat="server" Width="178px">
                                                                            <Calendar UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                                                            </Calendar>
                                                                            <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                                                        </WebCtlIpsmarx:RadDatePicker>
                                                                    </td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    
                                                </table>
                                                    <table style="width: 100%" cellpadding="0" cellspacing="0" class = "tableblue">
                                                        <tr style="height:35px;">
                                                            <td class="dark">
                                                            </td>
                                                            <td style="text-align: center;" class="dark">
                                                                </td>
                                                            <td class="dark" style="text-align: center">
                                                                <asp:Button ID="btnview" runat="server" CssClass="btn_style" Text="Display" Width="143px" OnClick="btnview_Click" /></td>
                                                            <td style="text-align: center" class="dark">
                                                                </td>
                                                            <td class="dark">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <WebCtlIpsmarx:RadGrid ID="dgDetails" runat="server" AllowPaging="True" AllowSorting="True" GridLines="None" OnNeedDataSource="dgDetails_NeedDataSource" OnPageIndexChanged="dgDetails_PageIndexChanged" OnSortCommand="dgDetails_SortCommand" OnSelectedIndexChanged="dgDetails_SelectedIndexChanged" OnItemDataBound="dgDetails_ItemDataBound" OnItemCommand="dgDetails_ItemCommand">
                                                        <HeaderContextMenu>
                                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                                        </HeaderContextMenu>
                                                        <PagerStyle Mode="Slider" />
                                                        <MasterTableView>
                                                            <Columns>
                                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Select" Text="Print" UniqueName="column">
                                                                </WebCtlIpsmarx:GridButtonColumn>
                                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Email" Text="Email" UniqueName="column1">
                                                                </WebCtlIpsmarx:GridButtonColumn>
                                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Delete" ConfirmText="Are you sure ?"
                                                                    ConfirmTitle="Manage Invoice" Text="Delete" UniqueName="column2" ConfirmDialogType="RadWindow">
                                                                </WebCtlIpsmarx:GridButtonColumn>
                                                                 <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="From">
                                                                        <ItemTemplate>
                                                                            <asp:RadioButton ID="optFrom" runat="server" AutoPostBack="True" GroupName="optFrom"
                                                                                OnCheckedChanged="optFrom_CheckedChanged" meta:resourcekey="optFromResource1" />
                                                                        </ItemTemplate>
                                                                    </WebCtlIpsmarx:GridTemplateColumn>
                                                                    <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn1" HeaderText="To">
                                                                        <ItemTemplate>
                                                                            <asp:RadioButton ID="optTo" runat="server" AutoPostBack="True" GroupName="optTo"
                                                                                OnCheckedChanged="optTo_CheckedChanged" meta:resourcekey="optToResource1" />
                                                                        </ItemTemplate>
                                                                    </WebCtlIpsmarx:GridTemplateColumn>
                                                            </Columns>
                                                        </MasterTableView>
                                                        <FilterMenu>
                                                            <CollapseAnimation Duration="200" Type="OutQuint" />
                                                        </FilterMenu>
                                                    </WebCtlIpsmarx:RadGrid><br />
                                                    <table style="width: 100%" cellpadding="0" cellspacing="0" class = "tableblue">
                                                        <tr style="height:35px;">
                                                            <td class="dark">
                                                            </td>
                                                            <td style="text-align: center;" class="dark"><asp:Button ID="btnDeleteSelected" runat="server" CssClass="btn_style" Text="Delete Selected Invoices" Width="143px" OnClick="btnDeleteSelected_Click" /></td>
                                                            <td class="dark" style="text-align: center"><asp:Button ID="btnEmailSelected" runat="server" CssClass="btn_style" Text="Email Selected Invoices" Width="143px" OnClick="btnEmailSelected_Click" /></td>
                                                            <td style="text-align: center" class="dark">
                                                                <asp:Button ID="Button2" runat="server" CssClass="btn_style" Text="Print Selected Invoices" Width="143px" OnClick="btnPrint_Click" />
                                                            </td>
                                                            <td class="dark" align="center">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                   
                                                  
                                                </td>
                                            </tr>
                                            
                                        </table>
                                        
                        </td>
                        </tr>
                        </table>       
                              
            

                            

		</FORM>
	</body>
</html>
