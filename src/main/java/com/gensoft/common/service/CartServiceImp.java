package com.gensoft.common.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gensoft.common.model.Cart;
import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.repository.CartRepository;
import com.gensoft.common.repository.ProductSubCategoryRepository;
import com.gensoft.exception.ApplicationException;

@Service
public class CartServiceImp implements CartService{
	
	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductCategoryServiceImpl.class);
	
	@Autowired
	private CartRepository cartRepository;
	
	
	@Override
	public Cart insertProductsToCart(Cart cart) {
		try {
			cart = cartRepository.save(cart);
		} catch (Exception e) {
			LOGGER.error("Error while inserting the product category.", e);
			throw new ApplicationException("Error while inserting the product category.", e);
		}
		return cart;
	}

	
	
}
