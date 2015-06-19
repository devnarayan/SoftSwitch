<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true"
    CodeBehind="SD_BuyNewDIDs.aspx.cs" Inherits="CCEstore.SD_BuyNewDIDs" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="~/Controls/AddNewDID.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <cc:tag ID="SelectDID1" runat="server">
    </cc:tag>
</asp:Content>
