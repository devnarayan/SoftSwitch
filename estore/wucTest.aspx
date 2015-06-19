<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wucTest.aspx.cs" Inherits="CCEstore.wucTest" %>

<%@ Register TagPrefix="cc" TagName="AdvancedCDR" Src="wucAdvancedCDR.ascx" %>
<%@ Register TagPrefix="cc" TagName="UsageHistory" Src="wucUsageHistory.ascx" %>
<%@ Register TagPrefix="cc" TagName="ResidentialCustomerSetting" Src="wucResidentialCustomerSettings.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<%@ Register TagPrefix="cc" TagName="tag" Src="wucManageVoicemail.ascx" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       
    <div>
        <div>
             <WebCtlIpsmarx:RadComboBox ID="ddlServices" runat="server" 
                 onselectedindexchanged="ddlServices_SelectedIndexChanged">
            </WebCtlIpsmarx:RadComboBox>
        </div>
        <div>
              <DIV class=module style="width:700px" >
<DIV class=container><!--[if IE]><v:roundrect arcsize = "1966f" coordsize = 
"21600,21600"  strokecolor = "#369" strokeweight = "1pt"><![endif]-->
<DIV class=content>

    <cc:tag ID="wucManageVoicemail1" runat="server"  />

                                
</DIV><!--[if IE]></v:roundrect><![endif]-->
<DIV class=ft></DIV></DIV></DIV>
            
        </div>
    </div>


    </form>
</body>
</html>
