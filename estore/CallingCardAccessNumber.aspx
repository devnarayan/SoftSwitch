<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallingCardAccessNumber.aspx.cs" 
    Inherits="CCEstore.CallingCardAccessNumber" MasterPageFile="main.master"  %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucCallingCardAccessNumber.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <cc:tag ID="CCAN" runat="server" />

</asp:Content>
