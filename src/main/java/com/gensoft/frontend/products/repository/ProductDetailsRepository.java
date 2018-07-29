package com.gensoft.frontend.products.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.frontend.products.model.ProductDetails;

 

public interface ProductDetailsRepository extends JpaRepository<ProductDetails, Integer>{

	
	ProductDetails save(ProductDetails productDetails);
	
	List<ProductDetails> findBySubCatIdAndDelStatus(int subCatId, int delStatus);
	
	ProductDetails findByProdIdAndDelStatus(int prodId, int delStatus);
	
	ProductDetails findByProdNameIgnoreCaseContainingAndDelStatus(String prodName, int delStatus);
}
