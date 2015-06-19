<%@ Page Language="C#" AutoEventWireup="true" Codebehind="SD_PurchaseDID.aspx.cs"
    MasterPageFile="mainService.master"
     Inherits="CCEstore.SD_PurchaseDID" %>
<%@ Register TagPrefix="cc" TagName="tag" Src="wucSelectDIDs.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:tag ID="SelectDID1" runat="server" PlanType="1" IsNotDirectDID="true"  SelfFunctional="True" />
</asp:Content>