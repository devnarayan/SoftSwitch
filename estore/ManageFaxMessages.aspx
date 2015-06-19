<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageFaxMessages.aspx.cs"
    Inherits="CCEstore.ManageFaxMessages" MasterPageFile="mainService.master" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="~/wucManageFaxMessages.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:tag ID="ucFaxMessages" runat="server" />
</asp:Content>
