<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CD_RechargePIN.aspx.cs" Inherits="CCEstore.CD_RechargePIN"
    MasterPageFile="~/MainService.Master"
 %>

<%@ Register TagPrefix="cc" TagName="MakePayment" Src="wucMakePayment.ascx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:MakePayment ID="MakePayment" runat="server" />
</asp:Content>