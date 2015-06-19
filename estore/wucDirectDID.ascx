<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucDirectDID.ascx.cs"
    Inherits="CCEstore.wucDirectDID" %>

<script language="javascript">
    function SelectOne(rdo, gridName) {
        /* Getting an array of all the "INPUT" controls on the form.*/
        all = document.getElementsByTagName("input");
        for (i = 0; i < all.length; i++) {
            if (all[i].type == "radio")/*Checking if it is a radio button*/
            {
                /*I have added '__ctl' ASP.NET adds '__ctl' to all 
                the controls of DataGrid.*/
                var count = all[i].id.indexOf('rbPKG');
                if (count != -1) {
                    all[i].checked = false;
                }
            }
        }
        rdo.checked = true; /* Finally making the clicked radio button CHECKED */
    }
</script>

<table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
    <tbody>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Label>
            </td>
        </tr>
    </tbody>
</table>
<table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
    <tbody>
        <tr>
            <td colspan="5">
                <!--our datagrid should be here-->
                <asp:GridView ID="gvPackages" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                    BackColor="White" GridLines="None" CellPadding="10" BorderStyle="Solid" BorderColor="#DEDFDE"
                    ForeColor="Black" meta:resourcekey="gvPackagesResource1" Width="100%" OnLoad="gvPackages_Load">
                    <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B"></HeaderStyle>
                    <Columns>
                        <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                            <ItemTemplate>
                                <asp:RadioButton ID="rbPKG" runat="server" AutoPostBack="True" GroupName="package"
                                    OnCheckedChanged="Service_CheckedChanged" onclick="SelectOne(this,'gvPackages')"
                                    meta:resourcekey="rbPKGResource1"></asp:RadioButton>
                                <asp:Image Height="48px" ImageUrl='<%# Page.ResolveUrl("~") + "images/" + DataBinder.Eval(Container.DataItem, "Image") %>'
                                    ID="pkgImage" runat="server" meta:resourcekey="pkgImageResource1" />
                                <asp:Label ID="lblPKGID" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProfileID") %>'
                                    Visible="False" meta:resourcekey="lblPKGIDResource1"></asp:Label>
                                <a id="lnkRates" runat="server" href="#">Rates</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Service Name" meta:resourcekey="TemplateFieldResource2">
                            <ItemTemplate>
                                <asp:Label ID="lblPKGName" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "OnlineName") %>'
                                    meta:resourcekey="lblPKGNameResource1"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description" meta:resourcekey="TemplateFieldResource3">
                            <ItemTemplate>
                                <asp:Label ID="lblPKGDescription" runat="server" Font-Bold="False" Text='<%# DataBinder.Eval(Container.DataItem, "description") %>'
                                    meta:resourcekey="lblPKGDescriptionResource1"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price" meta:resourcekey="TemplateFieldResource4" ItemStyle-Width="100px">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblPriceCaption" runat="server" Text="Price:" Visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())>0 %>'
                                                meta:resourcekey="lblPriceCaptionResource1" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "PriceOnline").ToString() %>'
                                                Visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())>0 %>'
                                                meta:resourcekey="Label6Resource1"></asp:Label>
                                            <asp:Label ID="Label5" runat="server" Text='<%# SipKernel.common.Translation.Lookup("pay_as_you_go") %>'
                                                Visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "PriceOnline").ToString())==0 %>'
                                                meta:resourcekey="Label5Resource1"></asp:Label>
                                            <asp:Label ID="lblPKGPrice" Visible="False" runat="server" Font-Bold="True" Text='<%# DataBinder.Eval(Container.DataItem, "PriceOnline") %>'
                                                meta:resourcekey="lblPKGPriceResource1"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trYouSave" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "YouSave").ToString())>0 %>'>
                                        <td class="pricing_discount_desc" runat="server">
                                            <asp:Label runat="server" ID="lblYouSaveCaption" Text="Save:" />
                                            <asp:Label runat="server" ID="lblYouSave" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "YouSave").ToString() %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr id="trFinalPrice" runat="server" visible='<%# decimal.Parse(DataBinder.Eval(Container.DataItem, "YouSave").ToString())>0 %>'>
                                        <td class="pricing_sale_desc" runat="server">
                                            <asp:Label runat="server" ID="lblFinalPriceCaption" Text="Now:" />
                                            <asp:Label runat="server" ID="lblFinalPrice" Text='<%# PayCentral.Library.General.GetCurrencySymbol() + DataBinder.Eval(Container.DataItem, "FinalPrice").ToString() %>'></asp:Label>
                                            <asp:Label runat="server" ID="lblPromotionID" Text='<%# DataBinder.Eval(Container.DataItem, "PromotionID").ToString() %>'
                                                Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <ItemStyle Width="100px"></ItemStyle>
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
                <input type="hidden" value="VOIPService" name="CatLayoutOverRide" />
            </td>
        </tr>
    </tbody>
</table>
