<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_AccountSummary.aspx.cs" Inherits="CCEstore.SD_AccountSummary"
    MasterPageFile="mainService.master"%>

<%@ Register TagPrefix="cc" TagName="AccountSummary" Src="wucWholesaleAccountSummary.ascx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">


    <cc:AccountSummary ID="AccountSummary1" runat="server" />

</asp:Content>