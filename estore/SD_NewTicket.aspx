<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_NewTicket.aspx.cs" Inherits="CCEstore.SD_NewTicket"
    MasterPageFile="mainService.master" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="~/wuNewTicket.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
<script type="text/javascript">
        function showWindow() 
        {
           var oWnd = radopen('IPsmarxDisclaimer.aspx');  // Opens the window 
        }   
</script>
    <WebCtlIpsmarx:RadWindowManager Skin="Office2007" Height="400px" Modal="True" Width="730px"
        BorderStyle="Inset" KeepInScreenBounds="True" ID="RadWindowManager1" runat="server" Behaviors="None"
        ReloadOnShow="True" ShowContentDuringLoad="False" VisibleStatusbar="False"  Title="Disclaimer"
         InitialBehavior="None" Left="" Style="display: none;" Top="">
        <Windows>
            <WebCtlIpsmarx:RadWindow runat="server" ID="RadWindow1" Behaviors="Close">
            </WebCtlIpsmarx:RadWindow>
        </Windows>
    </WebCtlIpsmarx:RadWindowManager>
    <cc:tag ID="NewTicket" runat="server" />
</asp:Content>
