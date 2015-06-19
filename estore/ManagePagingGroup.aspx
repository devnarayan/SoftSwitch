<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePagingGroup.aspx.cs" 
    Inherits="CCEstore.ManagePagingGroup" MasterPageFile="MainService.master" %>

<%@ Register TagPrefix="cc" TagName="PG" Src="wucPagingGroup.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <cc:PG ID="PG1" runat="server" />

</asp:Content>
