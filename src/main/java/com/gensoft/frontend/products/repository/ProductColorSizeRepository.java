package com.gensoft.frontend.products.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.frontend.products.model.ProductColorSize;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface ProductColorSizeRepository extends JpaRepository<ProductColorSize, Integer> {
	public List<ProductColorSize> findByProductIdAndDelStatus(int prodId, int delStatus);
}
