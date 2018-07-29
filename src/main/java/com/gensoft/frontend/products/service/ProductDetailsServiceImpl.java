package com.gensoft.frontend.products.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.frontend.products.model.ProductDetails;
import com.gensoft.frontend.products.repository.ProductDetailsRepository;

@Service
public class ProductDetailsServiceImpl implements ProductDetailsService{

	
	@Autowired
	ProductDetailsRepository productDetailsRepository;
	
	
	@Override
	public List<ProductDetails> getProductBySubCatId(int subCatId) {
		// TODO Auto-generated method stub
		List<ProductDetails> productDetailsList=new ArrayList<ProductDetails>();
		try {
		productDetailsList=	productDetailsRepository.findBySubCatIdAndDelStatus(subCatId, 0);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		return productDetailsList;
	}

	
	
	
}
