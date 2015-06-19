<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CD_CardDetail.aspx.cs" Inherits="CCEstore.CD_CardDetail"
    MasterPageFile="~/MainService.Master"
 %>

<%@ Register TagPrefix="cc" TagName="Tag" Src="wucCardDetail.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
         <DIV class=module style="width:700px" >
<DIV class=container><!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
<DIV class=content>

    <cc:Tag ID="CardDetail" runat="server" />
                                      
</DIV><!--[if IE]></v:roundrect><![endif]-->
<DIV class=ft></DIV></DIV></DIV>

</asp:Content>