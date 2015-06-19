<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SD_Rates.aspx.cs" Inherits="CCEstore.SD_Rates"  %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucRates.ascx" %>
<HTML>
	<HEAD>
		<title>Rates</title>

        <link href="css/moz-antialias.css" rel="stylesheet" type="text/css" />
        <link href="css/RoundedCornerFF.css" rel="stylesheet" type="text/css" />
        <link href="css/CCEstore.css" rel="stylesheet" type="text/css" />
        <link href="css/MainServiceMaster.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />

    </HEAD>
</HTML>
<body>
    <form id="Form1" method="post" runat="server">
        <cc:tag ID="CDRates" runat="server" />
    </form>
</body>
    

