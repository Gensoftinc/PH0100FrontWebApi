package com.gensoft.common.service;

import java.util.List;

import com.gensoft.common.model.ProductCategory;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface ProductCategoryService {

	public List<ProductCategory> getAllCategory(int delStatus);

	public ProductCategory insertProductCategory(ProductCategory productCategory);

	public List<ProductCategory> getAllProductCatecoryWithSubCategory(int delStatus);
}
