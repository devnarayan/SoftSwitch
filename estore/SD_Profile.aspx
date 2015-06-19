<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_Profile.aspx.cs" Inherits="CCEstore.SD_Profile"
    MasterPageFile="mainService.master"
 %>

<%@ Register TagPrefix="cc" TagName="RegisterCustomer" Src="RegisterCustomer.ascx" %>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <cc:RegisterCustomer ID="RegisterCustomer1" runat="server" />
    
</asp:Content>