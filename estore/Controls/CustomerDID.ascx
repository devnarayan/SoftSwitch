<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerDID.ascx.cs"
    Inherits="CCEstore.Controls.CustomerDID" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    *
    {
        margin: 0;
        padding: 0;
        vertical-align: middle;
    }
    a
    {
        color: #577CCC;
    }
</style>

<script language="javascript">
    function openRadWindow(me) {
        var obj = document.getElementById("<%=hidPackageID.ClientID%>");
        var customerid = document.getElementById("<%=hidCustomerID.ClientID%>").value;
        var maxdid = document.getElementById("<%=txtTotalAllowedDID.ClientID%>");
        var packageid = obj.value;
        var maxdidcount = maxdid.value;
        if (me.id.indexOf("aOutPackagDID") >= 0) {
            maxdidcount = -1;  // unlimited
            packageid = 0;
        }
        if (maxdidcount == 0) {
            alert('All dids are allocated')
            return;
        }
        var oWnd = radopen("FindDID.aspx?PackageID=" + packageid + "&MaxDID=" + maxdidcount.toString() + "&CustomerID=" + customerid.toString());
        oWnd.center();
    }


    function OnClientClose(oWnd, args) {
        __doPostBack('__Page', 'MyCustomArgument');
    }
   
</script>

<asp:HiddenField ID="hidPackageID" runat="server" />
<asp:HiddenField ID="hidCustomerID" runat="server" />
<table class="style1">
    <tr>
        <td colspan="4" class="subtitle">
            &nbsp;<asp:Label ID="Label100" runat="server" CssClass="subtitle" 
                Text="Purchase DID" meta:resourcekey="Label100Resource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Remaining DID(in package)" 
                meta:resourcekey="Label2Resource1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTotalAllowedDID" runat="server" CssClass="NotEditable" ForeColor="Blue"
                ReadOnly="True" Width="175px" 
                meta:resourcekey="txtTotalAllowedDIDResource1"></asp:TextBox><a href="javascript:void(0)" runat="server" id="aInPackagDID" onclick="openRadWindow(this)">
            <img
                    src="Images/go.gif" border="0" /></a> 
             </td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Allocated DID" 
                meta:resourcekey="Label3Resource1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAllocatedDID" runat="server" CssClass="NotEditable" ForeColor="Blue"
                ReadOnly="True" Width="175px" meta:resourcekey="txtAllocatedDIDResource1"></asp:TextBox>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Buy Extra DID" 
                meta:resourcekey="Label4Resource1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTotalExtraDID" runat="server" CssClass="NotEditable" ForeColor="Blue"
                ReadOnly="True" Width="175px" meta:resourcekey="txtTotalExtraDIDResource1"></asp:TextBox><a href="javascript:void(0)" runat="server" id="aOutPackagDID" onclick="openRadWindow(this)">
            <img
                    src="Images/go.gif" border="0" /></a>
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            &nbsp;
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
        <td colspan="4" class="subtitle">
            &nbsp;<asp:Label ID="Label1" runat="server" CssClass="subtitle" 
                Text="Assigned DID" meta:resourcekey="Label1Resource1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <WebCtlIpsmarx:RadGrid ID="dgDID" runat="server" AllowPaging="True" AllowSorting="True"
                GridLines="None" meta:resourcekey="dgDIDResource1">
                <HeaderContextMenu>
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </HeaderContextMenu>
                <PagerStyle Mode="NextPrevAndNumeric" />
                <MasterTableView>
                    <Columns>
                        <WebCtlIpsmarx:GridTemplateColumn UniqueName="TemplateColumn1" 
                            HeaderText="Select" meta:resourcekey="GridTemplateColumnResource1">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkDID" runat="server" meta:resourcekey="optToResource1" />
                            </ItemTemplate>
                        </WebCtlIpsmarx:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
                <FilterMenu>
                    <CollapseAnimation Duration="200" Type="OutQuint" />
                </FilterMenu>
            </WebCtlIpsmarx:RadGrid>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" 
                meta:resourcekey="btnRemoveSelectedResource1" />
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
</table>
<WebCtlIpsmarx:RadWindowManager Skin="Office2007" Height="500px" Modal="True" Width="830px"
    BorderStyle="Inset" KeepInScreenBounds="True" ID="RadWindowManager1" runat="server"
    ReloadOnShow="True" ShowContentDuringLoad="False" VisibleStatusbar="False" 
    OnClientClose="OnClientClose" Behavior="Default" InitialBehavior="None" Left="" 
    meta:resourcekey="RadWindowManager1Resource1" style="display: none;" Top="">
    <Windows>
        <WebCtlIpsmarx:RadWindow runat="server" ID="RadWindow1" Behaviors="Close" 
            meta:resourcekey="RadWindow1Resource1">
        </WebCtlIpsmarx:RadWindow>
    </Windows>
</WebCtlIpsmarx:RadWindowManager>
