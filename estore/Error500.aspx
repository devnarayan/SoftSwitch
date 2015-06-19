<%@ Page Language="C#" Inherits="ErrorHandlerLib.BaseErrorPage" MasterPageFile="~/Default.master"
    ValidateRequest="false" %>

<asp:Content ID="HtmlBodyContent" runat="server" ContentPlaceHolderID="BodyContent">
    <asp:HiddenField runat="server" ID="StatusCode" Value="500" />
    <asp:HiddenField runat="server" ID="ReportTitle" />
    <asp:HiddenField runat="server" ID="ReportBody" />
   
        <asp:Literal runat="server" ID="CrashReportTitle" />
    <p>
        <asp:Literal runat="server" ID="BrokenUrl" />
    </p>
     <ul>     
        <li><b>Make sure you entered the valid data</b></li>
     </ul>
    
</asp:Content>
