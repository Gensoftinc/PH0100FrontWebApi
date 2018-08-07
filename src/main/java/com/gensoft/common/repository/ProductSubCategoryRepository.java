package com.gensoft.common.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.common.model.ProductSubCategory;

public interface ProductSubCategoryRepository extends JpaRepository<ProductSubCategory, Integer> {

	List<ProductSubCategory> findByCatIdAndDelStatus(int catId, int delStatus);

	List<ProductSubCategory> findByDelStatus(int delStatus);

}
