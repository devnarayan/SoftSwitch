<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="main.master" CodeBehind="Receipt.aspx.cs" Inherits="CCEstore.Receipt" %>

<%@ Register TagPrefix="cc" TagName="Receipt" Src="~/Controls/Receipt.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:Receipt ID="ccReceipt" runat="server" PaymentFrom="Estore" />
</asp:Content>