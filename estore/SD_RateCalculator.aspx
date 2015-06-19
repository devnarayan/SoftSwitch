<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_RateCalculator.aspx.cs" Inherits="CCEstore.SD_RateCalculator"
    MasterPageFile="mainService.master"
 %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucRateCalculator.ascx" %>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <cc:tag ID="CDR1" runat="server" />
             

</asp:Content>