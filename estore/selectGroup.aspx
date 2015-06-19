<%@ Page Language="C#" MasterPageFile="main.master" AutoEventWireup="true" CodeBehind="selectGroup.aspx.cs" Inherits="CCEstore.selectGroup" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
<script  language="javascript">
    function SelectOne(rdo, gridName) {
        /* Getting an array of all the "INPUT" controls on the form.*/
        all = document.getElementsByTagName("input");
        for (i = 0; i < all.length; i++) {
            if (all[i].type == "radio")/*Checking if it is a radio button*/
            {
                /*I have added '__ctl' ASP.NET adds '__ctl' to all 
                the controls of DataGrid.*/
                var count = all[i].id.indexOf('rbVirtual');
                if (count != -1) {
                    all[i].checked = false;
                }
            }
        }
        rdo.checked = true; /* Finally making the clicked radio button CHECKED */
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
                                                                <td align="center">
                                                                    <asp:Label ID="lblTitleGrid" runat="server" Font-Size="Medium" meta:resourcekey="lblTitleGridResource1"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Label></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="table_graph" cellspacing="0" cellpadding="0" width="90%" align="center"
                                                        border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="5">
                                                                    <!--our datagrid should be here-->
                                                                    <asp:GridView ID="gvGroups" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                                                        BackColor="White" GridLines="None" CellPadding="10" BorderStyle="Solid" BorderColor="#DEDFDE"
                                                                        ForeColor="Black" meta:resourcekey="gvGroupsResource1">
                                                                        <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B"></HeaderStyle>
                                                                        <Columns>
                                                                            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                                                                                <ItemTemplate>
                                                                                    <asp:RadioButton ID="rbVirtual" runat="server" GroupName="package" onclick="SelectOne(this,'gvGroups')" meta:resourcekey="rbVirtualResource1"></asp:RadioButton>
                                                                                    <asp:Image Height="48px" ImageUrl='<%# Page.ResolveUrl("~") + "images/" + DataBinder.Eval(Container.DataItem, "Image") %>' id="pkgImage" runat="server" meta:resourcekey="pkgImageResource1" />                                                                                    
                                                                                    <asp:Label ID="lblVirtualID" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "VirtualEstoreGroupID") %>' Visible="False" meta:resourcekey="lblVirtualIDResource1"></asp:Label>                                                                                   
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Name" meta:resourcekey="TemplateFieldResource2">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblVirtualName" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "OnlineName") %>' meta:resourcekey="lblPKGNameResource1"></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Description" meta:resourcekey="TemplateFieldResource3">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblVirtualDescription" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "Description") %>' meta:resourcekey="lblVirtualDescriptionResource1"></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                    <!--ends here-->
                                                                </td>
                                                            </tr>
                                                            <asp:Label ID="lblVirtualID4" runat="server" Visible="False" meta:resourcekey="lblVirtualID4Resource1"></asp:Label></tbody></table>
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
