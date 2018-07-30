package com.gensoft.common.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.common.model.ProductCategory;

public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Integer>{

	
	List<ProductCategory> findByDelStatus(int delStatus);
	
	ProductCategory save(ProductCategory productCategory); 
}
