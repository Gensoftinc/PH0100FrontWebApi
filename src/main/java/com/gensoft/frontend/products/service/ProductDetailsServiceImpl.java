package com.gensoft.frontend.products.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductDetails;
import com.gensoft.common.repository.ImageDetailsRepository;
import com.gensoft.exception.ApplicationException;
import com.gensoft.frontend.products.model.ProductColorSize;
import com.gensoft.frontend.products.repository.ProductColorSizeRepository;
import com.gensoft.frontend.products.repository.ProductDetailsRepository;

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
			LOGGER.error("Error while getting product by sub category identifier", e);
			throw new ApplicationException("Error while getting product by sub category identifier", e);
		}
		return productDetailsList;
	}

	@Override
	public ProductDetails getProductDetailsByProductId(int productId, int delStatus) {

		ProductDetails productDetails = new ProductDetails();
		try {
			productDetails = productDetailsRepository.findByProdIdAndDelStatus(productId, delStatus);
		} catch (Exception e) {
			LOGGER.error("Error while getting product details by product identifier", e);
			throw new ApplicationException("Error while getting product details by product identifier", e);
		}
		return productDetails;
	}

	@Override
	public List<ProductColorSize> getProductColorSizeQtyByProductId(int productId, int delStatus) {
		List<ProductColorSize> productColorSizeList = new ArrayList<>();
		try {
			productColorSizeList = productColorSizeRepository.findByProductIdAndDelStatus(productId, delStatus);
		} catch (Exception e) {
			LOGGER.error("Error while getting product color size quantity by product identifier", e);
			throw new ApplicationException("Error while getting product color size quantity by product identifier", e);
		}
		return productColorSizeList;
	}

	@Override
	public ProductDetails insertProduct(ProductDetails productDetails) {

		try {
			productDetails = productDetailsRepository.save(productDetails);
			int prodId = productDetails.getProdId();
			for (int i = 0; i < productDetails.getImageDetailsList().size(); i++) {
				productDetails.getImageDetailsList().get(i).setProductId(prodId);
				imageDetailsRepository.save(productDetails.getImageDetailsList().get(i));
			}
		} catch (Exception e) {
			LOGGER.error("Error while inserting product", e);
			throw new ApplicationException("Error while inserting product", e);
		}
		return productDetails;
	}
}
