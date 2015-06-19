<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="main.master" Codebehind="info911.aspx.cs"
    Inherits="CCEstore.info911" enableSessionState="True" %>

<%@ Register TagPrefix="cc" TagName="tag" Src="wucSteps.ascx" %>

<%@ Import Namespace="System" %>

<script runat="server">
    String companyName = "";
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
<script language="javascript">
    function Iaccept()
    {
    var checkbox = document.getElementById('ctl00_cphMain_chkConfirm');
        if(document.getElementById('ctl00_cphMain_chkb911').checked && !checkbox.checked)
        {
            alert('You have not accpeted the 911 agreement');
            return false;
        }
        return true;
    }
</script>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
            <tr>
                <td class="main" valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td style="height: 13px">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td>

                                    <cc:tag ID="stepUserControl" runat="server" />
                                    
                                </td>
                            </tr>
                            <tr>
                                <td class="bg_line">
                                    <img height="1" src="<%= Page.ResolveUrl("~")%>images/pix.gif" width="1" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td class="page_cont">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                            <tr>
                                                <td class="page">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <asp:Literal ID="lblMessage" runat="server"></asp:Literal></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td><h5><Font color=red>
                                                                                
                                                                                    <asp:Label ID="Label8" runat="server" Text="Note: This is a sample 911 agreement. This agreement should be replaced by actual 911 Agreement provided by your E911 Provider."></asp:Label>
                                                                                </font></h5>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_blue">
                                                                                    
                                                                                    <asp:Label ID="Label9" runat="server" Text="Please Activate 911 Dialing"></asp:Label>:
                                                                                    </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <strong>
                                                                                    
                                                                                        <asp:Label ID="Label10" runat="server" Text="To subscribe to"></asp:Label>
                                                                                        <%Response.Write(companyName);%>
                                                                                        
                                                                                        <asp:Label ID="Label11" runat="server" Text="911 Dialing, please check the check-box below and enter your address below. Do not enter a P.O. Box."></asp:Label>
                                                                                        </strong></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:CheckBox ID="chkb911" runat="server" Checked="True"></asp:CheckBox></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <span class="error"></span>
                                                                                    <asp:Label ID="Label12" runat="server" Text="marked are required fields."></asp:Label>
                                                                                    </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_blue">
                                                                                    <strong>
                                                                                    
                                                                                        <asp:Label ID="Label13" runat="server" Text="Address Where 911 Dialing Will Be Used "></asp:Label>
                                                                                    </strong><span class="error">
                                                                                    
                                                                                        <asp:Label ID="Label14" runat="server" Text="Do not enter a P.O. Box"></asp:Label>  
                                                                                        </span></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="bg_grey" width="29%">
                                                                                    <div align="right">
                                                                                        <font face="Verdana"><span class="error"></span>
                                                                                        
                                                                                            <asp:Label ID="Label15" runat="server" Text="Street Number (*)"></asp:Label>
                                                                                        </font></div>
                                                                                </td>
                                                                                <td class="bg_grey" width="29%">
                                                                                    <asp:TextBox ID="txtStreetNum" runat="server"></asp:TextBox></td>
                                                                                <td class="bg_grey" width="33%">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        
                                                                                        <asp:Label ID="Label16" runat="server" Text="Street Name(e.g. Elm, Main) *"></asp:Label>
                                                                                        </div>
                                                                                </td>
                                                                                <td class="bg_grey" width="9%">
                                                                                    <asp:TextBox ID="txtStreetName" runat="server"></asp:TextBox></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="bg_grey">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        
                                                                                        
                                                                                        <asp:Label ID="Label17" runat="server" Text="Street Suffix (e.g. Street, Road) *"></asp:Label>
                                                                                        </div>
                                                                                </td>
                                                                                <td class="bg_grey">
                                                                                    <asp:TextBox ID="txtStreetSuffix" runat="server"></asp:TextBox>
                                                                                    <asp:DropDownList runat="server" runat="server" ID="ddlSuiteType" Visible="false">
                                                                                        <asp:ListItem Text="Apartment" Value="Apartment" />
                                                                                        <asp:ListItem Text="Basement" Value="Basement" />
                                                                                        <asp:ListItem Text="Building" Value="Building" />
                                                                                        <asp:ListItem Text="Department" Value="Department" />
                                                                                        <asp:ListItem Text="Floor" Value="Floor" />
                                                                                        <asp:ListItem Text="Front" Value="Front" />
                                                                                        <asp:ListItem Text="Hanger" Value="Hanger" />
                                                                                        <asp:ListItem Text="Key" Value="Key" />
                                                                                        <asp:ListItem Text="Lobby" Value="Lobby" />
                                                                                        <asp:ListItem Text="Lot" Value="Lot" />
                                                                                        <asp:ListItem Text="Lower" Value="Lower" />
                                                                                        <asp:ListItem Text="Office" Value="Office" />
                                                                                        <asp:ListItem Text="Penthouse" Value="Penthouse" />
                                                                                        <asp:ListItem Text="Pier" Value="Pier" />
                                                                                        <asp:ListItem Text="Rear" Value="Rear" />
                                                                                        <asp:ListItem Text="Room" Value="Room" />
                                                                                        <asp:ListItem Text="Side" Value="Side" />
                                                                                        <asp:ListItem Text="Slip" Value="Slip" />
                                                                                        <asp:ListItem Text="Stop" Value="Stop" />
                                                                                        <asp:ListItem Text="Suite" Value="Suite"  Selected="True"/>
                                                                                        <asp:ListItem Text="Trailer" Value="Trailer" />
                                                                                        <asp:ListItem Text="Trailer" Value="Trailer" />
                                                                                        <asp:ListItem Text="Unit" Value="Unit" />
                                                                                        <asp:ListItem Text="Upper" Value="Upper" />
                                                                                        
                                                                                    </asp:DropDownList>

                                                                                    </td>
                                                                                <td class="bg_grey">
                                                                                    <div align="right">
                                                                                        
                                                                                        <asp:Label ID="Label18" runat="server" Text="Address Line 2 (e.g. Suite 123)"></asp:Label>
                                                                                    </div>
                                                                                </td>
                                                                                <td class="bg_grey">
                                                                                    <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="bg_grey1" style="height: 34px">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        
                                                                                        <asp:Label ID="Label19" runat="server" Text="City (*)"></asp:Label>
                                                                                        </div>
                                                                                </td>
                                                                                <td class="bg_grey1" style="height: 34px">
                                                                                    <asp:TextBox ID="txtCity911" runat="server"></asp:TextBox></td>
                                                                                <td class="bg_grey1" style="height: 34px">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        
                                                                                        <asp:Label ID="Label20" runat="server" Text="State (*)"></asp:Label>
                                                                                        </div>
                                                                                </td>
                                                                                <td class="bg_grey1" style="height: 34px">
                                                                                    <asp:TextBox ID="txtState911" runat="server"></asp:TextBox></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="bg_grey1">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        <asp:Label ID="Label21" runat="server" Text="Country (*)"></asp:Label>
                                                                                        </div>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <asp:DropDownList ID="ddlCountries911" runat="server">
                                                                                    </asp:DropDownList></td>
                                                                                <td class="bg_grey1">
                                                                                    <div align="right">
                                                                                        <span class="error"></span>
                                                                                        <asp:Label ID="Label22" runat="server" Text="Zip Code (*)"></asp:Label>
                                                                                        </div>
                                                                                </td>
                                                                                <td class="bg_grey1">
                                                                                    <asp:TextBox ID="txtZipCode911" runat="server"></asp:TextBox></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" border="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="font">
                                                                                    <font face="Verdana">
                                                                                        <%Response.Write(companyName);%>
                                                                                        
                                                                                        <asp:Label ID="Label23" runat="server" Text="'s 911 Dialing is different than traditional 911, but it is a safe and reliable means of emergency dialing that may differ depending on where you are located when using your "></asp:Label>
                                                                                        <%Response.Write(companyName);%>
                                                                                        
                                                                                        <asp:Label ID="Label24" runat="server" Text="service"></asp:Label>.
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="Label25" runat="server" Text="Most of our customers (other than WiFi, SoftPhone and V-Phone customers) have access to either basic 911 or Enhanced 911 (E911) service. With E911 service, when you dial 911, your telephone number and registered address is simultaneously sent to the local emergency center assigned to your location, and emergency operators have access to the information they need to send help and call you back if necessary. Customers in locations where the emergency center is not equipped to receive your telephone number and address have basic 911. With basic 911, the local emergency operator answering the call will not have your call back number or your exact location, so you must be prepared to give them this information. Until you give the operator your phone number, he/she may not be able to call you back or dispatch help if the call is not completed or is not forwarded, is dropped or disconnected, or if you are unable to speak. As additional local emergency centers become capable of receiving our customers' information, "></asp:Label>
                                                                                        
                                                                                        
                                                                                        <%Response.Write(companyName);%>
                                                                                        
                                                                                        <asp:Label ID="Label26" runat="server" Text="will automatically upgrade customers with basic 911 to E911 service."></asp:Label>
                                                                                        <%Response.Write(companyName);%>
                                                                                        <asp:Label ID="Label27" runat="server" Text="will not give you notice of the upgrade."></asp:Label><br />
                                                                                        <br />
                                                                                        <asp:Label ID="Label28" runat="server" Text="Certain customers do not have access to either basic 911 or E911. If you don't have access to basic 911 or E911 your 911 call will be sent to the "></asp:Label>
                                                                                        
                                                                                        <%Response.Write(companyName);%>
                                                                                        
                                                                                        <asp:Label ID="Label29" runat="server" Text="national emergency call center. A trained agent at the emergency call center will ask for the name, telephone number and location of the customer calling 911, and then contact the local emergency center for such customer in order to send help. Examples of situations where 911 calls will be sent to the "></asp:Label>
                                                                                        
                                                                                        
                                                                                        
                                                                                        
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
                                                                                        national emergency call center.<br />
                                                                                        <br />
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
                                                                                        phone service is terminated.<br />
                                                                                        <br />
                                                                                        <font color="#ff0000">
                                                                                            <asp:CheckBox ID="chkConfirm" runat="server" />
                                                                                            <asp:Label ID="Label30" runat="server" Text="I confirm that I have read and understand how"></asp:Label>
                                                                                            <asp:Label ID="Label31" runat="server" Text=" "></asp:Label>
                                                                                            <%Response.Write(companyName);%>
                                                                                            
                                                                                            <asp:Label ID="Label32" runat="server" Text="'s 911 Dialing works. "></asp:Label>
                                                                                            </font></font>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="table_buttons" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td align="center">
                                                                    <input class="buttonDefault" onclick="history.back();" type="button" value="Back "
                                                                        name="Back" />

                                                                    <script language="JavaScript"> 
					      function BackOneScreen() {
	                         var aurl = 'plans.aspx';
				        	 window.location = aurl;
               			  }
                                                                    </script>

                                                                </td>
                                                                <td align="center">
                                                                    <asp:Button ID="submit" OnClick="submit_Click"  runat="server"
                                                                        CssClass="buttonDefault" Text="Continue"></asp:Button></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
