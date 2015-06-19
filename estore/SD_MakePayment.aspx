<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_MakePayment.aspx.cs" Inherits="CCEstore.SD_MakePayment"
    MasterPageFile="mainService.master"
 %>

<%@ Register TagPrefix="cc" TagName="MakePayment" Src="wucMakePayment.ascx" %>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:MakePayment ID="MakePayment" runat="server" />
</asp:Content>