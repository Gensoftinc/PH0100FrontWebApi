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
					
							<div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Order Summary</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
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
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Delivery Address</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
      <div class="_3llGqN">
      <div class="uK6xOa"><div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="name" required="" autocomplete="name" tabindex="1" value="Amruta"><label for="name" class="_20i8vs _3CMTvd">Name</label>
      </div>
      <div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="phone" required="" maxlength="10" autocomplete="tel" tabindex="2" value="7420983910"><label for="phone" class="_20i8vs _3CMTvd">10-digit mobile number</label></div></div>
    <div class="uK6xOa"><div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="name" required="" autocomplete="name" tabindex="1" value="Amruta"><label for="name" class="_20i8vs _3CMTvd">Name</label>
      </div>
      <div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="phone" required="" maxlength="10" autocomplete="tel" tabindex="2" value="7420983910"><label for="phone" class="_20i8vs _3CMTvd">10-digit mobile number</label></div></div>
     <div class="uK6xOa _3g_m0J"><div class="_1X5WZZ _1QG_7g"><div class="_2mJu7M Th26Zc"><textarea class="giyiJa _16qL6K _21icXK" name="addressLine1" rows="4" cols="10" tabindex="5" required="" autocomplete="street-address">3</textarea><label for="addressLine1" class="_20i8vs _3CMTvd">Address (Area and Street)</label></div><div class="_39_KcN _3-mqeJ"></div></div></div>
     <div class="uK6xOa"><div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="name" required="" autocomplete="name" tabindex="1" value="Amruta"><label for="name" class="_20i8vs _3CMTvd">Name</label>
      </div>
      <div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="phone" required="" maxlength="10" autocomplete="tel" tabindex="2" value="7420983910"><label for="phone" class="_20i8vs _3CMTvd">10-digit mobile number</label></div></div>
     <div class="uK6xOa"><div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="name" required="" autocomplete="name" tabindex="1" value="Amrutat"><label for="name" class="_20i8vs _3CMTvd">Name</label>
      </div>
      <div class="_3fgAI3 Th26Zc"><input type="text" class="_16qL6K _366U7Q" name="phone" required="" maxlength="10" autocomplete="tel" tabindex="2" value="7420983910"><label for="phone" class="_20i8vs _3CMTvd">10-digit mobile number</label></div></div>
      </div>
      <!-- address type -->
      <div class="_3XXwRR"><p class="_2dwzAy">Address Type</p><div class="_3qg3HS"><div><label for="HOME" class="_8J-bZE _2tcMoY _1Icwrf"><input type="radio" class="_2haq-9" name="locationTypeTag" readonly="" id="HOME" value="on"><div class="_6ATDKp"></div><div class="_2o59RR"><span>Home (All day delivery)</span></div></label><label for="WORK" class="_8J-bZE _2tcMoY"><input type="radio" class="_2haq-9" name="locationTypeTag" readonly="" id="WORK" value="on"><div class="_6ATDKp"></div><div class="_2o59RR"><span>Work (Delivery between 10 AM - 5 PM)</span></div></label></div></div></div>
      <a href="#" data-text="Add To Cart" class="my-cart-b item_add set" onclick="addToCart()" >Checkout</a>
      
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Payment</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
         <input type='radio' id='r11' name='occupation' value='Working' required /> credid/debit
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"></a>
              
               <div id="collapseOne" class="panel-collapse collapse in">
        
          <p>HTML stands for HyperText Markup Language. HTML is the main markup language for describing the structure of Web pages. <a href="http://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
              </div>
       <input type='radio' id='r12' name='occupation' value='Not-Working' required /> Net Banking
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"></a>
              
              <div id="collapseTwo" class="panel-collapse collapse">
    
          <p>Bootstrap is a powerful front-end framework for faster and easier web development. It is a collection of CSS and HTML conventions. <a href="http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/" target="_blank">Learn more.</a></p>
  
      </div>
              
              
        </div>
      </div>
    </div>
  </div> 						
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
				</div>
</div>
</div>

	<!-- checkout -->	
		
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
	$('#r11').on('click', function(){
		  $(this).parent().find('a').trigger('click')
		})

		$('#r12').on('click', function(){
		  $(this).parent().find('a').trigger('click')
		})
	
	</script>			
</body>
</html>