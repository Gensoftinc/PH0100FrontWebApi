package com.gensoft.common.service;

import java.util.List;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.database.model.Info;

public interface ProductCategoryService {

	List<ProductCategory> getAllCategory(int delStatus);
	
	ProductCategory insertProductCategory(ProductCategory productCategory);
}
