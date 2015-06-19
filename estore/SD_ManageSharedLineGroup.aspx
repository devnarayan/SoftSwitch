<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_ManageSharedLineGroup.aspx.cs" Inherits="CCEstore.SD_ManageSharedLineGroup" 
 MasterPageFile="mainService.master" %>

<%@ Register TagPrefix="cc" TagName="SharedLineGroup" Src="Controls/wucSharedLineGroup.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <cc:SharedLineGroup ID="SharedLineGroup1" runat="server" />

</asp:Content>
