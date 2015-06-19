<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucAccessNumbers.ascx.cs" Inherits="CCEstore.wucAccessNumbers" %>


  
      <table width="100%">
    <tr>
        <td class="heading" align="left">
            
            <asp:Label ID="Label1" runat="server" Text="Access Numbers" meta:resourcekey="Label1Resource1"></asp:Label>
            
        </td>
    </tr>
    <tr>
        <td>
            <!-- <hr /> -->
        </td>
    </tr>
    <tr>
        <td>
            <WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" Skin="Sunset" AllowSorting="True" GridLines="None" OnLoad="rgDetails_Load" meta:resourcekey="rgDetailsResource1">
                
                <MasterTableView>
                    <RowIndicatorColumn>
                        <HeaderStyle Width="20px" />
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn>
                        <HeaderStyle Width="20px" />
                    </ExpandCollapseColumn>
                </MasterTableView>
<HeaderContextMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

<FilterMenu Skin="Sunset">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
            </WebCtlIpsmarx:RadGrid>
        </td>
    </tr>

</table>


  