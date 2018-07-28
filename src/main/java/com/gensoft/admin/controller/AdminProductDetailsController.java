package com.gensoft.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminProductDetailsController {

	
	/**
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/showCategoryDetails", method = RequestMethod.GET)
	public ModelAndView showCategoryDetails(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("admin/e-commerce/add_product_category");
		
		return model;
	}
	
	/**
	 * 
	 * @param req	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/showSubCategoryDetails", method = RequestMethod.GET)
	public ModelAndView showSubCategoryDetails(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("admin/e-commerce/product_sub_category");
		
		return model;
	}
	
	/**
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/showProductDetails", method = RequestMethod.GET)
	public ModelAndView showProductDetails(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("admin/e-commerce/product_details");
		
		return model;
	}
	
	/**
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/showAllProduct", method = RequestMethod.GET)
	public ModelAndView showAllProduct(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("admin/e-commerce/show_products");
		
		return model;
	}
	
}
