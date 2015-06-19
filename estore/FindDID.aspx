<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindDID.aspx.cs" Inherits="CCEstore.FindDID" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/Controls/SearchDID.ascx" TagName="SearchDID" TagPrefix="uc" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="Css/Style.css" rel="stylesheet" type="text/css" />
    <link href="Css/form.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc:SearchDID runat="server" ID="ucSearchDID" DIDCategory="TRUNK" />
    </form>
</body>
</html>
