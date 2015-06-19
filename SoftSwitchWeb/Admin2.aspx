<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Admin2.aspx.cs" Inherits="Admin2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="divUser"><%: Context.User.Identity.Name %></div>
    <script src="Scripts/jquery-1.10.2.min.js"></script>

    <script>
        $(document).ready(function () {
            localStorage.setItem("token", $("#divUser").html());
            location.href = "Admin/Content.aspx";
        })
    </script>
    </div>
    </form>
</body>
</html>

