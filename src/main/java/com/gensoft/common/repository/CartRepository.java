package com.gensoft.common.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gensoft.common.model.Cart;
import com.gensoft.common.model.ProductCategory;

public interface CartRepository extends JpaRepository<Cart, Long>{

	Cart save(Cart cart); 
	
}
