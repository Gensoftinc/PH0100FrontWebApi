<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<title>New Shop a E-Commerce Online Shopping Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
<!--css-->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>

<link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<!--css-->

<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<!--search jQuery-->

 <!--mycart-->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="${pageContext.request.contextPath}/resources/js/simpleCart.min.js"></script>
<!-- cart -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<c:url var="deleteProductFromCart" value="/deleteProductFromCart" />
	<!--header-->
		
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		
		<div class="content">	
				<div class="container">
				
				<div class="row">
        <div class="single-wl3">
          
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 bhoechie-tab">
	                <div class="bhoechie-tab-content">
	      			</div>
	 
	                <div class="bhoechie-tab-content active">
	                <div class="referal_sec">
	                   <div class="col-sm-5"></div>
	                          <!--  <div class="col-sm-2">
				                  <div class="radiowidth"><input type="radio" name="Android" value="Android"><strong>Android</strong></div>
				               </div>
				               <div class="col-sm-2">
				                   <div class="radiowidth"><input type="radio" name="ios" value="ios"><strong>IOS</strong></div>
				               </div> -->
				                 <div class="col-sm-3"></div>
				               <div class="clearfix"></div>
				              
				                <div class="detls_input">
						              <div class="col-sm-4">
						              <input type="text" placeholder="email id">
						              </div>
						               <div class="col-sm-1 text-center">
									        	<a href="#" class="activestate">OR</a>
									   </div>
									   <div class="col-sm-4">
						              <input type="text" placeholder="Phone Number">
						              </div>
						               
							         <div class="col-sm-1 ">
									        	
									   </div>
							          <div class="col-sm-2">   
							          <p class="text-center"><input type="submit"  value="Send"></p> 
							          
							           </div>
						           </div> 
			           				<hr>
		                <img src="${pageContext.request.contextPath}/resources/images/referral-banner.jpg" class="img-responsive" alt="referral banner">
		                <div class="dotted-line"></div>
		                <%-- <p class="text-center">Share following promocode with your friends and family you both earn 50.rs Cash in your wallet</p>
		                 <p class="text-center"><strong>Scan Qr Code</strong><br><img src="${pageContext.request.contextPath}/resources/images/qrcode.jpg"></p>
		                <p class="text-center refrl_cd ">Referral Code : <span>kYC123</span></p> --%>
		                
		             </div>   
	                </div>
            </div>
               
            </div>
             </div>
				</br>
				

	
		</div>
					<!---footer--->
					<div class="footer-w3l">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-3 footer-grid">
									<h4>About </h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
									<div class="social-icon">
										<a href="#"><i class="icon"></i></a>
										<a href="#"><i class="icon1"></i></a>
										<a href="#"><i class="icon2"></i></a>
										<a href="#"><i class="icon3"></i></a>
									</div>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>My Account</h4>
									<ul>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="registered.html"> Create Account </a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Information</h4>
									<ul>
										<li><a href="index.html">Home</a></li>
										<li><a href="products.html">Products</a></li>
										<li><a href="codes.html">Short Codes</a></li>
										<li><a href="mail.html">Mail Us</a></li>
										<li><a href="products1.html">products1</a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid foot">
									<h4>Contacts</h4>
									<ul>
										<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">E Comertown Rd, Westby, USA</a></li>
										<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">1 599-033-5036</a></li>
										<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com"> example@mail.com</a></li>
										
									</ul>
								</div>
							<div class="clearfix"> </div>
							</div>
							
						</div>
					</div>
					<!---footer--->
					<!--copy-->
					<div class="copy-section">
						<div class="container">
							<div class="copy-left">
								<p>&copy; 2016 New Shop . All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
							</div>
							<div class="copy-right">
								<img src="${pageContext.request.contextPath}/resources/images/card.png" alt=""/>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
			</div>
				
</body>
</html>