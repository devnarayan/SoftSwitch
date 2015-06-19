<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true"
    CodeBehind="SIPTrunkSelectedService.aspx.cs" Inherits="CCEstore.SIPTrunkSelectedService" %>

<%@ Register TagPrefix="cc" TagName="sip1" Src="~/Controls/SipTrunking/wucSIPTrunkingSelectedServiceDetails.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <cc:sip1 ID="x" runat="server">
    </cc:sip1>
</asp:Content>
