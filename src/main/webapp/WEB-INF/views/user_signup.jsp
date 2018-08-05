<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>New Shop a E-Commerce Online Shopping Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
<!--css-->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<!--search jQuery-->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="${pageContext.request.contextPath}/resources/js/simpleCart.min.js"></script>
<!-- cart -->
  <script defer src="${pageContext.request.contextPath}/resources/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flexslider.css" type="text/css" media="screen" />
<script src="${pageContext.request.contextPath}/resources/js/imagezoom.js"></script>
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

  <!--mycart-->
  <!--start-rate-->
<script src="${pageContext.request.contextPath}/resources/js/jstarbox.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!--//End-rate-->
<link href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		});
		});
	</script>


</head>
<body>

<div class="header">
			<div class="header-top">
				<div class="container">
					 <div class="top-left">
						<a href="#"> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> +0123-456-789</a>
					</div>
					<div class="top-right">
					<ul>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="registered.html"> Create Account </a></li>
					</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- <div class="heder-bottom">
				<div class="container">
					<div class="logo-nav">
						<div class="logo-nav-left">
							<h1><a href="index.html">New Shop <span>Shop anywhere</span></a></h1>
						</div>
						<div class="logo-nav-left1">
							<nav class="navbar navbar-default">
							Brand and toggle get grouped for better mobile display
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.html" class="act">Home</a></li>	
									Mega Menu
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.html">Clothing</a></li>
														<li><a href="products.html">Wallets</a></li>
														<li><a href="products.html">Shoes</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html"> Underwear </a></li>
														<li><a href="products.html">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.html">Sunglasses</a></li>
														<li><a href="products.html">Wallets,Bags</a></li>
														<li><a href="products.html">Footwear</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html">Accessories</a></li>
														<li><a href="products.html">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products.html"><img src="images/woo.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products.html"><img src="images/woo1.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.html">Clothing</a></li>
														<li><a href="products.html">Wallets</a></li>
														<li><a href="products.html">Shoes</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html"> Underwear </a></li>
														<li><a href="products.html">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.html">Sunglasses</a></li>
														<li><a href="products.html">Wallets,Bags</a></li>
														<li><a href="products.html">Footwear</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html">Accessories</a></li>
														<li><a href="products.html">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.html"><img src="images/woo3.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.html"><img src="images/woo4.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li><a href="codes.html">Short Codes</a></li>
									<li><a href="mail.html">Mail Us</a></li>
								</ul>
							</div>
							</nav>
						</div>
						<div class="logo-nav-right">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul> cd-header-buttons
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Search...">
								</form>
							</div>	
						</div>
						<div class="header-right2">
							<div class="cart box_1">
								<a href="checkout.html">
									<h3> <div class="total">
										<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
										<img src="images/bag.png" alt="" />
									</h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
								<div class="clearfix"> </div>
							</div>	
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div> -->
		</div>
<!--header-->
		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Sign Up</span></h3>
			</div>
		</div>
	<!--banner-->
<!--content-->
		<div class="content">
				<!--login-->
			<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Sign Up</h3>
					<form action="${pageContext.request.contextPath}/submitUserSignUp" method="post">
					
					
					<div class="row">
							<div class="col-lg-4 in-gp-tl">
								<div class="sign-up">
									 
									<input type="text" class="form-control" name="first_name" placeholder="First Name" required>
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
							<div class="col-lg-4 in-gp-tb">
								<div class="sign-up">
									<input type="text" class="form-control" name="middle_name" placeholder="Middle Name" required>
									 
								</div><!-- /input-group -->
							</div>
							
							<div class="col-lg-4 in-gp-tb">
								<div class="sign-up">
									<input type="text" class="form-control" name="last_name" placeholder="Last Name" required>
									 
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
						</div>
						
						<div class="row">
							<div class="col-lg-6 in-gp-tl">
								<div class="sign-up">
									 
									<input type="email" class="form-control" name="email" placeholder="Email" required>
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
							<div class="col-lg-6 in-gp-tb">
								<div class="sign-up">
									<input type="password" class="form-control" name="password" placeholder="Password" required>
									 
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
						</div>
						
						<div class="row">
							<div class="col-lg-6 in-gp-tl">
								<div class="sign-up">
									 
									<input type="number" class="form-control" name="contact_no" placeholder="Contact No" required>
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
							<div class="col-lg-6 in-gp-tb">
								<div class="sign-up">
									<input type="number" class="form-control" name="aadhar_no" placeholder="Aadhar No" required>
									 
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
						</div>
						
						
						<div class="row">
							<div class="col-lg-6 in-gp-tl">
								<div class="sign-up">
									 
									 <textarea class="text-area" name="address" placeholder="Address" rows="4" cols="50" required></textarea>
									<!-- <input type="text" class="form-control" placeholder="Email" required> -->
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
							<div class="col-lg-6 in-gp-tb">
								<div class="sign-up">
									<input type="number" name="pin_code" class="form-control" placeholder="Pin Code" required>
									 
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
						</div>
						
					 <div class="row">
							<div class="col-lg-6 in-gp-tl">
								<div class="sign-up">
									 
									<input type="text" class="form-control" name="referred_by" placeholder="Enter Referred Code">
									 
								</div><!-- /input-group -->
							</div><!-- /.col-lg-6 -->
							<!-- <div class="col-lg-6 in-gp-tb">
								<div class="sign-up">
									<input type="submit" value="Submit">
									 
								</div>/input-group
							</div> --><!-- /.col-lg-6 -->
						</div>
						 
						
						 
						 
						
						 
						 <div class="row">
						 <div class="col-lg-5 in-gp-tl">
						 <div class="sign-up">
						
						 
					 
						</div>
						</div>
							<div class="col-lg-6 in-gp-tl">
						 <div class="sign-up">
						
						 
						<input type="submit" value="Submit">
						</div>
						</div>
						
						</div>
					</form>
				</div>
				
			</div>
		</div>
				<!--login-->
		</div>
		<!--content-->
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		
		
</body>
</html>