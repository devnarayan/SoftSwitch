<%@ Page Title="" Language="C#" MasterPageFile="~/MainService.Master" AutoEventWireup="true"
    CodeBehind="SIPTrunkingRoutingSetting.aspx.cs" Inherits="CCEstore.SIPTrunkingRoutingSetting" %>
    
<%@ Register TagPrefix="cc" TagName="sip1" Src="~/Controls/SipTrunking/wucSIPTrunkingRoutingSetting.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="module" style="width: 750px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">
                <cc:sip1 ID="ucRoutingSetting" runat="server" />
            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>
</asp:Content>
