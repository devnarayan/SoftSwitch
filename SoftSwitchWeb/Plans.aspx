<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMaster.master" AutoEventWireup="true" CodeFile="Plans.aspx.cs" Inherits="Plan" %>

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
							<%--<li><a href="Cart.aspx"><i class="fa fa-shopping-cart"></i> Cart</a></li>--%>i>
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
     <div id="project">    	
		<div class="line3">
			<div class="container">
				<div id="project1" ></div>
				<div class="row Ama">
					<div class="col-md-12">
					<span name="projects" id="projectss"></span>
					<h3>Our Amazing Business Plan</h3>
					<p>Right here we've got something you gonna love</p>
					</div>
				</div>
			</div>
		</div>          
    
    
       <div class="container">
		
		<div class="row">
			<!-- filter_block -->
				<div id="options" class="col-md-12" style="text-align: center;">	
					<ul id="filter" class="option-set" data-option-key="filter">
						<li><a class="selected" href="#filter" data-option-value="*" class="current">All Works</a></li>
						<li><a href="#filter" data-option-value=".polygraphy">Premium</a></li>
						<li><a href="#filter" data-option-value=".branding">SmallBusiness</a></li>
						<li><a href="#filter" data-option-value=".web">VOIP</a></li>
						<li><a href="#filter" data-option-value=".text_styles">Other</a></li>
					</ul>
				</div><!-- //filter_block -->
		
		
		
			<div class="portfolio_block columns3   pretty" data-animated="fadeIn">	
					<div class="element col-sm-4   gall branding">
						<a class="plS" href="images/prettyPhotoImages/pic1.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic1.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Recycled Paper - Business Card Mock Up</a> <a href="Checkout.aspx?id=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>215</li>
								<li><a class="heart" href="#"><i class="fa-heart-o"></i>14</a></li>
							</ul>
						</div>
					</div>
					<div class="element col-sm-4  gall branding">
						<a class="plS" href="images/prettyPhotoImages/pic2.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic2.jpg" alt="pic2 Gallery"/>
						</a>
						<div class="view project_descr center">
							<h3><a href="#">Environment Logos Set</a> <a href="Checkout.aspx?id=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>369</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>86</a></li>
							</ul>
						</div>
					</div>
					<div class="element col-sm-4  gall web">
						<a class="plS" href="images/prettyPhotoImages/pic3.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic3.jpg" alt="pic3 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Beag Simple WEB UI</a>  <a href="Checkout.aspx?id=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>400</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>124</a></li>
							</ul>
						</div>
					</div>
		
		
					
					<div class="element col-sm-4  gall  text_styles">
						<a class="plS" href="images/prettyPhotoImages/pic4.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic4.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Pop Candy Text Effect</a>  <a href="Checkout.aspx?id=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>480</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>95</a></li>
							</ul>
						</div>
					</div>
					<div class="element col-sm-4  gall  web">
						<a class="plS" href="images/prettyPhotoImages/pic5.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic5.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr center">
							<h3><a href="#">User Interface Elements</a>  <a href="Checkout.aspx?id=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>215</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>14</a></li>
							</ul>
						</div>
					</div>
					<div class="element col-sm-4  gall  polygraphy">
						<a class="plS" href="images/prettyPhotoImages/pic6.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic6.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Stationery Branding Mock Up</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>375</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>102</a></li>
							</ul>
						</div>
					</div>		
					<div class="element col-sm-4   gall branding">
						<a class="plS" href="images/prettyPhotoImages/pic7.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic7.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Darko - Business Card Mock Up</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>440</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>35</a></li>
							</ul>
						</div>
					</div>
					
					<div class="element col-sm-4  gall text_styles">
						<a class="plS" href="images/prettyPhotoImages/pic8.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic8.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Foil Mini Badges</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>512</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>36</a></li>
							</ul>
						</div>
					</div>
					
					<div class="element col-sm-4  gall polygraphy">
						<a class="plS" href="images/prettyPhotoImages/pic9.jpg" rel="prettyPhoto[gallery2]">
							<img class="img-responsive picsGall" src="images/prettyPhotoImages/thumb_pic9.jpg" alt="pic1 Gallery"/>
						</a>
						<div class="view project_descr ">
							<h3><a href="#">Woody Poster Text Effect</a></h3>
							<ul>
								<li><i class="fa fa-eye"></i>693</li>
								<li><a  class="heart" href="#"><i class="fa-heart-o"></i>204</a></li>
							</ul>
						</div>
					</div>			
			</div>
			
			
				
					<div class="col-md-12 cBtn  lb" style="text-align: center;">
						<ul class="load_more_cont ">
							<li class="dowbload btn_load_more">
								<a href="javascript:void(0);" >
									<i class="fa fa-arrow-down"></i>Load More Projects
								</a>
							</li>
							<li class="buy">
								<a href="#">
									<i class="fa fa-shopping-cart"></i>Buy on Themeforest
								</a>
							</li>
						</ul>
					</div>
			
		</div>
			
			<script type="text/javascript">
				jQuery(window).load(function(){
					items_set = [
					
						{category : 'branding', lika_count : '77', view_count : '234', src : 'images/prettyPhotoImages/pic9.jpg', title : 'Foil Mini Badges', content : '' },
						
						{category : 'polygraphy', lika_count : '45', view_count : '100', src : 'images/prettyPhotoImages/pic7.jpg', title : 'Darko – Business Card Mock Up', content : '' },
						
						{category : 'text_styles', lika_count : '22', view_count : '140', src : 'images/prettyPhotoImages/pic8.jpg', title : 'Woody Poster Text Effect', content : '' }
						

					];
					jQuery('.portfolio_block').portfolio_addon({
						type : 1, // 2-4 columns simple portfolio
						load_count : 3,
						
						items : items_set
					});
					$('#container').isotope({
					  animationOptions: {
						 duration: 900,
						 queue: false
					   }
					});
				});
			</script>
		</div>
    </div>
</asp:Content>
