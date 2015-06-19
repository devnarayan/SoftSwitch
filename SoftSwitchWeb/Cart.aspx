<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMaster.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">Confirm Payment Information
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="home">
    	<div class="headerLine">
	<div id="menuF" class="default">
		<div class="container">
			<div class="row">
				<div class="logo col-md-4">
					<div>
						<a href="#">
							<img src="images/logo.png">
						</a>
					</div>
				</div>
				<div class="col-md-8">
					<div class="navmenu"style="text-align: center;">
						<ul id="menu">
							<li class="active" ><a href="Default.aspx#home">Home</a></li>
							<li><a href="Default.aspx#about">About</a></li>
							<li><a href="Services.aspx">Services</a></li>
							<li><a href="Plans.aspx">Plan</a></li>
							<li class="last"><a href="Default.aspx#contact">Contact</a></li>
							<li><a href="Cart.aspx"><i class="fa fa-shopping-cart"></i> Cart</a></li>i>
							<!--li><a href="#features">Features</a></li-->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="container">
			<div class="row wrap">
				<div class="col-md-12 gallery"> 
						<div class="camera_wrap camera_white_skin" id="camera_wrap_1">
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>We listen.</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>We discuss.</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>We develop.</h2>
								</div>
							</div>
						</div><!-- #camera_wrap_1 -->
				</div>
			</div>
		</div>
	</div>
    </div>
    <div id="about">
        <div class="line2">
            <div class="container">
                <div class="row Fresh">
                    <div class="col-md-12">
                        <h1>Shopping Cart</h1>
                        <br>

                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Remove</th>
                                    <th>Image</th>
                                    <th>Product Name</th>
                                    <th>Model</th>
                                    <th>Quantity</th>
                                    <th>Unit Price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="">
                                        <input type="checkbox" value="option1" id="optionsCheckbox"></td>
                                    <td class="muted center_text"><a href="product.html">
                                        <img src="css/images/macbook-pro.jpg"></a></td>
                                    <td>MacBook Pro</td>
                                    <td>Product 18</td>
                                    <td>
                                        <input type="text" placeholder="1" class="input-mini"></td>
                                    <td>$2,350.00</td>
                                    <td>$2,350.00</td>
                                </tr>
                                <tr>
                                    <td class="">
                                        <input type="checkbox" value="option1" id="optionsCheckbox"></td>
                                    <td class="muted center_text"><a href="product.html">
                                        <img src="css/images/macbook-pro.jpg"></a></td>
                                    <td>MacBook Pro</td>
                                    <td>Product 18</td>
                                    <td>
                                        <input type="text" placeholder="1" class="input-mini"></td>
                                    <td>$2,350.00</td>
                                    <td>$2,350.00</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td><strong>$4,700.00</strong></td>
                                </tr>
                            </tbody>
                        </table>

                        <form class="form-horizontal">
                            <fieldset>


                                <div class="accordion" id="accordion2">
                                    <div class="accordion-group">
                                        <div class="accordion-heading">

                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                                <h3>Apply discount code</h3>
                                            </a>
                                        </div>
                                        <div id="collapseOne" class="accordion-body collapse in">
                                            <div class="accordion-inner">
                                                <div class="control-group">
                                                    <label for="input01" class="control-label">Discount code: </label>
                                                    <div class="controls">
                                                        <input type="text" id="input01" class="input-xlarge" placeholder="Enter your coupon here">
                                                        <p class="help-block">You can only use one discount code at a time</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                                <h3>Use gift voucher</h3>
                                            </a>
                                        </div>
                                        <div id="collapseTwo" class="accordion-body collapse">
                                            <div class="accordion-inner">
                                                <div class="control-group">
                                                    <label for="input01" class="control-label">Gift voucher: </label>
                                                    <div class="controls">
                                                        <input type="text" id="input01" class="input-xlarge" placeholder="Enter your gift voucher here">
                                                        <p class="help-block">You can use multiple gift vouchers at a time</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <button class="btn btn-primary" type="submit">Update</button>
                                    </div>
                                    <div class="col-md-2">
                                        <button class="btn btn-primary" type="submit">Continue shopping</button>
                                    </div>
                                    <div class="col-md-5">
                                        <a href="checkout.html" class="btn btn-primary pull-right">Checkout</a>
                                    </div>
                                </div>
                            </fieldset>
                        </form>

                    </div>
                    <!-- /container -->





                    <!-- Le javascript
================================================== -->
                    <!-- Placed at the end of the document so the pages load faster -->
                    <script src="js/jquery.min.js"></script>
                    <script src="bootstrap/js/bootstrap.js"></script>
                    <script src="js/jquery.rating.pack.js"></script>
                    <script>
                        $(function () {
                            $('#theme_switcher ul li a').bind('click',
                                function (e) {
                                    $("#switch_style").attr("href", "http://bootswatch.com/" + $(this).attr('rel') + "/bootstrap.min.css");
                                    return false;
                                }
                            );
                        });
                    </script>


                </div>
            </div>
        </div>
    </div>
</asp:Content>
