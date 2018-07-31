package com.gensoft.frontend.products.controller;

import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductDetails;
import com.gensoft.common.service.ProductCategoryService;
import com.gensoft.frontend.products.model.ProductColorSize;
 import com.gensoft.frontend.products.service.ProductDetailsService;
import com.gensoft.rest.constant.ImageUrl;
 

@Controller
@Scope("session")
public class ProductDetailsController {

	
	private static final Logger logger = LoggerFactory.getLogger(ProductDetailsController.class);
	
	
	 @Autowired
	 private ProductDetailsService  productDetailsService;
	
	 @Autowired
	private ProductCategoryService productCategoryService;
	 
	 public static List<ProductCategory> productCategoryList;
	 
	 
	@RequestMapping(value = "/showProductsHome", method = RequestMethod.GET)
	public ModelAndView showProductsHome(HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("products/products");
		 
		try {
		
			productCategoryList=productCategoryService.getAllProductCatecoryWithSubCategory(0);
			
			 logger.info("productCategoryList {}.", productCategoryList.toString());
		}catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		model.addObject("productCategoryList", productCategoryList);
		
		return model;
	}
	
	
	
	
	@RequestMapping(value = "/showProducts/{subCatId}/{subCatName}", method = RequestMethod.GET)
	public ModelAndView showProducts(@PathVariable int subCatId, @PathVariable String subCatName, HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("products/products");
		 
		try {
		
			productCategoryList=productCategoryService.getAllProductCatecoryWithSubCategory(0);
			
			 logger.info("productCategoryList {}.", productCategoryList.toString());
		}catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		model.addObject("productCategoryList", productCategoryList);
		
		
		List<ProductDetails> productDetailsList=new ArrayList<ProductDetails>();
		
		productDetailsList=productDetailsService.getProductBySubCatId(subCatId);
		
		model.addObject("productDetailsList", productDetailsList);
		model.addObject("subCatName", subCatName);	
		model.addObject("productImageUrl", ImageUrl.PRODUCT_IMAGE_URL);
		System.out.println("productDetailsList  "+productDetailsList.toString());
		
		
		return model;
	}

	@RequestMapping(value = "/showSingleProductDetails/{productId}", method = RequestMethod.GET)
	public ModelAndView showSingleProductDetails(@PathVariable int productId, HttpServletRequest req, HttpServletResponse res )
	{
		ModelAndView model=new ModelAndView("products/single_product_details");
		 
	  
	 
	 logger.info("product Id is {}.", productId);
		ProductDetails productDetails=new ProductDetails();
		productDetails=productDetailsService.getProductDetailsByProductId(productId,0);
	 
		List<ProductColorSize> productColorSizeList=new ArrayList<ProductColorSize>();
		productColorSizeList=productDetailsService.getProductColorSizeQtyByProductId(productId, 0);
		
		model.addObject("productDetails", productDetails);
		model.addObject("productColorSizeList", productColorSizeList);
		return model;
	}

}
