package com.gensoft.frontend.products.service;

import java.util.List;

import com.gensoft.common.model.ImageDetails;
import com.gensoft.common.model.ProductDetails;
import com.gensoft.frontend.products.model.ProductColorSize;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Ganesh Pagar, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface ProductDetailsService {
	public List<ProductDetails> getProductBySubCatId(int subCatId);

	public ProductDetails getProductDetailsByProductId(int productId, int delStatus);

	public List<ProductColorSize> getProductColorSizeQtyByProductId(int productId, int delStatus);

	public ProductDetails insertProduct(ProductDetails productDetails);

	public List<ImageDetails> insertImages(List<ImageDetails> imageDetailList);
}
