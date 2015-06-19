<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_PaymentHistory.aspx.cs" Inherits="CCEstore.SD_PaymentHistory"
    MasterPageFile="mainService.master"%>

<%@ Register TagPrefix="cc" TagName="PaymentHistory" Src="wucPaymentHistory.ascx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <cc:PaymentHistory ID="PaymentHistory1" runat="server">
    </cc:PaymentHistory>


</asp:Content>