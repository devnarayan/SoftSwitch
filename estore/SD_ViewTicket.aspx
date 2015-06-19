<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_ViewTicket.aspx.cs"
    Inherits="CCEstore.SD_ViewTicket" MasterPageFile="mainService.master" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="~/wuViewTicket.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:tag ID="NewTicket" runat="server" />
</asp:Content>
