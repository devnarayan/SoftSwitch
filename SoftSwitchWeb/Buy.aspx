<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form action="https://www.paypal.com/cgi-bin/webscr" method="post" runat="server" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="yut7u7j4h7vqw">
<input type="image" src="https://www.paypalobjects.com/en_us/i/btn/btn_buynowcc_lg.gif" border="0" name="submit" alt="paypal - the safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_us/i/scr/pixel.gif" width="1" height="1">
</form>
   <%--<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="PKGZECJVMEMFE">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>--%>
    <%-- <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
    <input type="hidden" name="cmd" value="_xclick">
    <input type="hidden" name="business" value="devnarayan.nagar@yahoo.com">
    <input type="hidden" name="lc" value="US">
    <input type="hidden" name="item_name" value="ScriptWord">
    <input type="hidden" name="item_number" value="01">
    <input type="hidden" name="amount" value="16.95">
    <input type="hidden" name="currency_code" value="USD">
    <input type="hidden" name="button_subtype" value="services">
    <input type="hidden" name="return" value="http://www.scriptword.com/paypalconfirm.aspx" />
    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
    <input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif"
        border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
    <img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif"
        width="1" height="1">
    </form>--%>
</body>
</html>
