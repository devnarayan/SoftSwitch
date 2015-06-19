<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_CDRSummary.aspx.cs" Inherits="CCEstore.SD_CDRSummary"
    MasterPageFile="mainService.master"
 %>

<%@ Register TagPrefix="cc" TagName="CDR" Src="wucAdvancedCDR.ascx" %>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">


    <cc:CDR ID="CDR1" runat="server" />
        
   

</asp:Content>