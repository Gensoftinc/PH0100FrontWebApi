package com.gensoft.frontend.products.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gensoft.common.model.Cart;
import com.gensoft.common.model.GetCartProducts;
import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductDetails;
import com.gensoft.frontend.products.service.CartService;
import com.gensoft.frontend.products.service.GetCartProductsService;
import com.gensoft.frontend.products.service.ProductDetailsService;
import com.gensoft.rest.constant.ImageUrl;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name Aparamaje, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Controller
@Scope(WebApplicationContext.SCOPE_SESSION)
public class CartController {
	
	/** Logger */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductDetailsController.class);

	@Autowired
	private CartService cartService;
	
	@Autowired
	private GetCartProductsService getCartProductsService;
	
	@RequestMapping(value = "/addProductToCart", method = RequestMethod.GET)
	public @ResponseBody Cart addProductToCart(HttpServletRequest req, HttpServletResponse res) 
	{
		Cart cart = new Cart();

		cart.setProductId(Integer.parseInt(req.getParameter("productId")));
		cart.setProductQuantity(Integer.parseInt(req.getParameter("qauntity")));
		cart.setDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		cart.setUserId(1);
		cart.setDelStatus(0);
		
		System.out.println("cart:"+cart.toString());
		cart = cartService.insertProductsToCart(cart);

		return cart;
	}
	
	@RequestMapping(value = "/showCartProductsOfUser", method = RequestMethod.GET)
	public ModelAndView showCartProductsOfUser(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("products/checkout");
		
		List<GetCartProducts> getCartProducts = new ArrayList<GetCartProducts>();
		getCartProducts = getCartProductsService.getCartProductsOfUser(1);///hardcoded
		
		System.out.println("getCartProductsgetCartProductsgetCartProducts:"+getCartProducts);
		model.addObject("getCartProducts", getCartProducts);
		float totalPrice=0;
		int totalQty=0;
		
		
		
		for (GetCartProducts getCartProductss : getCartProducts) {
			
			totalPrice=totalPrice+getCartProductss.getPrice();
			totalQty=totalQty+getCartProductss.getProductQuantity();
		}
		System.out.println("totalPrice:"+totalPrice+" "+totalQty);
		model.addObject("totalPrice", totalPrice);
		model.addObject("totalQty", totalQty);
		model.addObject("getCartProducts", getCartProducts);
		model.addObject("productImageUrl", ImageUrl.PRODUCT_IMAGE_URL);
		return model;
	}
	
	@RequestMapping(value = "/deleteProductFromCart", method = RequestMethod.GET)
	public @ResponseBody int deleteProductFromCart(HttpServletRequest req, HttpServletResponse res) 
	{
		
		int cartId = Integer.parseInt(req.getParameter("cartId"));
		int result;
		
		System.out.println("cartId:"+cartId);
		result = cartService.deleteProductFromCart(cartId);

		return result;
	}

	@RequestMapping(value = "/updateQuantityInCart", method = RequestMethod.GET)
	public @ResponseBody int updateQuantityInCart(HttpServletRequest req, HttpServletResponse res) 
	{
		
		int cartId = Integer.parseInt(req.getParameter("cartId"));
		int newVal = Integer.parseInt(req.getParameter("newVal"));
		int result;
		
		System.out.println("cartId:"+cartId);
		result = cartService.updateQuantityOfCart(cartId,newVal);

		return result;
	}

	@RequestMapping(value = "/showRefferencePage", method = RequestMethod.GET)
	public ModelAndView showRefferencePage(HttpServletRequest req, HttpServletResponse res) 
	{
		
		ModelAndView model = new ModelAndView("products/refference_page");


		return model;
	}
	
	@RequestMapping(value = "/showPaymentPage", method = RequestMethod.GET)
	public ModelAndView showPaymentPage(HttpServletRequest req, HttpServletResponse res) 
	{
		
		ModelAndView model = new ModelAndView("products/payment");
		List<GetCartProducts> getCartProducts = new ArrayList<GetCartProducts>();
		getCartProducts = getCartProductsService.getCartProductsOfUser(1);///hardcoded
		
		System.out.println("getCartProductsgetCartProductsgetCartProducts:"+getCartProducts);
		model.addObject("getCartProducts", getCartProducts);
		float totalPrice=0;
		int totalQty=0;
		
		
		
		for (GetCartProducts getCartProductss : getCartProducts) {
			
			totalPrice=totalPrice+getCartProductss.getPrice();
			totalQty=totalQty+getCartProductss.getProductQuantity();
		}
		System.out.println("totalPrice:"+totalPrice+" "+totalQty);
		model.addObject("totalPrice", totalPrice);
		model.addObject("totalQty", totalQty);
		model.addObject("getCartProducts", getCartProducts);
		model.addObject("productImageUrl", ImageUrl.PRODUCT_IMAGE_URL);

		return model;
	}
}
