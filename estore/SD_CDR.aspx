<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_CDR.aspx.cs" Inherits="CCEstore.SD_CDR"
    MasterPageFile="mainService.master"%>

<%@ Register TagPrefix="cc" TagName="CDR" Src="wucUsageHistory.ascx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
            
    <cc:CDR ID="CDR1" runat="server" />
         
</asp:Content>