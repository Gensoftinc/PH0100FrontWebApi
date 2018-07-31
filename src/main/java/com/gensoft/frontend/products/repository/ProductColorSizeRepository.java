package com.gensoft.frontend.products.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.frontend.products.model.ProductColorSize;

public interface ProductColorSizeRepository extends JpaRepository<ProductColorSize, Integer>{

	List<ProductColorSize> findByProductIdAndDelStatus(int prodId, int delStatus);
	
}
