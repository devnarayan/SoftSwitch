<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CD_RateCalculator.aspx.cs" Inherits="CCEstore.CD_RateCalculator"
    MasterPageFile="~/MainService.Master"
 %>

<%@ Register TagPrefix="cc" TagName="RateCalculator" Src="wucRateCalculator.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">


  <DIV class=module style="width:700px" >
<DIV class=container><!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600"  strokecolor = "#369" strokeweight = "1pt"><![endif]-->
<DIV class=content>
    <cc:RateCalculator ID="RateCalculator1" runat="server" />
	</DIV><!--[if IE]></v:roundrect><![endif]-->
<DIV class=ft></DIV></DIV></DIV>	
</asp:Content>