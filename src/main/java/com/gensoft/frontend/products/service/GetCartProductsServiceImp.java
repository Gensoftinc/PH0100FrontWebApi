package com.gensoft.frontend.products.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.Cart;
import com.gensoft.common.model.GetCartProducts;
import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.repository.CartRepository;
import com.gensoft.common.repository.GetCartProductsRepository;
import com.gensoft.exception.ApplicationException;

@Service
public class GetCartProductsServiceImp implements GetCartProductsService{
	
	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(GetCartProductsServiceImp.class);
	
	@Autowired
	private GetCartProductsRepository getCartProductsRepository;
	
	
	@Override
	public List<GetCartProducts> getCartProductsOfUser(int  userId) {
		List<GetCartProducts> getCartProductsList = new ArrayList<GetCartProducts>();
		
			getCartProductsList = getCartProductsRepository.getCartProductsBYUserId(userId);
			for (GetCartProducts getCartProducts : getCartProductsList) {
				
				float price =getCartProducts.getPrice()*getCartProducts.getProductQuantity();
				getCartProducts.setPrice(price);
			}
		System.out.println("reight:"+getCartProductsList.toString());
		return getCartProductsList;
	}

}
