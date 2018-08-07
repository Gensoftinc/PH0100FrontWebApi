package com.gensoft.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gensoft.common.model.ImageDetails;
import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductDetails;
import com.gensoft.common.model.ProductSubCategory;
import com.gensoft.common.service.ProductCategoryService;
import com.gensoft.common.service.ProductSubCategoryService;
import com.gensoft.frontend.products.service.ProductDetailsService;

/**
 * 
 * @author KUdavant, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 *
 */
@Controller
public class AdminProductDetailsController {

	@Autowired
	ProductCategoryService productCategoryService;

	@Autowired
	ProductSubCategoryService productSubCategoryService;

	@Autowired
	ProductDetailsService productDetailsService;

	List<ImageDetails> imageDetailsList;

	@RequestMapping(value = "/showCategoryDetails", method = RequestMethod.GET)
	public ModelAndView showCategoryDetails(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("admin/e-commerce/add_product_category");

		List<ProductCategory> productCategoryList = productCategoryService.getAllCategory(0);

		model.addObject("productCategoryList", productCategoryList);
		return model;
	}

	@RequestMapping(value = "/showSubCategoryDetails", method = RequestMethod.GET)
	public ModelAndView showSubCategoryDetails(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("admin/e-commerce/product_sub_category");

		List<ProductSubCategory> productSubCategoryList = productSubCategoryService.getAllSubCategory(0);

		List<ProductCategory> productCategoryList = productCategoryService.getAllCategory(0);

		model.addObject("productCategoryList", productCategoryList);
		model.addObject("productSubCategoryList", productSubCategoryList);
		return model;
	}

	@RequestMapping(value = "/showProductDetails", method = RequestMethod.GET)
	public ModelAndView showProductDetails(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("admin/e-commerce/product_details");
		List<ProductSubCategory> productSubCategoryList = productSubCategoryService.getAllSubCategory(0);
		imageDetailsList = new ArrayList<>();
		model.addObject("productSubCategoryList", productSubCategoryList);
		return model;
	}

	@RequestMapping(value = "/showAllProduct", method = RequestMethod.GET)
	public ModelAndView showAllProduct(HttpServletRequest req, HttpServletResponse res) {
		return new ModelAndView("admin/e-commerce/show_products");
	}

	@RequestMapping(value = "/submitProductCategory", method = RequestMethod.POST)
	public ModelAndView submitProductCategory(HttpServletRequest req, HttpServletResponse res,
			@RequestParam("pictures") List<MultipartFile> pictures) {
		ProductCategory productCategory = new ProductCategory();

		String imageName = pictures.get(0).getOriginalFilename();
		ModelAndView model = new ModelAndView("admin/e-commerce/add_product_category");

		productCategory.setCatName(req.getParameter("catName"));
		productCategory.setCatDesc(req.getParameter("catDesc"));
		productCategory.setPictures(imageName);
		productCategory.setDelStatus(0);
		productCategory.setType(0);

		productCategoryService.insertProductCategory(productCategory);

		return model;
	}

	/**
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/submitProductSubCategory", method = RequestMethod.POST)
	public ModelAndView submitProductSubCategory(HttpServletRequest req, HttpServletResponse res,
			@RequestParam("subCatImage") List<MultipartFile> subCatImage) {
		ProductSubCategory productSubCategory = new ProductSubCategory();

		ModelAndView model = new ModelAndView("admin/e-commerce/product_sub_category");
		String imageName = subCatImage.get(0).getOriginalFilename();
		productSubCategory.setCatId(Integer.parseInt(req.getParameter("catId")));
		productSubCategory.setSubCatName(req.getParameter("subCatName"));
		productSubCategory.setSubCatDesc(req.getParameter("subCatDesc"));
		productSubCategory.setSubCatImage(imageName);
		productSubCategory.setDelStatus(0);
		productSubCategory.setType(0);

		productSubCategoryService.insertProductSubCategory(productSubCategory);

		return model;
	}

	/**
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/submitProducts", method = RequestMethod.POST)
	public ModelAndView submitProducts(HttpServletRequest req, HttpServletResponse res,
			@ModelAttribute ProductDetails productDetails) {
		List<MultipartFile> files = productDetails.getPicture();
		String fileName;

		if (null != files && !files.isEmpty()) {
			for (MultipartFile multipartFile : files) {
				ImageDetails imageDetails = new ImageDetails();
				fileName = multipartFile.getOriginalFilename();
				imageDetails.setImageName(fileName);
				imageDetailsList.add(imageDetails);
			}
		}

		ModelAndView model = new ModelAndView("admin/e-commerce/product_details");
		productDetails.setProdName(req.getParameter("prodName"));
		productDetails.setSubCatId(Integer.parseInt(req.getParameter("subCatId")));
		productDetails.setProdDesc(req.getParameter("prodDesc"));
		productDetails.setNote(req.getParameter("note"));
		productDetails.setDiscount(Integer.parseInt(req.getParameter("discount")));
		productDetails.setPrice(Integer.parseInt(req.getParameter("price")));
		productDetails.setWeight(Integer.parseInt(req.getParameter("weight")));
		productDetails.setQuantity(Integer.parseInt(req.getParameter("quantity")));
		productDetails.setSize(req.getParameter("size"));
		productDetails.setImageDetailsList(imageDetailsList);
		productDetailsService.insertProduct(productDetails);
		return model;
	}

	@RequestMapping(value = "/addImagesInList", method = RequestMethod.GET)
	public @ResponseBody List<ImageDetails> addImagesInList(HttpServletRequest request, HttpServletResponse response) {
		ImageDetails imageDetails = new ImageDetails();
		String fileName = request.getParameter("fileName");
		imageDetails.setImageName(fileName);
		imageDetailsList.add(imageDetails);
		return imageDetailsList;
	}
}
