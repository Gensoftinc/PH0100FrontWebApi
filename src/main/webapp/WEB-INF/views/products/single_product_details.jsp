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

<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<c:url var="addProductToCart" value="/addProductToCart" />
<!--banner-->
		<!-- <div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Single</span></h3>
			</div>
		</div> -->
	<!--banner-->

	<!--content-->
		<div class="content">
			<!--single-->
			<div class="single-wl3">
				<div class="container">
					<div class="single-grids">
						<div class="col-md-9 single-grid">
							<div clas="single-top">
								<div class="single-left">
									<div class="flexslider">
										<ul class="slides">
											<li data-thumb="${pageContext.request.contextPath}/resources/images/si.jpg">
												<div class="thumb-image"> <img src="${pageContext.request.contextPath}/resources/images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
											</li>
											<li data-thumb="${pageContext.request.contextPath}/resources/images/si1.jpg">
												 <div class="thumb-image"> <img src="${pageContext.request.contextPath}/resources/images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
											</li>
											<li data-thumb="${pageContext.request.contextPath}/resources/images/si2.jpg">
											   <div class="thumb-image"> <img src="${pageContext.request.contextPath}/resources/images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
											</li> 
										 </ul>
									</div>
								</div>
								<div class="single-right simpleCart_shelfItem">
									<h4>${productDetails.prodName}</h4>
									<div class="block">
										<!-- <div class="starbox small ghosting"> </div> -->
									</div>
									<input type="hidden" id="productId" value="${productDetails.prodId}">
									<input type="hidden" id="productQty" value="${productDetails.quantity}">
									<input type="hidden" id="price" value="${productDetails.price}">
									<p id="priceDisplay"> <span>Rs</span>${productDetails.price}</p>
									<div class="description">
										<p><span>Quick Overview : </span> ${productDetails.prodDesc}.</p>
									</div>
									<div class="color-quality">
										<h6>Quantity :</h6>
											<div class="quantity"> 
												<div class="quantity-select">                           
													<div class="entry value-minus1">&nbsp;</div>
													<div class="entry value1" id="qauntity">1</div>
													<div class="entry value-plus1 active">&nbsp;</div>
												</div>
											</div>
												<!--quantity-->
														<script>
														$('.value-plus1').on('click', function(){
															var productQty = $( "#productQty" ).val();
															var price =  document.getElementById("price").value;
															
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
															
															if(productQty<newVal)
																{
																
																}
															else
																{
																
															document.getElementById("priceDisplay").innerHTML=price*newVal;
															divUpd.text(newVal);
																}
														});

														$('.value-minus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
															if(newVal>=1)
															{
																var price =  document.getElementById("price").value;
																document.getElementById("priceDisplay").innerHTML=price*newVal;
																divUpd.text(newVal);
																
															}
														});
														</script>
													<!--quantity-->
									</div>
									
										
									<div class="women">
										<span class="size">
										
			 		  <c:forEach var="productColorSizeList" items="${productColorSizeList}">
			 		  
			 		  
			 		  <a href="#" >${productColorSizeList.color}-${productColorSizeList.size} /</a>
			 		  
			 		  </c:forEach>
										 </span>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add" onclick="addToCart()">Add To Cart</a>
									</div>
									
									<div class="social-icon">
										<a href="#"><i class="icon"></i></a>
										<a href="#"><i class="icon1"></i></a>
										<a href="#"><i class="icon2"></i></a>
										<a href="#"><i class="icon3"></i></a>
									</div>
									</br>
									<div class="g2dDAR flex"><div class="_2hqjdd">Highlights</div><div class="_3WHvuP">
									<ul><li class="_2-riNZ">Fabric: Cotton</li>
									<li class="_2-riNZ">Occasion: Casual</li>
									<li class="_2-riNZ">Pattern: Striped</li>
									<li class="_2-riNZ">Color: Black</li>
									<li class="_2-riNZ">Sleeve Style: Cap Sleeve</li>
									<li class="_2-riNZ">Style: Straight</li></ul></div></div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-3 single-grid1">
							<h3>Recent Products</h3>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r.jpg" alt=""></a>	
								</div>
								<div class="recent-right">
									<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<span class=" price-in1"> $ 29.00</span>
								</div>	
								<div class="clearfix"> </div>
							</div>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r1.jpg" alt=""></a>	
								</div>
								<div class="recent-right">
									<h6 class="best2"><a href="single.html">Duis aute irure </a></h6>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<span class=" price-in1"> $ 19.00</span>
								</div>	
								<div class="clearfix"> </div>
							</div>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r2.jpg" alt=""></a>	
								</div>
								<div class="recent-right">
									<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<span class=" price-in1"> $ 19.00</span>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="recent-grids">
								<div class="recent-left">
									<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r3.jpg" alt=""></a>	
								</div>
								<div class="recent-right">
									<h6 class="best2"><a href="single.html">Ut enim ad minim </a></h6>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div> 
									<span class=" price-in1">$ 45.00</span>
								</div>	
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!--Product Description-->
						<%-- <div class="product-w3agile">
							<h3 class="tittle1">Product Description</h3>
							<div class="product-grids">
								<div class="col-md-4 product-grid">
									<div id="owl-demo" class="owl-carousel">
										<div class="item">
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1"> $ 29.00</span>
												</div>	
												<div class="clearfix"> </div>
											</div>
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r1.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Duis aute irure </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1"> $ 19.00</span>
												</div>	
												<div class="clearfix"> </div>
											</div>
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r2.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1"> $ 19.00</span>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r3.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Ut enim ad minim </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1">$ 45.00</span>
												</div>	
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="item">
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r4.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1"> $ 29.00</span>
												</div>	
												<div class="clearfix"> </div>
											</div>
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r5.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Duis aute irure </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1"> $ 19.00</span>
												</div>	
												<div class="clearfix"> </div>
											</div>
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r2.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1"> $ 19.00</span>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="recent-grids">
												<div class="recent-left">
													<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r3.jpg" alt=""></a>	
												</div>
												<div class="recent-right">
													<h6 class="best2"><a href="single.html">Ut enim ad minim </a></h6>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<span class=" price-in1">$ 45.00</span>
												</div>	
												<div class="clearfix"> </div>
											</div>
										</div>
									</div>
									<img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/woo2.jpg" alt="">
								</div>
								<div class="col-md-8 product-grid1">
									<div class="tab-wl3">
										<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
											<ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
												<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
												<li role="presentation"><a href="#reviews" role="tab" id="reviews-tab" data-toggle="tab" aria-controls="reviews">Reviews (1)</a></li>

											</ul>
											<div id="myTabContent" class="tab-content">
												<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
													<div class="descr">
														<h4>Suspendisse laoreet, augue vel mattis </h4>
														<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
														<p class="quote">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
															<div class="video">
															<iframe src="https://player.vimeo.com/video/22158502" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
															</div>
														<ul>
															<li> Twin button front fastening</li>
															<li> Length:65cm</li>
															<li> Regular fit</li>
															<li> Notched lapels</li>
															<li> Internal pockets</li>
															<li> Centre-back vent </li>
															<li> Material : Outer: 40% Linen &amp; 40% Polyamide; Body Lining: 100% Cotton; Lining: 100% Acetate</li>
														</ul>
														<p class="quote">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>

													</div>
												</div>
												<div role="tabpanel" class="tab-pane fade" id="reviews" aria-labelledby="reviews-tab">
													<div class="descr">
														<div class="reviews-top">
															<div class="reviews-left">
																<img src="${pageContext.request.contextPath}/resources/images/men3.jpg" alt=" " class="img-responsive">
															</div>
															<div class="reviews-right">
																<ul>
																	<li><a href="#">Admin</a></li>
																	<li><a href="#"><i class="glyphicon glyphicon-share" aria-hidden="true"></i>Reply</a></li>
																</ul>
																<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
															</div>
															<div class="clearfix"></div>
														</div>
														<div class="reviews-bottom">
															<h4>Add Reviews</h4>
															<p>Your email address will not be published. Required fields are marked *</p>
															<p>Your Rating</p>
															<div class="block">
																<div class="starbox small ghosting"><div class="positioner"><div class="stars"><div class="ghost" style="width: 42.5px; display: none;"></div><div class="colorbar" style="width: 42.5px;"></div><div class="star_holder"><div class="star star-0"></div><div class="star star-1"></div><div class="star star-2"></div><div class="star star-3"></div><div class="star star-4"></div></div></div></div></div>
															</div>
															<form action="#" method="post">
																<label>Your Review </label>
																<textarea type="text" Name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
																<div class="row">
																	<div class="col-md-6 row-grid">
																		<label>Name</label>
																		<input type="text" value="Name" Name="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
																	</div>
																	<div class="col-md-6 row-grid">
																		<label>Email</label>
																		<input type="email" value="Email" Name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
																	</div>
																	<div class="clearfix"></div>
																</div>
																<input type="submit" value="SEND">
															</form>
														</div>
													</div>
												</div>
												<div role="tabpanel" class="tab-pane fade" id="custom" aria-labelledby="custom-tab">
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div> --%>
					<!--Product Description-->
				</div>
			</div>
			<!--single-->
			<div class="new-arrivals-w3agile">
					<div class="container">
						<h3 class="tittle1">Best Sellers</h3>
						<div class="arrivals-grids">
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/p28.jpg" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/p27.jpg" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/p30.jpg" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/p29.jpg" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben2">
										<p>OUT OF STOCK</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/s2.jpg" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/s1.jpg" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/s4.jpg" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img  src="${pageContext.request.contextPath}/resources/images/s3.jpg" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add" >Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--new-arrivals-->
		</div>
		<!--content-->
		
		
		
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		
		
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
		 
	 function addToCart() {
										 
		 
		var productId=document.getElementById("productId").value;  
	
	    var qauntity=document.getElementById("qauntity").innerHTML;
	
		 $ .getJSON(
					'${addProductToCart}',
					{
						productId : productId,
						qauntity : qauntity,
						
						ajax : 'true'
					},
					function(data) {
				
						
				window.open("${pageContext.request.contextPath}/showCartProductsOfUser","_self");		
						 
					})


}




</script>
</body>
</html>