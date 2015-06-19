<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pay.aspx.cs" Inherits="Pay" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center">
                <table width="768" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="27%" height="60" valign="top"><a href="/en/shop/dep_default.asp?DepID=1">
                                        <img src="/img_com/logo_h60.jpg" width="245" height="60" border="0"></a>
                                    </td>
                                    <td valign="top" width="16%" align="right">&nbsp;</td>
                                    <td width="57%" align="right"><a href="/en/shop/dep_default.asp?DepID=5"></a></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><br /><br />
                            <div class="container">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <input type="hidden" id="hidInvoice" runat="server" />


                                        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
                                      Payment Amount:   <input type="text" id="txtAmount" name="txtAmount" />
                                        <button id="customButton" class="btn btn-primary">Purchase</button>

                                        <script>
                                            var handler = StripeCheckout.configure({
                                                key: 'pk_test_528NUhwSdPZ9nTOM0mlT1o8n',
                                                image: '/img/documentation/checkout/marketplace.png',
                                                token: function (token) {
                                                    $.ajax({
                                                        type: 'Post',
                                                        url: 'pay.aspx/StripeCharge',
                                                        data: '{tokenid:"' + token.id + '",amount:"' + $("#txtAmount").val() + '",hidInvoice:"' + $("#<%=hidInvoice.ClientID%>").val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: OnSuccess,
                                        failure: function (response) {
                                            window.location = response.d;
                                        }
                                    })
                                    function OnSuccess(response) {

                                        window.location = response.d;

                                    }
                                    // Use the token to create the charge with a server-side script.
                                    // You can access the token ID with `token.id`
                                }
                            });

                            $('#customButton').on('click', function (e) {
                                // Open Checkout with further options
                                handler.open({
                                    name: 'E-Wanta.co.uk',
                                    description: 'Stripe Payment',
                                    amount: $("#txtAmount").val()
                                });
                                e.preventDefault();
                            });

                            // Close Checkout on page navigation
                            $(window).on('popstate', function () {
                                handler.close();
                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr class="hide">
                        <td>
                            <form id="form1" runat="server">
                                <section class="events newsection">
                                    <div class="container">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Invoice Detail</h4>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="alert alert-success">
                                                        <p class="text-success" id="payAmt" runat="server"></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-check-circle fa-lg fa-fw"></i></span>
                                                            <select id="selPayType" class="form-control input-sm" runat="server">
                                                                <option value="0" disabled="disabled">Select Payment Type</option>
                                                                <option value="Visa">Visa</option>
                                                                <option value="Master Card">Master Card</option>
                                                                <option value="American Express">American Express</option>
                                                                <option value="Discover Card">Discover Card</option>
                                                            </select>
                                                            <input type="hidden" id="transStatus" runat="server" />

                                                            <input type="hidden" id="authAmount" runat="server" />
                                                            <input type="hidden" id="authAmountStripe" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-check-circle fa-lg fa-fw"></i></span>
                                                            <asp:TextBox ID="txtCardNum" CssClass="form-control input-sm" runat="server" placeholder="Card Number"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-check-circle fa-lg fa-fw"></i></span>
                                                            <asp:TextBox ID="txtCCVNumber" TextMode="Password" CssClass="form-control input-sm" runat="server" placeholder="CVC Code"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-check-circle fa-lg fa-fw"></i></span>
                                                            <%-- <asp:TextBox ID="txtExpiry" runat="server" placeholder = "Expiry Date" ></asp:TextBox>--%>
                                                            <select id="selExMonth" class="form-control input-sm" runat="server">
                                                                <option value="0" disabled="disabled">Select Month</option>
                                                                <option value="01">Jan</option>
                                                                <option value="02">Feb</option>
                                                                <option value="03">March</option>
                                                                <option value="04">Apr</option>
                                                                <option value="05">May</option>
                                                                <option value="06">June</option>
                                                                <option value="07">July</option>
                                                                <option value="08">Aug</option>
                                                                <option value="09">Sep</option>
                                                                <option value="10">Oct</option>
                                                                <option value="11">Nov</option>
                                                                <option value="12">Dec</option>
                                                            </select>

                                                            <%-- @Html.TextBoxFor(model => model.Expirydate, new { @Class = "form-control input-sm", @placeholder = "Expiry Date", @style = "border: 1px solid #ccc;" })--%>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-check-circle fa-lg fa-fw"></i></span>
                                                            <select id="selExYear" class="form-control input-sm" runat="server">
                                                                <option value="0" disabled="disabled">Select Year</option>
                                                                <option value="15">2015</option>
                                                                <option value="16">2016</option>
                                                                <option value="17">2017</option>
                                                                <option value="18">2018</option>
                                                                <option value="19">2019</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-offset-5 col-md-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </section>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">Please provide following information.</h4>
                                            </div>
                                            <div class="modal-body">
                                                <p class="text-danger" id="ErrorMessage"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <script type="text/javascript">
        //var myselect = document.getElementById("selExYear"), year = new Date().getFullYear();
        //var gen = function (max) { do { myselect.add(new Option(year++, max--), null); } while (max > 0); }(5);
        //function getYear() {
        //    alert(document.getElementById("selExYear").value())
        //}
    </script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    <script src="../js/ValidatePayment.js"></script>
    <script>
        $(document).ready(function () {
            // alert($("#<%=hidInvoice.ClientID %>")[0].value);
            $.ajax({
                type: 'Post',
                url: 'pay.aspx/IsPaymentDone',
                data: '{invocieno:"' + $("#<%=hidInvoice.ClientID %>")[0].value + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    if (response.d == "true") {
                        window.open("tempform2.aspx")
                    }
                }
            })
            function OnSuccess(response) {
                if (response.d == "true") {
                    window.open("tempform2.aspx")
                }
            }
        })
    </script>
</body>
</html>