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
<c:url var="updateQuantityInCart" value="/updateQuantityInCart" />
	<!--header-->
		
		
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		
		<!--header-->
		<!-- <div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Checkout</span></h3>
			</div>
		</div> -->
	<!--banner-->

	<!--content-->
	
		<div class="content">
			<div class="cart-items">
			
				<div class="container">
				<div class="row">
				<div class="col-md-9">
					 <h2>My Shopping Bag (${totalQty})</h2>
						<script>$(document).ready(function(c) {
							$('.close1').on('click', function(c){
								$('.cart-header').fadeOut('slow', function(c){
									$('.cart-header').remove();
								});
								});	  
							});
					   </script>
					    <c:forEach var="getCartProducts" items="${getCartProducts}">
					 <div class="cart-header">
						 <!-- <div class="close1"> </div> -->
						 <div class="cart-sec simpleCart_shelfItem">
								<div class="cart-item cyc">
									 <img src="${pageContext.request.contextPath}/resources/images/p15.jpg" class="img-responsive" alt="">
								</div>
							   <div class="cart-item-info">
								<h3><a href="#"> ${getCartProducts.prodName} </a><span>Size : ${getCartProducts.size}</span><span>Price :₹ ${getCartProducts.price}</span></h3>
								<div class="color-quality">
										<h6>Quantity :</h6>
											<div class="quantity"> 
												<div class="quantity-select">      
												<input type="hidden" id="productQty${getCartProducts.cartId}" value="${getCartProducts.productQuantity}"> 
												<input type="hidden" id="realQty${getCartProducts.cartId}" value="${getCartProducts.quantity}">                     
													<div class="entry value-minus1" onclick="minus(${getCartProducts.cartId})">&nbsp;</div>
													<div class="entry value1">${getCartProducts.productQuantity}</div>
													<div class="entry value-plus1 active" onclick="plus(${getCartProducts.cartId})">&nbsp;</div>
												</div>
											</div>
												<!--quantity-->
														<!-- <script>
														$('.value-plus1').on('click', function(){
															var productQty = $( "#productQty" ).val();
															
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
															
															if(productQty<newVal)
																{
																
																}
															else
																{
																
															
															divUpd.text(newVal);
																}
														});

														$('.value-minus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
															if(newVal>=1)
															{
																
																divUpd.text(newVal);
																
															}
														});
														</script> -->
													<!--quantity-->
									</div>
									 <div class="delivery">
									 <p>Service Charges : $10.00</p>
									 <span onclick="deleteItem(${getCartProducts.cartId})"><i class="glyphicon glyphicon-trash"></i>DELETE</span>
									
									 <div class="clearfix"></div>
									 	
								</div>
								<h3 class="text-right">
								<p> Delivered in 1-1:30 hours</p>
								</h3>	
							   </div>
							   <div class="clearfix"></div>
								<hr>				
						  </div>
					 </div>
					 
					 
					 </c:forEach>
					<%--  <script>$(document).ready(function(c) {
							$('.close2').on('click', function(c){
									$('.cart-header2').fadeOut('slow', function(c){
								$('.cart-header2').remove();
							});
							});	  
							});
					 </script>
					<div class="cart-header2">
						 <div class="close2"> </div>
						  <div class="cart-sec simpleCart_shelfItem">
								<div class="cart-item cyc">
									 <img src="${pageContext.request.contextPath}/resources/images/s1.jpg" class="img-responsive" alt="">
								</div>
							   <div class="cart-item-info">
								<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
								<ul class="qty">
									<li><p>Min. order value:</p></li>
									<li><p>FREE delivery</p></li>
								</ul>
									 <div class="delivery">
									 <p>Service Charges : $10.00</p>
									 <span>Delivered in 1-1:30 hours</span>
									 <div class="clearfix"></div>
								</div>	
							   </div>
							   <div class="clearfix"></div>
													
						  </div>
					  </div>
					  <script>$(document).ready(function(c) {
							$('.close3').on('click', function(c){
									$('.cart-header3').fadeOut('slow', function(c){
								$('.cart-header3').remove();
							});
							});	  
							});
					 </script>
					<div class="cart-header3">
						 <div class="close3"> </div>
							<div class="cart-sec simpleCart_shelfItem">
								<div class="cart-item cyc">
									 <img src="${pageContext.request.contextPath}/resources/images/i7.jpg" class="img-responsive" alt="">
								</div>
							   <div class="cart-item-info">
								<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
								<ul class="qty">
									<li><p>Min. order value:</p></li>
									<li><p>FREE delivery</p></li>
								</ul>
									 <div class="delivery">
									 <p>Service Charges : $10.00</p>
									 <span>Delivered in 1-1:30 hours</span>
									 <div class="clearfix"></div>
								</div>	
							   </div> --%>
							  
							   
							</div>
							<div class="col-md-3 cartBill">
							<div class="order-summary">
							<h3>Order Summary</h3>
							<div class="price">
							Price(${totalQty} item)<strong>₹${totalPrice}</strong>
							
							</div>
							<div class="price">
							Delivery Charges<strong>₹40</strong>
							
							</div>
							<div class="clearfix"></div>
							<hr>
							<a href="#" data-text="Add To Cart" class="my-cart-b item_add set" onclick="addToCart()" >Checkout</a>
							
							</div>
							
							</div>
								
				</div>

	<!-- checkout -->	
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
				<!--copy-->
				<script>
				function deleteItem(cartId)
				{
					
					alert(cartId);
					 $ .getJSON(
								'${deleteProductFromCart}',
								{
									cartId : cartId,
																		
									ajax : 'true'
								},
								function(data) {
									alert(data);
							if(data==1)
								{
								location.reload();
								}
							else{
								alert("Failed!!!");
							}	
									 
								})
					
				}
				
				
				</script>
				
				<script>
														function plus(catId){
															
																										
															var realQty= document.getElementById("realQty"+catId).value;
															var productQty= document.getElementById("productQty"+catId).value;
															alert(productQty); 
															 var newVal =parseInt(productQty)+parseInt("1");
															alert(newVal);
															if(realQty<newVal)
																{
																
																}
															else
																{
																alert("came");
																$ .getJSON(
																		'${updateQuantityInCart}',
																		{
																			cartId : catId,
																			newVal : newVal,									
																			ajax : 'true'
																		},
																		function(data) {
																			alert(data);
																	if(data==1)
																		{
																		alert(data);
																		location.reload();
																		}
																	else{
																		alert("Failed!!!");
																	}	
																			 
																		})
															
																}  
														}
														
														function minus(catId){
															
															
															var realQty= document.getElementById("realQty"+catId).value;
															var productQty= document.getElementById("productQty"+catId).value;
															alert(productQty); 
															 var newVal =parseInt(productQty)-parseInt("1");
															alert(newVal);
															if(realQty<newVal)
																{
																
																}
															else
																{
																alert("came");
																$ .getJSON(
																		'${updateQuantityInCart}',
																		{
																			cartId : catId,
																			newVal : newVal,									
																			ajax : 'true'
																		},
																		function(data) {
																			alert(data);
																	if(data==1)
																		{
																		alert(data);
																		location.reload();
																		}
																	else{
																		alert("Failed!!!");
																	}	
																			 
																		})
															
																}  
														}

														</script>
</body>
</html>