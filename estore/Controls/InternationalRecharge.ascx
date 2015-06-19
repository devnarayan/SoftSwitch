<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InternationalRecharge.ascx.cs" Inherits="CCEstore.Controls.InternationalRecharge" %>
<script type="text/javascript">
    function checkTextAreaMaxLength(textBox, e, length) {

        var mLen = textBox["MaxLength"];
        if (null == mLen)
            mLen = length;

        var maxLength = parseInt(mLen);
        if (!checkSpecialKeys(e)) {
            if (textBox.value.length > maxLength - 1) {
                if (window.event)//IE
                {
                    e.returnValue = false;
                    return false;
                }
                else//Firefox
                    e.preventDefault();
            }
        }
    }

    function checkSpecialKeys(e) {
        if (e.keyCode != 8 && e.keyCode != 46 && e.keyCode != 35 && e.keyCode != 36 && e.keyCode != 37 && e.keyCode != 38 && e.keyCode != 39 && e.keyCode != 40)
            return false;
        else
            return true;
    } 
</script>


<WebCtlIpsmarx:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">

        function onAmountChanged(sender, eventArgs) {
            var item = eventArgs.get_item();
            var val = item.get_value();

            var amounts = val.split("-");
            var foreign_amount = amounts[0].toString();
            var local_amount = amounts[1].toString();
            var currency = amounts[6].toString();
            var operator_name = amounts[8].toString();

            document.getElementById('<%=lblCollect.ClientID%>').innerHTML = '$' + local_amount;
            document.getElementById('<%=lblSend.ClientID%>').innerHTML = foreign_amount + ' ' + currency;
            document.getElementById('<%=lblOperatorName.ClientID%>').innerHTML = operator_name;

        }

        function onCountryChanged(sender, eventArgs) {
            clearRechargeInfo();
            var item = eventArgs.get_item();
            document.getElementById('<%=txtCountryCode.ClientID%>').value = '+' + item.get_value().toString();
        }

        function onPhoneNumberChanged() {
            var temp = document.getElementById('<%=txtPhoneNumber.ClientID%>').value
            clearRechargeInfo();
            document.getElementById('<%=txtPhoneNumber.ClientID%>').value = temp;
        }

        function clearRechargeInfo() {
            //clear the items first 
            var combo = $find('<%=ddlAmount.ClientID%>');
            combo.get_items().clear();
            combo.commitChanges();
            combo.clearSelection();
            document.getElementById('<%=lblCollect.ClientID%>').innerHTML = '';
            document.getElementById('<%=lblSend.ClientID%>').innerHTML = '';
            document.getElementById('<%=txtPhoneNumber.ClientID%>').value = '';
            document.getElementById('<%=txtTargetAmount.ClientID%>').value = '';
            document.getElementById('<%=lblOperatorName.ClientID%>').innerHTML = '';
        }

        function getDenominationURL() {
            var s = 'InternationalRecharge.aspx';
            if (window.location.href.indexOf('ManagePinless.aspx') > 0)
                s = 'InternationalTopUp/InternationalRecharge.aspx';

            return s;
        }

        function populateDenominations() {
            var combo = $find('<%=ddlAmount.ClientID%>');

            var phoneNumber = document.getElementById('<%=txtPhoneNumber.ClientID%>').value;
            var targetAmount = document.getElementById('<%=txtTargetAmount.ClientID%>').value;
            //clear the items first 
            combo.get_items().clear();
            combo.commitChanges();
            combo.clearSelection();
            document.getElementById('<%=lblCollect.ClientID%>').innerHTML = '';
            document.getElementById('<%=lblSend.ClientID%>').innerHTML = '';
            document.getElementById('<%=lblOperatorName.ClientID%>').innerHTML = '';

            var cc = document.getElementById('<%=txtCountryCode.ClientID%>').value

            if (phoneNumber == '' || targetAmount == '') {
                return;
            }

            $telerik.$('#loadingmessage').show();

            $telerik.$.ajax({
                async: true,
                type: "POST",
                url: getDenominationURL() + "/GetDenominations",
                data: "{ 'amount': '" + targetAmount + "','countrycode': '" + cc + "','PhoneNumber':'" + phoneNumber + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    var errormsg = JSON.parse(XMLHttpRequest.response).Message;
                    $telerik.$('#loadingmessage').hide();
                    alert(errormsg);
                },
                success: function (response) {
                    var htmlStr = '';
                    var denominations = response.d;
                    for (var i = 0; i < denominations.length; i++) {
                        var comboItem = new Telerik.Web.UI.RadComboBoxItem();
                        var inputtext = denominations[i].LocalAmount;
                        comboItem.set_text(inputtext.toString());
                        var comboText = denominations[i].ForeignAmount.toString() + "-" + //ForeignAmount 0
                                            denominations[i].LocalAmount.toString() + "-" + //LocalAmount 1
                                            denominations[i].BuyingRate.toString() + "-" + //BuyingRAte 2 
                                            denominations[i].CarrierID.toString() + "-" + //CarrierID 3
                                            denominations[i].ProductID.toString() + "-" + //ProductID 4
                                            denominations[i].InternationalTopUpProductID.toString() + "-" + //International product id   5
                                            denominations[i].ForeignCurrency + "-" + //foreign currency  6
                                             denominations[i].Provider + "-" + //provider 7
                                            denominations[i].ProductName; //Product Name 8 
                        comboItem.set_value(comboText);
                        combo.trackChanges();
                        combo.get_items().add(comboItem);

                        if (i == 0) {
                            comboItem.select();
                        }
                        combo.commitChanges();
                    }
                    
                    $telerik.$('#loadingmessage').hide();
                }
            });
        }
    </script>
