package com.gensoft.frontend.products.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.common.model.ProductDetails;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface ProductDetailsRepository extends JpaRepository<ProductDetails, Integer> {

	public ProductDetails save(ProductDetails productDetails);

	public List<ProductDetails> findBySubCatIdAndDelStatus(int subCatId, int delStatus);

	public ProductDetails findByProdIdAndDelStatus(int prodId, int delStatus);

	public ProductDetails findByProdNameIgnoreCaseContainingAndDelStatus(String prodName, int delStatus);
}