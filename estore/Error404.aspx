<%@ Page Language="C#" Inherits="ErrorHandlerLib.BaseErrorPage" MasterPageFile="~/Default.master"
     ValidateRequest="false" %>

<asp:Content ID="HtmlBodyContent" runat="server" ContentPlaceHolderID="BodyContent">
    <asp:HiddenField runat="server" ID="StatusCode" Value="404" />
    <asp:HiddenField runat="server" ID="ReportTitle" />
    <asp:HiddenField runat="server" ID="ReportBody" />
    <h3>
        <asp:Literal runat="server" ID="CrashReportTitle" />
    </h3>
    <p>
        <asp:Literal runat="server" ID="BrokenUrl" />
    </p>
    <p>
        Sorry, but the page you were looking for can’t be found. See below for what you
        can do about that.
    </p>
    <asp:Panel runat="server" ID="ErrorReportPanel">
        <asp:Literal runat="server" ID="CrashReportBody" />
    </asp:Panel>
</asp:Content>
