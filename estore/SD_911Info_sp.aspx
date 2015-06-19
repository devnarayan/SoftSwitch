<%@ Page Language="C#" AutoEventWireup="true" Codebehind="SD_911Info.aspx.cs" Inherits="CCEstore.SD_911Info"
    MasterPageFile="mainService.master" %>

<script runat="server">
    String companyName = SipKernel.DB5E.Distributor.GetCompanyName(PayCentral.DB5E.Customer.getDistributorID());
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">


          <table width="680px">
        <tr>
            <td>
                <asp:Label id="lblError" runat="server" CssClass="error" ForeColor="Red" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="heading">
                <asp:Label ID="Label1" runat="server" Text="Edit 911 Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#ffffff">
                <font face="Verdana">
                    <br>
                    <small>
                        <%Response.Write(companyName);%>
                        911 Dialing is different than traditional 911, but it is a safe and reliable means
                        of emergency dialing that may differ depending on where you are located when using
                        your
                        <%Response.Write(companyName);%>
                        service.<br>
                        <br>
                        Most of our customers (other than WiFi, SoftPhone and V-Phone customers) have access
                        to either basic 911 or Enhanced 911 (E911) service. With E911 service, when you
                        dial 911, your telephone number and registered address is simultaneously sent to
                        the local emergency center assigned to your location, and emergency operators have
                        access to the information they need to send help and call you back if necessary.
                        Customers in locations where the emergency center is not equipped to receive your
                        telephone number and address have basic 911. With basic 911, the local emergency
                        operator answering the call will not have your call back number or your exact location,
                        so you must be prepared to give them this information. Until you give the operator
                        your phone number, he/she may not be able to call you back or dispatch help if the
                        call is not completed or is not forwarded, is dropped or disconnected, or if you
                        are unable to speak. As additional local emergency centers become capable of receiving
                        our customers' information,
                        <%Response.Write(companyName);%>
                        will automatically upgrade customers with basic 911 to E911 service.
                        <%Response.Write(companyName);%>
                        will not give you notice of the upgrade.<br>
                        <br>
                        Certain customers do not have access to either basic 911 or E911. If you don't have
                        access to basic 911 or E911 your 911 call will be sent to the
                        <%Response.Write(companyName);%>
                        national emergency call center. A trained agent at the emergency call center will
                        ask for the name, telephone number and location of the customer calling 911, and
                        then contact the local emergency center for such customer in order to send help.
                        Examples of situations where 911 calls will be sent to the
                        <%Response.Write(companyName);%>
                        national emergency call center include when there is a problem validating a customer's
                        address, the customer is identified with an international location, or the customer
                        is located in an area that is not covered by the landline 911 network. In addition,
                        if you use a WiFi, SoftPhone or V-Phone, due to the portable nature of these Devices,
                        your 911 calls will be routed to the
                        <%Response.Write(companyName);%>
                        national emergency call center. Emergency personnel do not receive your phone number
                        or physical location when your 911 call is routed to the
                        <%Response.Write(companyName);%>
                        national emergency call center.<br>
                        <br>
                        You must register with
                        <%Response.Write(companyName);%>
                        the physical location where you will utilize
                        <%Response.Write(companyName);%>
                        phone service (Service) for each phone line. Also note that if you move your device
                        to another location, you must register your new location. If you do not register
                        your new location, any 911 call you make may be sent to an emergency center near
                        your old location. You will register your initial location of use when you subscribe
                        to the Service. This process can take several hours, and you will receive a confirmation
                        email once 911 Dialing has been activated for your initial location or for a newly
                        registered location. Regardless of what address you register for a WiFi, SoftPhone
                        or V-Phone, emergency calls you make from these devices will be routed to the
                        <%Response.Write(companyName);%>
                        national emergency response center. Remember that our 911 Dialing service will not
                        function in the event of a broadband or power outage or if your broadband, ISP or
                        <%Response.Write(companyName);%>
                        phone service is terminated.<br>
                        <br>
                        <font color="#ff0000">By clicking "Active Service", you confirm that you have read and
                            understand how
                            <%Response.Write(companyName);%>
                            's 911 Dialing works. </font></small></font>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center">
                    <asp:Button ID="btnPay" runat="server" CssClass="Button" Text="Activate Service /Apply New Change"
                        Width="234px" OnClick="btnPay_Click"></asp:Button>
                </div>
            </td>
        </tr>
    </table>
      
            

</asp:Content>
