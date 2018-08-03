package com.gensoft.frontend.products.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.GetCartProducts;
import com.gensoft.common.repository.GetCartProductsRepository;
import com.gensoft.exception.ApplicationException;

/**
 * TODO Insert comment here.
 * <p>
 * 
 * @author Amruta, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Service
public class GetCartProductsServiceImp implements GetCartProductsService {

	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(GetCartProductsServiceImp.class);

	@Autowired
	private GetCartProductsRepository getCartProductsRepository;

	@Override
	public List<GetCartProducts> getCartProductsOfUser(int userId) {
		List<GetCartProducts> getCartProductsList = new ArrayList<>();
		try {
			getCartProductsList = getCartProductsRepository.getCartProductsBYUserId(userId);
		} catch (Exception e) {
			LOGGER.error("Error while getting the cart product of user.", e);
			throw new ApplicationException("Error while getting the cart product of user.", e);
		}
		return getCartProductsList;
	}
}