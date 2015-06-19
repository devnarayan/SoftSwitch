<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true"
    CodeBehind="InternationalRechargeReport.aspx.cs" Inherits="CCEstore.InternationalRechargeReport" %>

<%@ Register TagPrefix="cc" TagName="InternationalRecharge" Src="~/Controls/wucInternationalRechargeReport.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <cc:InternationalRecharge ID="ucInternationalRecharge" runat="server" />
</asp:Content>
