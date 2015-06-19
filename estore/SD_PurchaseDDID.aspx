<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_PurchaseDDID.aspx.cs" Inherits="CCEstore.SD_PurchaseDDID"
    MasterPageFile="mainService.master"
 %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucSelectDIDs.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
            


    <cc:tag ID="SelectDID1" runat="server" PlanType="2" SelfFunctional="True" />

</asp:Content>