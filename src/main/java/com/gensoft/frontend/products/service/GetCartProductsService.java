package com.gensoft.frontend.products.service;

import java.util.List;

import com.gensoft.common.model.GetCartProducts;

public interface GetCartProductsService {
	
	public List<GetCartProducts> getCartProductsOfUser(int userId);

}
