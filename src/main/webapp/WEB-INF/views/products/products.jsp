<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Shop a E-Commerce Online Shopping Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
<!--css-->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
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

 <!--mycart-->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="${pageContext.request.contextPath}/resources/js/simpleCart.min.js"></script>
<!-- cart -->
  
</head>
<body>
	<!--header-->
		
		
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		
		<!--header-->
		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Products</span></h3>
			</div>
		</div>
	<!--banner-->
		<!--content-->
			<div class="content">
				<div class="products-agileinfo">
						<h2 class="tittle">${subCatName}</h2>
					<div class="container">
						<div class="product-agileinfo-grids w3l">
							<div class="col-md-3 product-agileinfo-grid">
								<div class="categories">
									<h3>Categories</h3>
									<ul class="tree-list-pad">
									
									<c:set var="item_index" value="0">
									
									</c:set>
									<li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><span></span>Men's</label>
									
									 <c:forEach var="productCategory" items="${productCategoryList}">
									 
									 <c:choose>
									 
									 <c:when test="${productCategory.type==1}">
									 
									
									
											<ul>
												<li><input type="checkbox" id="item-0-${item_index}" /><label for="item-0-${item_index}">${productCategory.catName}45</label>
													
													
													<ul>
													 <c:forEach var="productSubCategoryList" items="${productCategory.productSubCategoryList}">
														<li><a href="${pageContext.request.contextPath}/showProducts/${productSubCategoryList.subCatId}/${productSubCategoryList.subCatName}"">${productSubCategoryList.subCatName}</a></li>
														 </c:forEach>
													</ul>
													
												</li>
												
												
												
												
												 
											</ul>
											<c:set var="item_index" value="${item_index+1}"/>
									
									 </c:when>
									 </c:choose>
									
									</c:forEach>
										</li>
									<c:set var="item_index" value="0"/>
										<li><input type="checkbox" checked="checked" id="item-1" /><label for="item-1"><span></span>Women's</label>
									
									 <c:forEach var="productCategory" items="${productCategoryList}">
									 
									 <c:choose>
									 
									 <c:when test="${productCategory.type==2}">
									 
									
									
											<ul>
												<li><input type="checkbox" id="item-1-${item_index}" /><label for="item-1-${item_index}">${productCategory.catName}</label>
													<ul>
													 <c:forEach var="productSubCategoryList" items="${productCategory.productSubCategoryList}">
														<li><a href="${pageContext.request.contextPath}/showProducts/${productSubCategoryList.subCatId}/${productSubCategoryList.subCatName}">${productSubCategoryList.subCatName}</a></li>
														 </c:forEach>
													</ul>
												</li>
												
												<c:set var="item_index" value="${item_index+1}"/>
												 
											 
											</ul>
									
									 </c:when>
									 </c:choose>
									
									</c:forEach>
										</li>
									
									
									
									
									
									
									 
										 
									</ul>
								</div>
								<div class="price">
									<h3>Price Range</h3>
									<ul class="dropdown-menu6">
										<li>                
											<div id="slider-range"></div>							
											<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
										</li>			
									</ul>
									<script type='text/javascript'>//<![CDATA[ 
									$(window).load(function(){
									 $( "#slider-range" ).slider({
												range: true,
												min: 0,
												max: 9000,
												values: [ 1000, 7000 ],
												slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
												}
									 });
									$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

									});//]]>  

									</script>
									<script type="text/javascript" src="js/jquery-ui.js"></script>
								</div>
								<div class="top-rates">
									<h3>Top Rates products</h3>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r.jpg" alt=""></a>	
										</div>
										<div class="recent-right">
											<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
											<p><del>$100.00</del> <em class="item_price">$09.00</em></p>
										</div>	
										<div class="clearfix"> </div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r1.jpg" alt=""></a>	
										</div>
										<div class="recent-right">
											<h6 class="best2"><a href="single.html">Duis aute irure </a></h6>
											<p><del>$100.00</del> <em class="item_price">$19.00</em></p>
										</div>	
										<div class="clearfix"> </div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r2.jpg" alt=""></a>	
										</div>
										<div class="recent-right">
											<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
											<p><del>$100.00</del> <em class="item_price">$39.00</em></p>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="recent-grids">
										<div class="recent-left">
											<a href="single.html"><img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/r3.jpg" alt=""></a>	
										</div>
										<div class="recent-right">
											<h6 class="best2"><a href="single.html">Ut enim ad minim </a></h6>
											<p><em class="item_price">$39.00</em></p>
										</div>	
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="brand-w3l">
									<h3>Brands Filter</h3>
									<ul>
										<li><a href="#">Ralph Lauren</a></li>
										<li><a href="#">adidas</a></li>
										<li><a href="#">Bottega Veneta</a></li>
										<li><a href="#">Valentino</a></li>
										<li><a href="#">Nike</a></li>
										<li><a href="#">Burberry</a></li>
										<li><a href="#">Michael Kors</a></li>
										<li><a href="#">Louis Vuitton</a></li>
										<li><a href="#">Jimmy Choo</a></li>
									</ul>
								</div>
								<div class="cat-img">
									<img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/45.jpg" alt="">
								</div>
							</div>
							<div class="col-md-9 product-agileinfon-grid1 w3l">
								<%-- <div class="product-agileinfon-top">
									<div class="col-md-6 product-agileinfon-top-left">
										<img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/img1.jpg" alt="">
									</div>
									<div class="col-md-6 product-agileinfon-top-left">
										<img class="img-responsive " src="${pageContext.request.contextPath}/resources/images/img2.jpg" alt="">
									</div>
									<div class="clearfix"></div>
								</div> --%>
								<%--
								<div class="mens-toolbar">
									<p >Showing 1–9 of 21 results</p>
									 <p class="showing">Sorting By
										<select>
											  <option value=""> Name</option>
											  <option value="">  Rate</option>
												<option value=""> Color </option>
												<option value=""> Price </option>
										</select>
									  </p> 
									  <p>Show
										<select>
											  <option value=""> 9</option>
											  <option value="">  10</option>
												<option value=""> 11 </option>
												<option value=""> 12 </option>
										</select>
									  </p>
									<div class="clearfix"></div>		
								</div>
								 --%>
								<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
									<ul id="myTab" class="nav1 nav1-tabs left-tab" role="tablist">
										<%-- <ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
									<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"><img src="${pageContext.request.contextPath}/resources/images/menu1.png"></a></li>
									<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile"><img src="${pageContext.request.contextPath}/resources/images/menu.png"></a></li>
									</ul> --%>
									<div id="myTabContent" class="tab-content">
										<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
											<div class="product-tab">
											
											
											
											 <c:forEach var="productDetails" items="${productDetailsList}">
											
												<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
													<div class="grid-arr">
														<div  class="grid-arrival">
															<figure>		
																<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/p6.jpg" class="img-responsive" alt="">
																	</div>
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/p5.jpg" class="img-responsive"  alt="">
																	</div>			
																</a>		
															</figure>	
														</div>
														<div class="block">
															<div class="starbox small ghosting"> </div>
														</div>
														<div class="women">
															<h6><a href="${pageContext.request.contextPath}/showSingleProductDetails/${productDetails.prodId}">${productDetails.prodName}</a></h6>
															<!-- <span class="size">XL / XXL / S </span> -->
															<p ><!-- <del>$100.00</del> --><em class="item_price">Rs. ${productDetails.price}</em></p>
															<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
														</div>
													</div>
												</div>
												
												
												</c:forEach>
												
												
												 
												 
												 
												
												 
												 
												 
												 
												
												 
												 
												 
												<div class="clearfix"></div>
											</div>
											
											
											
											
											
										
											
											
											
										</div>
										<%-- <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
											<div class="product-tab1">
												<div class="col-md-4 product-tab1-grid">
													<div class="grid-arr">
														<div  class="grid-arrival">
															<figure>		
																<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/p6.jpg" class="img-responsive" alt="">
																	</div>
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/p5.jpg" class="img-responsive"  alt="">
																	</div>			
																</a>		
															</figure>	
														</div>
													</div>
												</div>
												<div class="col-md-8 product-tab1-grid1 simpleCart_shelfItem">
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Refert tamen, quo modo. Quod autem meum munus dicis non equidem recuso, sed te adiungo socium. </p>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab1 prod3">
												<div class="col-md-4 product-tab1-grid">
													<div class="grid-arr">
														<div  class="grid-arrival">
															<figure>		
																<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i2.jpg" class="img-responsive" alt="">
																	</div>
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i1.jpg" class="img-responsive"  alt="">
																	</div>			
																</a>		
															</figure>	
														</div>
													</div>
												</div>
												<div class="col-md-8 product-tab1-grid1 simpleCart_shelfItem">
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Refert tamen, quo modo. Quod autem meum munus dicis non equidem recuso, sed te adiungo socium. </p>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab1">
												<div class="col-md-4 product-tab1-grid">
													<div class="grid-arr">
														<div  class="grid-arrival">
															<figure>		
																<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i4.jpg" class="img-responsive" alt="">
																	</div>
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i3.jpg" class="img-responsive"  alt="">
																	</div>			
																</a>		
															</figure>	
														</div>
														
													</div>
												</div>
												<div class="col-md-8 product-tab1-grid1 simpleCart_shelfItem">
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Refert tamen, quo modo. Quod autem meum munus dicis non equidem recuso, sed te adiungo socium. </p>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab1 prod3">
												<div class="col-md-4 product-tab1-grid">
													<div class="grid-arr">
														<div  class="grid-arrival">
															<figure>		
																<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i6.jpg" class="img-responsive" alt="">
																	</div>
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i5.jpg" class="img-responsive"  alt="">
																	</div>			
																</a>		
															</figure>	
														</div>
														
													</div>
												</div>
												<div class="col-md-8 product-tab1-grid1 simpleCart_shelfItem">
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Refert tamen, quo modo. Quod autem meum munus dicis non equidem recuso, sed te adiungo socium. </p>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab1">
												<div class="col-md-4 product-tab1-grid">
													<div class="grid-arr">
														<div  class="grid-arrival">
															<figure>		
																<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i8.jpg" class="img-responsive" alt="">
																	</div>
																	<div class="grid-img">
																		<img  src="${pageContext.request.contextPath}/resources/images/i7.jpg" class="img-responsive"  alt="">
																	</div>			
																</a>		
															</figure>	
														</div>
													</div>
												</div>
												<div class="col-md-8 product-tab1-grid1 simpleCart_shelfItem">
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Refert tamen, quo modo. Quod autem meum munus dicis non equidem recuso, sed te adiungo socium. </p>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											
										</div> --%>
									</div>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
		<!--content-->
		<!---footer--->
					<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
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
				
				
				
</body>
</html>