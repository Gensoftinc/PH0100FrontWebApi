package com.gensoft.common.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.gensoft.common.model.Cart;

public interface CartRepository extends JpaRepository<Cart, Long> {

	Cart save(Cart cart);

	@Transactional
	@Modifying
	@Query("DELETE from Cart  where cartId=:cartId")
	int deleteProductFRomCart(@Param("cartId") int cartId);

	@Transactional
	@Modifying
	@Query("UPDATE Cart SET productQuantity=:newVal  where cartId=:cartId")
	int updateQuantityOfCart(@Param("cartId") int cartId, @Param("newVal") int newVal);

}
