<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMaster.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>


<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="Server">
    Confirm Payment Information
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <div class="navmenu" style="text-align: center;">
                                <ul id="menu">
                                    <li class="active"><a href="Default.aspx#home">Home</a></li>
                                    <li><a href="Default.aspx#about">About</a></li>
                                    <li><a href="Services.aspx">Services</a></li>
                                    <li><a href="Plans.aspx">Plan</a></li>
                                    <li class="last"><a href="Default.aspx#contact">Contact</a></li>
                                    <%--<li><a href="Cart.aspx"><i class="fa fa-shopping-cart"></i>Cart</a></li>--%>
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
                        </div>
                        <!-- #camera_wrap_1 -->
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
                        <div class="accordion" id="accordion2">
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1">
                                        <h3>Step 1: Personal Details</h3>
                                    </a>
                                </div>
                                <div id="collapse1" class="accordion-body collapse" style="height: 0px;">
                                    <div class="accordion-inner">
                                        <div class="col-md-6 no_margin_left">
                                            <legend>Your Personal Details</legend>
                                            <div class="control-group">
                                                <label class="control-label">First Name</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="req1" runat="server" ValidationGroup="d" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Last Name</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="d" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Email Address</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtemail" runat="server" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="d" ControlToValidate="txtemail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>

                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label">Telephone</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtMobile" runat="server" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="d" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile number is required"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <legend>Your Address </legend>
                                            <div class="control-group">
                                                <label class="control-label">Address 1</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtAddress" runat="server" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="d" ControlToValidate="txtAddress" ErrorMessage="Address is required"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Address 2</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtAddress2" runat="server" required></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">City</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtCity" runat="server" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="d" ControlToValidate="txtCity" ErrorMessage="City required"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">ZIP</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:TextBox ID="txtZipCode" runat="server" required></asp:TextBox>
                                                    <asp:RegularExpressionValidator runat="server" ID="rexNumber" Display="Dynamic" ValidationGroup="d" ControlToValidate="txtZipCode" ValidationExpression="^[0-9]*\.?[0-9]+$" ErrorMessage="Please enter number!" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="d" ControlToValidate="txtZipCode" ErrorMessage="ZipCode required"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Country</label>
                                                <div class="controls docs-input-sizes">
                                                    <asp:DropDownList ID="ddlCountry" runat="server">
                                                        <asp:ListItem Value="UK">United Kingdon</asp:ListItem>
                                                        <asp:ListItem Value="US">United State</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="d" ControlToValidate="ddlCountry" ErrorMessage="Country Field required"></asp:RequiredFieldValidator>

                                                    <select class="span4">
                                                        <option>United Kingdom</option>
                                                        <option>United States</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-11 no_margin_left">
                                            <input type="radio" value="option1" name="payment1">
                                       Paypal<br>
                                        <input type="radio" value="option2" name="payment1">
                                        Debit/Credit Cart<br>
                                        <br><br />
                                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                        <div class="control-group">
                                            <label for="textarea" class="control-label">Amount</label>
                                            <div class="controls">
                                                <asp:Label ID="lblAmount" runat="server"></asp:Label>
                                            </div>
                                            <br>
                                             <asp:Button ID="lbtnProcedToPay" ValidationGroup="d" runat="server" Text="Submit" CssClass="btn btn-primary pull-right" Width="150px" OnClick="btnconfirmPayment_Click" Font-Bold="true" />
                <div id="proceed" runat="server">
                </div>
                                            <br>
                                            <br>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
