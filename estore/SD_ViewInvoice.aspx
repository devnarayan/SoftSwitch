<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_ViewInvoice.aspx.cs" Inherits="CCEstore.SD_ViewInvoice"
         MasterPageFile="mainService.master"%>

<%@ Register src="Controls/ViewInvoice.ascx" tagname="ViewInvoice" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <div class="module" style="width: 700px">
        <div class="container">
            <!--[if IE]><v:roundrect arcsize = "6966f" coordsize = 
"21600,21600" fillcolor = "white" strokecolor = "#369" strokeweight = "1pt"><![endif]-->
            <div class="content">

                <uc1:ViewInvoice ID="ViewInvoice1" runat="server" />

            </div>
            <!--[if IE]></v:roundrect><![endif]-->
            <div class="ft">
            </div>
        </div>
    </div>

</asp:Content>