package com.gensoft.frontend.products.service;

import java.util.List;

import com.gensoft.frontend.products.model.ProductDetails;

public interface ProductDetailsService {

	
	public List<ProductDetails> getProductBySubCatId(int subCatId);
}
