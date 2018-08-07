package com.gensoft.frontend.products.service;

import com.gensoft.common.model.Cart;

/**
 * Cart service
 * <p>
 * 
 * @author Amruta, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface CartService {

	/**
	 * This will insert the product into the cart.
	 * <p>
	 * 
	 * @param cart
	 *            - cart object which will contain all the detail and going to be
	 *            saved in database.
	 * @return {@link Cart} - object.
	 */
	public Cart insertProductsToCart(Cart cart);

	/**
	 * TODO insert comment here
	 * 
	 * @param cartId
	 * @return
	 */
	public int deleteProductFromCart(int cartId);

	/**
	 * TODO insert comment here
	 * 
	 * @param cartId
	 * @return
	 */
	public int updateQuantityOfCart(int cartId, int newVal);
}
