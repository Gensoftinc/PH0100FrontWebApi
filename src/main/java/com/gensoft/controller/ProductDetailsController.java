package com.gensoft.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductDetailsController {

	@RequestMapping(value = "/showSingleProductDetails", method = RequestMethod.GET)
	public ModelAndView showSingleProductDetails(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("single_product_details");
		
		return model;
	}
	
	@RequestMapping(value = "/showProducts", method = RequestMethod.GET)
	public ModelAndView showProducts(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("products");
		
		return model;
	}
}
