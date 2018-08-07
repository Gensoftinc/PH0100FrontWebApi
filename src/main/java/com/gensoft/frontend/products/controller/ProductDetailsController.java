package com.gensoft.frontend.products.controller;

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
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductDetails;
import com.gensoft.common.service.ProductCategoryService;
import com.gensoft.exception.ApplicationException;
import com.gensoft.frontend.products.model.ProductColorSize;
import com.gensoft.frontend.products.service.ProductDetailsService;
import com.gensoft.rest.constant.ImageUrl;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Controller
@Scope(WebApplicationContext.SCOPE_SESSION)
public class ProductDetailsController {

	/** Logger */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductDetailsController.class);

	@Autowired
	private ProductDetailsService productDetailsService;

	@Autowired
	private ProductCategoryService productCategoryService;

	/** Product categories list */
	protected static List<ProductCategory> productCategoryList;

	/**
	 * @return {@link List} - list of all product categories.
	 */
	public List<ProductCategory> getProductCategoryList() {
		if (productCategoryList == null || productCategoryList.isEmpty()) {
			try {
				productCategoryList = productCategoryService.getAllProductCatecoryWithSubCategory(0);
				LOGGER.info("productCategoryList {}.", productCategoryList);
			} catch (Exception e) {
				LOGGER.error("Error in show products.", e);
				throw new ApplicationException("Error in show products.", e);
			}
		}
		return productCategoryList;
	}

	@RequestMapping(value = "/showProductsHome", method = RequestMethod.GET)
	public ModelAndView showProductsHome(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("products/products");
		model.addObject("productCategoryList", getProductCategoryList());
		return model;
	}

	@RequestMapping(value = "/showProducts/{subCatId}/{subCatName}", method = RequestMethod.GET)
	public ModelAndView showProducts(@PathVariable int subCatId, @PathVariable String subCatName,
			HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("products/products");
		model.addObject("productCategoryList", getProductCategoryList());
		List<ProductDetails> productDetailsList = productDetailsService.getProductBySubCatId(subCatId);
		model.addObject("productDetailsList", productDetailsList);
		model.addObject("subCatName", subCatName);
		model.addObject("productImageUrl", ImageUrl.PRODUCT_IMAGE_URL);
		return model;
	}

	@RequestMapping(value = "/showSingleProductDetails/{productId}", method = RequestMethod.GET)
	public ModelAndView showSingleProductDetails(@PathVariable int productId, HttpServletRequest req,
			HttpServletResponse res) {
		ModelAndView model = new ModelAndView("products/single_product_details");
		LOGGER.info("product Id is {}.", productId);
		ProductDetails productDetails = productDetailsService.getProductDetailsByProductId(productId, 0);
		List<ProductColorSize> productColorSizeList = productDetailsService.getProductColorSizeQtyByProductId(productId,
				0);
		model.addObject("productDetails", productDetails);
		model.addObject("productColorSizeList", productColorSizeList);
		return model;
	}
}