package com.gensoft.frontend.products.service;

import java.util.List;

import com.gensoft.common.model.ProductDetails;
import com.gensoft.frontend.products.model.ProductColorSize;

public interface ProductDetailsService {

	public List<ProductDetails> getProductBySubCatId(int subCatId);

	public ProductDetails getProductDetailsByProductId(int productId, int delStatus);

	public List<ProductColorSize> getProductColorSizeQtyByProductId(int productId, int delStatus);

	public ProductDetails insertProduct(ProductDetails productDetails);
}
