<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucSpeedDial.ascx.cs" Inherits="CCEstore.wucSpeedDial" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<script type="text/javascript">
    function rgDetailsSelected( sender, eventArgs )
    {
       var dataItem = $get(eventArgs.get_id());
       var grid = sender;
       var MasterTable = grid.get_masterTableView();
       var row = MasterTable.get_dataItems()[dataItem.rowIndex-1];
       
       var id = MasterTable.get_columns()[0].get_uniqueName();
       /* var Name = MasterTable.get_columns()[1].get_uniqueName(); */
       //var phoneNumber = MasterTable.get_columns()[2].get_uniqueName();
       //var SpeedDialNumber = MasterTable.get_columns()[3].get_uniqueName();
       var phoneNumber = MasterTable.get_columns()[1].get_uniqueName();
       var SpeedDialNumber = MasterTable.get_columns()[2].get_uniqueName();
       
       document.getElementById("<%=txtID.ClientID%>").value=MasterTable.getCellByColumnUniqueName(row, id).innerHTML;
       /* document.getElementById("<%=txtName.ClientID%>").value=MasterTable.getCellByColumnUniqueName(row, Name).innerHTML.replace( "&nbsp;", ""); */
       document.getElementById("<%=txtSpeedDial.ClientID%>").value = MasterTable.getCellByColumnUniqueName(row, SpeedDialNumber).innerHTML;
       document.getElementById("<%=txtPhoneNo.ClientID%>").value = MasterTable.getCellByColumnUniqueName(row, phoneNumber).innerHTML;
    
    }

</script>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

      
  
      <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td >
            <table border="0" cellpadding="2" cellspacing="0" width="100%"  height="30px" >
                <tr  >
                    <td  class="heading">
                            <asp:Label ID="lblTitle" runat="server" Text="Speed Dial"  ></asp:Label> <!-- meta:resourcekey="Label4Resource1" -->
                    </td>
                </tr>

                <tr>
                    <td>
                    <!-- <hr /> -->
                    
                    </td>
                </tr>

            </table>
            <table id="Table5" border="0" cellpadding="0" cellspacing="0"  width="100%">
                <tr>
                    <td>
                        <table id="Table4" border="0" cellpadding="3" cellspacing="1" width="100%">
                            <tr>
                                <td colspan="4">
                                    <!-- START INNER INNER -->
                                    <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblErrorResource1"></asp:Label>&nbsp;&nbsp;
                                </td>
                            </tr>
                            
                            
                            <tr id="trSpeedDialNumber" runat="server">
                                <td class="fontnormal">
                                    <asp:Label ID="Label2" runat="server" Text="Speed Dial Number (*)" meta:resourcekey="Label2Resource1"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtSpeedDial" runat="server" BackColor="White" 
                                        CssClass="textbox" MaxLength="2" Width="160px" meta:resourcekey="txtSpeedDialResource1"></asp:TextBox>
                                    <asp:TextBox ID="txtID1" runat="server" CssClass="textbox" Width="18px" ReadOnly="True" Visible="False" meta:resourcekey="txtID1Resource1"></asp:TextBox>
                                    <asp:HiddenField ID="txtID" runat="server" />
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr id="name" runat="server"> 
                                <td runat="server">
                                    <span style="fontnormal">
                                        <asp:Label ID="Label1" runat="server" Text="Name (*)"></asp:Label></span></td>
                                <td runat="server">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="160px" BackColor="White"></asp:TextBox>&nbsp;
                                </td>
                                <td runat="server">
                                </td>
                                <td runat="server">
                                </td>
                            </tr>
                            <tr>
                                <td class="fontnormal">
                                    <asp:Label ID="Label3" runat="server" Text="Phone Number (*)" meta:resourcekey="Label3Resource1"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="textbox" Width="160px" MaxLength="20" BackColor="White" meta:resourcekey="txtPhoneNoResource1"></asp:TextBox></td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px">
                                </td>
                                <td style="height: 30px">
                                    
                                    </td>
                                <td style="height: 30px">
                                </td>
                                <td style="height: 30px">
                                </td>
                            </tr>
                            <tr>
                                <td class="top" colspan="4">
                                    <table id="Table1" align="center" border="0" cellpadding="10" cellspacing="0" width="90%">
                                        <tr>
                                            <td style="height: 21px">
                                                <div align="center">
                                                    <asp:Button ID="btnReset" runat="server" CausesValidation="False" CssClass="Button"
                                                        Text="Reset" OnClick="btnReset_Click" AutoPostBack="True" meta:resourcekey="btnResetResource1"/></div>
                                            </td>
                                            <td style="height: 21px">
                                                <div align="center">
                                                    <asp:Button ID="btnAdd" runat="server" CssClass="Button" Text="Add" OnClick="btnAdd_Click" meta:resourcekey="btnAddResource1" /></div>
                                            </td>
                                            <td style="height: 21px">
                                                <div align="center">
                                                    <asp:Button ID="btnModify" runat="server" CssClass="Button" Text="Modify" OnClick="btnModify_Click" meta:resourcekey="btnModifyResource1" /></div>
                                            </td>
                                            <td style="height: 21px">
                                                <div align="center">
                                                    <asp:Button ID="btnDelete" runat="server" CssClass="Button" Text="Delete" OnClick="btnDelete_Click" meta:resourcekey="btnDeleteResource1" /></div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
                      
            <table id="Table8" align="center" border="0" cellpadding="3" cellspacing="0" 
                width="100%">
                <tr>
                    <td colspan="4">
                        <table id="Table6" width="100%">
                            <tr>
                                <td class="fontnormal">
                                    &nbsp;<WebCtlIpsmarx:RadGrid ID="rgDetails" runat="server" AllowPaging="True" AllowSorting="True"
                                        GridLines="None" OnLoad="RadGrid1_Load" meta:resourcekey="rgDetailsResource1" >
                                        <ClientSettings EnableRowHoverStyle="True">
                                            <Selecting AllowRowSelect="True"  />
                                            
                                        </ClientSettings>
                                        
                                        <mastertableview>
                                            <Columns>
                                                <WebCtlIpsmarx:GridButtonColumn CommandName="Select"
                                                
                                                 Text="Select" UniqueName="column" 
                                                    meta:resourcekey="GridButtonColumnResource1">
                                                </WebCtlIpsmarx:GridButtonColumn>
                                            </Columns>
                                            
                                        </mastertableview>
                                        <filtermenu>
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </filtermenu>
                                        <headercontextmenu>
                                            <collapseanimation duration="200" type="OutQuint" />
                                        </headercontextmenu>
                                        
                                    </WebCtlIpsmarx:RadGrid></td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <ajaxIPSmarx:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                            Enabled="True" FilterType="Numbers" TargetControlID="txtSpeedDial">
                        </ajaxIPSmarx:FilteredTextBoxExtender>
                        <ajaxIPSmarx:FilteredTextBoxExtender ID="Filteredtextboxextender2" runat="server"
                            Enabled="False" FilterType="Numbers" TargetControlID="txtPhoneNo">
                        </ajaxIPSmarx:FilteredTextBoxExtender>
                    </td>
                </tr>
            </table>
            <!-- END INNER CONTENT -->
        </td>
    </tr>
</table>
      
      


</ContentTemplate>
</asp:UpdatePanel>
