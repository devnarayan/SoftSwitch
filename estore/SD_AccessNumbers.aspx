<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_AccessNumbers.aspx.cs" Inherits="CCEstore.SD_AccessNumbers"
    MasterPageFile="mainService.master"
 %>

<%@ Register TagPrefix="cc" TagName="AccessNumber" Src="wucAccessNumbers.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">


      
    <cc:AccessNumber ID="AccessNumber1" runat="server" />
    

</asp:Content>