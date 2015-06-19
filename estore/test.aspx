<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/main.Master" %>

<%@ Register TagPrefix="cc" TagName="SupportContract" Src="~/Controls/wucSupportContractDetails.ascx" %>

<%@ Register TagPrefix="cc" TagName="sip1" Src="~/Controls/wucSIPTrunkingSelectedServiceDetails.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:sip1 ID="x" runat="server"></cc:sip1>
</asp:Content>
