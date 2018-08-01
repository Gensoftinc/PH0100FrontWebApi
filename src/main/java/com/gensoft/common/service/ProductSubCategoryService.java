package com.gensoft.common.service;

import java.util.List;

import com.gensoft.common.model.ProductSubCategory;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface ProductSubCategoryService {

	public ProductSubCategory insertProductSubCategory(ProductSubCategory productSubCategory);

	public List<ProductSubCategory> getAllSubCategory(int delStatus);

}
