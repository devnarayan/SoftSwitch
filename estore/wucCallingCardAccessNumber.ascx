<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCallingCardAccessNumber.ascx.cs" Inherits="CCEstore.wucCallingCardAccessNumber" %>

<center>
<table width="400" >
    <tr>
        <td class="heading" align="left">            
            <asp:Label ID="Label1" runat="server" Text="Calling Card" meta:resourcekey="Label1Resource1"></asp:Label>            
        </td>
    </tr>
    <tr>
        <td>
            <!-- <hr /> -->
        </td>
    </tr>
    <tr>
        <td>
            <WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" Skin="Vista" AllowSorting="True" 
                GridLines="None" meta:resourcekey="rgDetailsResource1"
                Width="100%" >
                <MasterTableView>
                    <RowIndicatorColumn>
                        <HeaderStyle Width="20px" />
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn>
                        <HeaderStyle Width="20px" />
                    </ExpandCollapseColumn>
                </MasterTableView>
<HeaderContextMenu Skin="Vista">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

<FilterMenu Skin="Vista">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
            </WebCtlIpsmarx:RadGrid>
        </td>
    </tr>
    <tr>
        <td>
             <!-- <hr /> -->
        </td>
    </tr>
</table>
</center>