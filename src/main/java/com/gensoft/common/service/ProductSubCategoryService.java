package com.gensoft.common.service;

import java.util.List;

import com.gensoft.common.model.ProductSubCategory;

public interface ProductSubCategoryService {

	public ProductSubCategory insertProductSubCategory(ProductSubCategory productSubCategory);
	
	List<ProductSubCategory> getAllSubCategory(int delStatus);
	
}
