package com.gensoft.common.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductSubCategory;
import com.gensoft.common.repository.ProductCategoryRepository;
import com.gensoft.common.repository.ProductSubCategoryRepository;
import com.gensoft.exception.ApplicationException;

/**
 * TODO Insert class comment here.
 * <p>
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {

	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductCategoryServiceImpl.class);

	@Autowired
	private ProductCategoryRepository productCategoryRepository;

	@Autowired
	private ProductSubCategoryRepository productSubCategoryRepository;

	/** TODO comment me */
	private static List<ProductSubCategory> productSubCategoryList;

	@Override
	public List<ProductCategory> getAllCategory(int delStatus) {
		List<ProductCategory> productCategoryList = new ArrayList<ProductCategory>();
		try {
			productCategoryList = productCategoryRepository.findByDelStatus(delStatus);
		} catch (Exception e) {
			LOGGER.error("Error while getting the list of all product categories.", e);
			throw new ApplicationException("Error while getting the list of all product categories.", e);
		}
		return productCategoryList;
	}

	@Override
	public ProductCategory insertProductCategory(ProductCategory productCategory) {
		try {
			productCategory = productCategoryRepository.save(productCategory);
		} catch (Exception e) {
			LOGGER.error("Error while inserting the product category.", e);
			throw new ApplicationException("Error while inserting the product category.", e);
		}
		return productCategory;
	}

	@Override
	public List<ProductCategory> getAllProductCatecoryWithSubCategory(int delStatus) {
		List<ProductCategory> productCategoryList = new ArrayList<>();
		productCategoryList = productCategoryRepository.findByDelStatus(delStatus);

		for (ProductCategory productCategory : productCategoryList) {
			try {
				// TODO list will contain only last product category's sub category only. fix it.
				productSubCategoryList = productSubCategoryRepository
						.findByCatIdAndDelStatus(productCategory.getCatId(), delStatus);
			} catch (Exception e) {
				LOGGER.error("Error while getting the all product category with sub-categories.", e);
				throw new ApplicationException("Error while getting the all product category with sub-categories.", e);
			}
			productCategory.setProductSubCategoryList(productSubCategoryList);
		}
		return productCategoryList;
	}
}
