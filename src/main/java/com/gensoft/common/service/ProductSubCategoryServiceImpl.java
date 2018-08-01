package com.gensoft.common.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductSubCategory;
import com.gensoft.common.repository.ProductSubCategoryRepository;
import com.gensoft.exception.ApplicationException;

/**
 * TODO Insert class comment here.
 * <p>
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Service
public class ProductSubCategoryServiceImpl implements ProductSubCategoryService {

	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductSubCategoryServiceImpl.class);
	
	@Autowired
	private ProductSubCategoryRepository productSubCategoryRepository;

	@Override
	public ProductSubCategory insertProductSubCategory(ProductSubCategory productSubCategory) {
		try {
			productSubCategory = productSubCategoryRepository.save(productSubCategory);
		} catch (Exception e) {
			LOGGER.error("Error while inserting product sub category", e);
			throw new ApplicationException("Error while inserting product sub category", e);
		}
		return productSubCategory;
	}

	@Override
	public List<ProductSubCategory> getAllSubCategory(int delStatus) {

		List<ProductSubCategory> productSubCategoryList = new ArrayList<ProductSubCategory>();
		try {
			productSubCategoryList = productSubCategoryRepository.findByDelStatus(delStatus);
		} catch (Exception e) {
			LOGGER.error("Error while fetching all sub categories.", e);
		}
		return productSubCategoryList;
	}
}