<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="main.master" Codebehind="selectdevice.aspx.cs"
    Inherits="CCEstore.selectdevice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="cc" TagName="tag" Src="wucSteps.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <script src="js/global.js" type="text/javascript"></script>

    <script language="JavaScript" type="text/JavaScript">
		// PopUp('/tell_friend.cfm', 'tell_friend', 300, 210)
		function PopUp(url,title,width,height) {
			var win = 'toolbar=0,location=0,directories=0,menubar=0,status=0,resizable=1,scrollbars=1,target=_blank,width='+width+',height='+height;
			window.open(url,title,win);
		}
		
		
		function SelectOne(rdo,gridName){
			
			all=document.getElementsByTagName("input");/* Getting an array of all the "INPUT" controls on the form.*/
			
			var chkstring = "ctl00_cphMain_dgDevice_ctl02_chkDevice";
			var txtstring = "ctl00_cphMain_dgDevice_CTRL_txtQty";
			var nodeviceisChecked = false;
		 	if(rdo.id == chkstring && rdo.checked)
		 	{
		 	    nodeviceisChecked = true;
		 	}
			for(i=0;i<all.length;i++) {										
					if( all[i].type=="checkbox")					
					{
					    //enable the associated text
					    if(nodeviceisChecked)
					        all[i].checked = false;
					    genericControlName = (all[i].id.replace("ctl00_cphMain_dgDevice_", "").replace('_chkDevice', ''));
					    textbox = txtstring.replace('CTRL', genericControlName);
					   
					   if(all[i].checked)  {
					    document.getElementById(textbox).disabled = false;
					    document.getElementById(chkstring).checked = false;
					   }
					   else
					   {
					    document.getElementById(textbox).disabled = true;
					    document.getElementById(textbox).value = '';
					   }
					 
					}
					
				
			}
			genericControlName = (rdo.id.replace("ctl00_cphMain_dgDevice_", "").replace('_chkDevice', ''));
					    textbox = txtstring.replace('CTRL', genericControlName);
			if(nodeviceisChecked) rdo.checked = true;		    
			if(!document.getElementById(textbox).disabled) {
		          document.getElementById(textbox).focus();
		          document.getElementById(textbox).value = 1;
			}
			//rdo.checked=true;/* Finally making the clicked radio button CHECKED */
		}

		
		function GoUrl(obj) {
			var myindex=obj.selectedIndex
			if (obj.options[myindex].value != 0) {
				location=obj.options[myindex].value;
			}
		}
    </script>

    <script src="js/sifr.js" type="text/javascript"></script>

    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
            <tr>
                <td class="main" valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td style="height: 13px">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td>

                                    <cc:tag ID="stepUserControl" runat="server" />

                                </td>
                            </tr>
                            <tr>
                                <td style="height: 1px" class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="page_cont">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="page">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td style="height: 13px">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" meta:resourcekey="lblErrorResource1"></asp:Label></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="widht_t" cellspacing="0" cellpadding="0" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td valign="top">
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <asp:DataGrid ID="dgDevice" runat="server" GridLines="Vertical" CellPadding="3" BorderWidth="0px"
                                                                                        BorderStyle="None" BackColor="White" AllowPaging="false" BorderColor="#999999"
                                                                                        DataKeyField="DeviceID" AutoGenerateColumns="False" AllowSorting="True"
                                                                                        Width="100%" OnDataBinding="dgDevice_DataBinding" OnItemCreated="dgDevice_ItemCreated"
                                                                                        OnItemDataBound="dgDevice_ItemDataBound" meta:resourcekey="dgDeviceResource1">
                                                                                        <SelectedItemStyle Font-Bold="True" BackColor="#F4F4F4"></SelectedItemStyle>
                                                                                        <AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
                                                                                        <ItemStyle ForeColor="Black" BackColor="#F4F4F4"></ItemStyle>
                                                                                        <HeaderStyle Font-Bold="True" ForeColor="White" Font-Size="10px" BackColor="White"></HeaderStyle>
                                                                                        <FooterStyle ForeColor="Black" BackColor="White"></FooterStyle>
                                                                                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="Black" BackColor="Silver"
                                                                                            Mode="NumericPages"></PagerStyle>
                                                                                        <Columns>
                                                                                            <asp:TemplateColumn>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Image ID="img" runat="server" ImageUrl='<%# Page.ResolveUrl("~") + "images/" + DataBinder.Eval(Container, "DataItem.DeviceImage") %>' meta:resourcekey="imgResource1"
                                                                                                    >
                                                                                                    </asp:Image>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn>
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox runat="server" ID="chkDevice" onclick="javascript: SelectOne(this,'dgDevice')" meta:resourcekey="chkDeviceResource1" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn HeaderText="Device&#160;Name&#160;&#160;" 
                                                                                            meta:resourcekey="lblDeviceNameResource1"
                                                                                            >
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="txtdName" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.DeviceName") %>' meta:resourcekey="txtdNameResource1"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn HeaderText="Description"
                                                                                            meta:resourcekey="lblDescriptionResource1"
                                                                                            >
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblDesc" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.description") %>' meta:resourcekey="lblDescResource1"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn HeaderText="Quantity"
                                                                                            meta:resourcekey="lblQuantityResource1"
                                                                                            >
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="txtQty" runat="server" CssClass="input" Width="30px" MaxLength="3"
                                                                                                        Enabled="False" meta:resourcekey="txtQtyResource1"></asp:TextBox>
                                                                                                    <ajaxToolkit:FilteredTextBoxExtender ID="numonly" runat="server" FilterType="Numbers"
                                                                                                        TargetControlID="txtQty" Enabled="True">
                                                                                                    </ajaxToolkit:FilteredTextBoxExtender>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn HeaderText="Price/Unit"
                                                                                            meta:resourcekey="lblPriceResource1"
                                                                                            >
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblCurrency" runat="server" Text='<%# PayCentral.Library.General.GetCurrencySymbol() %>' meta:resourcekey="lblCurrencyResource1"></asp:Label>
                                                                                                    <asp:Label ID="lblPrice" runat="server" Text='<%# Double.Parse(DataBinder.Eval(Container, "DataItem.price").ToString()).ToString("F") %>'></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn Visible="False">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblID" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.DeviceID") %>' meta:resourcekey="lblIDResource1"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                        </Columns>
                                                                                    </asp:DataGrid></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <input type="hidden" value="VOIPDevice" name="CatLayoutOverRide" selected /></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td align="center">
                                                                    <input class="buttonDefault" onclick="history.back();" type="button" value="Back"
                                                                        name="Back" runat="server"
                                                                        meta:resourcekey="Button1Resource1"
                                                                         />

                                                                    <script language="JavaScript"> 
					      function BackOneScreen() {
	                         var aurl = 'plans.aspx';
				        	 window.location = aurl;
               			  }
                                                                    </script>

                                                                </td>
                                                                <td align="center">
                                                                    <asp:Button ID="submit" OnClick="submit_Click" runat="server" CssClass="buttonDefault"
                                                                        Text="Continue" meta:resourcekey="submitResource1"></asp:Button></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
