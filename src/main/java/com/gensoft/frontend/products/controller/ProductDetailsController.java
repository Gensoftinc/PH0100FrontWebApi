package com.gensoft.frontend.products.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gensoft.frontend.products.model.ProductDetails;
import com.gensoft.frontend.products.service.ProductDetailsService;

@Controller
@Scope("session")
public class ProductDetailsController {

	 @Autowired
	 ProductDetailsService  productDetailsService;
	
	
	@RequestMapping(value = "/showProducts", method = RequestMethod.GET)
	public ModelAndView showProducts(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("products");
		 
		System.out.println("Get Product By subCatId ");
		
		List<ProductDetails> productDetailsList=new ArrayList<ProductDetails>();
		
		productDetailsList=productDetailsService.getProductBySubCatId(1);
		
		
		System.out.println("productDetailsList  "+productDetailsList.toString());
		
		return model;
	}
	
	
	
	@RequestMapping(value = "/showSingleProductDetails", method = RequestMethod.GET)
	public ModelAndView showSingleProductDetails(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("single_product_details");
		 
	 
		return model;
	}
	
}
