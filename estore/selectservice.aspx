<%@ Page Language="C#" MasterPageFile="main.master" AutoEventWireup="true" Codebehind="selectservice.aspx.cs"
    Inherits="CCEstore.selectservice" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucSteps.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
<script  language="javascript">
function SelectOne(rdo,gridName)
{
/* Getting an array of all the "INPUT" controls on the form.*/
all=document.getElementsByTagName("input");
 for(i=0;i<all.length;i++)
 {
  if(all[i].type=="radio")/*Checking if it is a radio button*/
  {
/*I have added '__ctl' ASP.NET adds '__ctl' to all 
    the controls of DataGrid.*/
   var count=all[i].id.indexOf('rbPKG'); 
   if(count!=-1)
   {
    all[i].checked=false;
   }
  }
 }
 rdo.checked=true;/* Finally making the clicked radio button CHECKED */
}
</script>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tbody>
            <tr>
                <td class="main" valign="top"><table cellspacing="0" cellpadding="0" width="100%" border="0">
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
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td style="height: 188px" class="page_cont">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="page">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
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
                                                    <table class="table_graph" cellspacing="0" cellpadding="0" width="90%" align="center"
                                                        border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="5">
                                                                    <!--our datagrid should be here-->
                                                                    <asp:GridView ID="gvPackages" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                                                        BackColor="White" GridLines="None" CellPadding="10" BorderStyle="Solid" BorderColor="#DEDFDE"
                                                                        ForeColor="Black" meta:resourcekey="gvPackagesResource1">
                                                                        <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B"></HeaderStyle>
                                                                        <Columns>
                                                                            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                                                                                <ItemTemplate>
                                                                                    <asp:RadioButton ID="rbPKG" runat="server" GroupName="package" onclick="SelectOne(this,'gvPackages')" meta:resourcekey="rbPKGResource1"></asp:RadioButton>
                                                                                    <asp:Image Height="48px" ImageUrl='<%# Page.ResolveUrl("~") + "images/" + DataBinder.Eval(Container.DataItem, "Image") %>' id="pkgImage" runat=server meta:resourcekey="pkgImageResource1" />                                                                                    
                                                                                    <asp:Label ID="lblPKGID" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProfileID") %>' Visible="False" meta:resourcekey="lblPKGIDResource1"></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Service Name" meta:resourcekey="TemplateFieldResource2">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblPKGName" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "OnlineName") %>' meta:resourcekey="lblPKGNameResource1"></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Description" meta:resourcekey="TemplateFieldResource3">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblPKGDescription" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "description") %>' meta:resourcekey="lblPKGDescriptionResource1"></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Price" meta:resourcekey="TemplateFieldResource4">
                                                                                <ItemTemplate>
                                                                                    <table>
                                                                                    <tr><td>
                                                                                    <asp:Label ID="lblPriceCaption" runat="server" Text="Price:" 
                                                                                                visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())>0 %>'
                                                                                             />
                                                                                    <asp:Label ID="Label6" runat="server" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "PriceOnline").ToString() %>'
                                                                                         visible = '<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())>0 %>' meta:resourcekey="Label6Resource1"
                                                                                         ></asp:Label>
                                                                                         

                                                                                        <asp:Label ID="Label5" runat="server" Text='<%# SipKernel.common.Translation.Lookup("pay_as_you_go") %>'
                                                                                         visible = '<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())==0 %>' meta:resourcekey="Label5Resource1"
                                                                                         ></asp:Label>
                                                                         
                                                                                        <asp:Label ID="lblPKGPrice" Visible="False" runat="server" Font-Bold="True" Text='<%# DataBinder.Eval(Container.DataItem, "PriceOnline") %>' meta:resourcekey="lblPKGPriceResource1"></asp:Label>
                                                                                        </td></tr>
                                                                                        
                                                                                        <tr id="trYouSave" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "YouSave").ToString())>0 %>'>
                                                                                            <td class="pricing_discount_desc">
                                                                                                <asp:Label runat="server" ID="lblYouSaveCaption" Text = "Save:" />
                                                                                                <asp:Label runat="server" ID="lblYouSave" Text='<%#  PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "YouSave").ToString()  %>' ></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr id="trFinalPrice" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "YouSave").ToString())>0 %>'>
                                                                                            <td class="pricing_sale_desc">
                                                                                                <asp:Label runat="server" ID="lblFinalPriceCaption" Text = "Now:" />
                                                                                                <asp:Label runat="server" ID="lblFinalPrice" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "FinalPrice").ToString()  %>' ></asp:Label>
                                                                                                
                                                                                                <asp:Label runat="server" ID="lblPromotionID" Text = '<%#  DataBinder.Eval(Container.DataItem, "PromotionID").ToString()  %>' Visible ="false" ></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                        </table>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                    <!--ends here-->
                                                                </td>
                                                            </tr>
                                                            <asp:Label ID="lblPKGID4" runat="server" Visible="False" meta:resourcekey="lblPKGID4Resource1"></asp:Label></tbody></table>
                                                    <br />
                                                    <br />
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <input type="hidden" value="VOIPService" name="CatLayoutOverRide" /></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tr>
                                                            <td align="center">
                                                                <input class="buttonDefault" onclick="history.back();" type="button" value="Back"
                                                                    name="Back" id="Button1"  runat="server"
                                                                    meta:resourcekey="Button1Resource1"
                                                                    >

                                                                <script language="JavaScript"> 
					                                                  function BackOneScreen() {
	                                                                     var aurl = 'plans.aspx';
				        	                                             window.location = aurl;
               			                                              }
                                                                </script>
                                                            </td>
                                                            <td align="center">
                                                                <asp:Button ID="submit" runat="server" CssClass="buttonDefault" Text="Continue" OnClick="submit_Click" meta:resourcekey="submitResource1">
                                                                </asp:Button></td>
                                                        </tr>
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