</WebCtlIpsmarx:RadCodeBlock>
<table border="0" cellpadding="3" cellspacing="0" width="100%">
    <tr>
        <td width="150px" colspan="2" class="subtitle">
            <asp:Label ID="lblSendMktEmail" runat="server" meta:resourcekey="lblSellBuyPackResource1"
                Text="International Recharge"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="150px" colspan="2">
            <asp:Literal runat="server" ID="lblMessage" EnableViewState="False"></asp:Literal>
        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label31" runat="server" Text="Select Country"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlCountry" MarkFirstMatch="true" runat="server" OnClientSelectedIndexChanged="onCountryChanged"
                Height="190px" Width="350px" EnableViewState="true">
            </WebCtlIpsmarx:RadComboBox>
        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label32" runat="server" Text="Mobile Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCountryCode" runat="server" Enabled="true" Font-Bold="True"
                Font-Italic="False" Width="41px"></asp:TextBox><asp:TextBox ID="txtPhoneNumber" runat="server"
                    Width="300px" onchange="onPhoneNumberChanged()"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label34" runat="server" 
                Text="Enter amount you wish to recharge($)"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTargetAmount" runat="server" Width="346px" onchange="populateDenominations()"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label33" runat="server" Text="Sender Phone Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSenderNumber" runat="server" Width="346px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label35" runat="server" Text="Available amounts to recharge($)"></asp:Label>
        </td>
        <td>
            <WebCtlIpsmarx:RadComboBox ID="ddlAmount" runat="server" Height="190px" Width="350px"
                OnClientSelectedIndexChanged="onAmountChanged">
            </WebCtlIpsmarx:RadComboBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Note: Denominations are sorted according to best value"
                ForeColor="Blue"></asp:Label>
                <div id='loadingmessage' style='display: none'>
                <img src="Images/ajax-loader.gif" />
            </div>
            
        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label36" runat="server" Text="SMS To Receiver"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSMS" runat="server" Height="70px" Width="346px" onkeyDown="return checkTextAreaMaxLength(this,event,'30');"
                TextMode="MultiLine"></asp:TextBox><asp:Label ID="Label30" runat="server" Text="(maximum 30 characters)"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Note: Please note that not all provider support SMS"
                ForeColor="Blue"></asp:Label>

        </td>
    </tr>
    <tr>
        <td width="150px">
            <asp:Label ID="Label4" runat="server" Text="Amount Sent*" Font-Bold="True"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblSend" runat="server" Font-Bold="True" Font-Size="17px"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="*Amount sent may not be same as amount received. Some fees may apply."></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server"  Text="Operator Name" Font-Bold="True"></asp:Label>
        </td>
        <td >
            <asp:Label ID="lblOperatorName" runat="server" Font-Bold="True" Font-Overline="False"
                Font-Size="17px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="150px">
            &nbsp;
        </td>
        <td>
            <asp:Button ID="btnRecharge" runat="server" BorderColor="#AAAABB" OnClientClick="onSubmit(); return false;"
                BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CssClass="btn_style"
                TabIndex="13" Text="Recharge" Width="100px" />
            <asp:Label ID="lblCollect" runat="server" Font-Bold="True" Font-Overline="False" style="visibility:hidden"
                Font-Size="17px"></asp:Label>
        </td>
    </tr>
    </table>


<script >
    

    function validateData() {

        var fromPhone, destPhone, amount;
        fromPhone = document.getElementById("<%= txtSenderNumber.ClientID %>").value;
        destPhone = document.getElementById("<%= txtPhoneNumber.ClientID %>").value;
        combo = $find("<%= ddlAmount.ClientID %>");
        var countrycombo = $find("<%= ddlCountry.ClientID %>");
        

        //amount
        var selitem = combo.get_selectedItem();
        amount = selitem.get_value();

        //country code
        selitem = countrycombo.get_selectedItem();
        var countrycode = selitem.get_value();

        //carrier
        //selitem = carriercombo.get_selectedItem();
        //var carrierid = selitem.get_value();

        if (countrycode == "0") {
            showMessage("Please select country");
            return false;
        }

        //if (carrierid == "0") {
        //    showMessage("Please select carrier");
        //    return false;
        //}

        if (amount == "0") {
            showMessage("Please select amount");
            return false;
        }

        if (destPhone == "") {
            showMessage("Please enter international phone number");
            return false;
        }

       


        if (fromPhone == "") {
            showMessage("Please enter local phone number");
            return false;
        }

         

        return confirm('Please make sure the information you entered in the amount and phone number is correct becuase once you confirm you cannot revert the mobile top up transaction.')
    }
</script>