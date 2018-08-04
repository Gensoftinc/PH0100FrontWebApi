package com.gensoft.frontend.products.service;

import java.util.List;

import com.gensoft.common.model.GetCartProducts;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author AGolechha, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface GetCartProductsService {

	public List<GetCartProducts> getCartProductsOfUser(int userId);

}
