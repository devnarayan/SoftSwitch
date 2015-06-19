<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteMaster.Master"  CodeFile="Paypal.aspx.cs" Inherits="Paypal" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <div id="project">
        <div class="line3">
            <div class="container">
                <div id="project1"></div>
                <div class="row Ama">
                    <div class="col-md-12">
                        <span name="projects" id="projectss"></span>
                        <h3>Our Amazing Works</h3>
                        <p>Right here we've got something you gonna love</p>

                        <div class="section odd">
                            <!--start content-->
                            <!--section title-->
                            <%-- <div class="section-title pull-left">
                <h1>Purchase Script Word</h1>
            </div>--%>
                            <!--end section title-->
                            <br />
                            <br />
                            <br />
                            <div class="content clearfix" style="background: #fff;">
                                <div class="column_one_half">
                                    <h3>Confirm Information </h3>
                                    <hr />
                                    <table>
                                        <tr>
                                            <td>Price:</td>
                                            <td><b>$
                                                <asp:Label ID="lblPrice" runat="server"></asp:Label>
                                                USD</b></td>
                                        </tr>
                                        <tr>
                                            <td>Customer ID:</td>
                                            <td>
                                                <asp:Label ID="lblID" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Name: </td>
                                            <td>
                                                <asp:Label ID="lblName" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Email ID:</td>
                                            <td>
                                                <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Mobile No:</td>
                                            <td>
                                                <asp:Label ID="lblContact" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Address:</td>
                                            <td>
                                                <asp:Label ID="lblAddress1" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:Label ID="lblAddress2" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:Label ID="lblAddress3" runat="server"></asp:Label></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="column_one_half last">
                                    <hr />
                                    <iframe src="Buy.aspx" width="200px" height="100px" frameborder="0" scrolling="no"></iframe>
                                    <!-- Begin Official PayPal Seal -->
                                    <img src="https://www.paypal.com/en_US/i/icon/verification_seal.gif" border="0" alt="Official PayPal Seal"><!-- End Official PayPal Seal -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--start page-->
</asp:Content>
