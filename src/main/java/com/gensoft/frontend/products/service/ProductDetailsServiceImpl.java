package com.gensoft.frontend.products.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ImageDetails;
import com.gensoft.common.model.ProductDetails;
import com.gensoft.common.repository.ImageDetailsRepository;
import com.gensoft.exception.ApplicationException;
import com.gensoft.frontend.products.model.ProductColorSize;
import com.gensoft.frontend.products.repository.ProductColorSizeRepository;
import com.gensoft.frontend.products.repository.ProductDetailsRepository;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Ganesh Pagar, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Service
public class ProductDetailsServiceImpl implements ProductDetailsService {

	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductDetailsServiceImpl.class);

	@Autowired
	private ProductDetailsRepository productDetailsRepository;

	@Autowired
	private ProductColorSizeRepository productColorSizeRepository;

	@Autowired
	private ImageDetailsRepository imageDetailsRepository;

	@Override
	public List<ProductDetails> getProductBySubCatId(int subCatId) {
		List<ProductDetails> productDetailsList = new ArrayList<>();
		try {
			productDetailsList = productDetailsRepository.findBySubCatIdAndDelStatus(subCatId, 0);
		} catch (Exception e) {
			LOGGER.error("Error while getting the product by sub ccategory id", e);
			throw new ApplicationException("Error while getting the product by sub ccategory id", e);
		}
		return productDetailsList;
	}

	@Override
	public ProductDetails getProductDetailsByProductId(int productId, int delStatus) {
		ProductDetails productDetails = new ProductDetails();
		try {
			productDetails = productDetailsRepository.findByProdIdAndDelStatus(productId, delStatus);
		} catch (Exception e) {
			LOGGER.error("Error while getting the product detail by product id", e);
			throw new ApplicationException("Error while getting the product detail by product id", e);
		}
		return productDetails;
	}

	@Override
	public List<ProductColorSize> getProductColorSizeQtyByProductId(int productId, int delStatus) {

		List<ProductColorSize> productColorSizeList = new ArrayList<>();
		try {
			productColorSizeList = productColorSizeRepository.findByProductIdAndDelStatus(productId, delStatus);
		} catch (Exception e) {
			LOGGER.error("Error while getting the product size quantity by product id", e);
			throw new ApplicationException("Error while getting the product size quantity by product id", e);
		}
		return productColorSizeList;
	}

	@Override
	public ProductDetails insertProduct(ProductDetails productDetails) {
		try {
			productDetails = productDetailsRepository.save(productDetails);
		} catch (Exception e) {
			LOGGER.error("Error while inserting the product", e);
			throw new ApplicationException("Error while inserting the product", e);
		}
		return productDetails;
	}

	@Override
	public List<ImageDetails> insertImages(List<ImageDetails> imageDetailsList) {
		try {
			imageDetailsList = imageDetailsRepository.save(imageDetailsList);
		} catch (Exception e) {
			LOGGER.error("Error while inserting the image", e);
		}
		return imageDetailsList;
	}
}