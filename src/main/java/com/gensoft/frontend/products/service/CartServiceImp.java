package com.gensoft.frontend.products.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.Cart;
import com.gensoft.common.repository.CartRepository;
import com.gensoft.exception.ApplicationException;

/**
 * Cart service implementation class.
 * <p>
 * 
 * @author Amruta, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Service
public class CartServiceImp implements CartService {

	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(CartServiceImp.class);

	/**
	 * Cart repository.
	 */
	@Autowired
	private CartRepository cartRepository;

	@Override
	public Cart insertProductsToCart(Cart cart) {
		try {
			cart = cartRepository.save(cart);
		} catch (Exception e) {
			LOGGER.error("Error while inserting the product to cart.", e);
			throw new ApplicationException("Error while inserting the product to cart.", e);
		}
		return cart;
	}

	@Override
	public int deleteProductFromCart(int cartId) {
		int res;
		try {
			res = cartRepository.deleteProductFRomCart(cartId);
		} catch (Exception e) {
			LOGGER.error("Error while deleting the product from cart.", e);
			throw new ApplicationException("Error while deleting the product from cart.", e);
		}
		return res;
	}
	@Override
	public int updateQuantityOfCart(int cartId,int newVal) {
		int res;
		try {
			res = cartRepository.updateQuantityOfCart(cartId,newVal);
		} catch (Exception e) {
			LOGGER.error("Error while deleting the product from cart.", e);
			throw new ApplicationException("Error while deleting the product from cart.", e);
		}
		return res;
	}
}