package com.gensoft.frontend.products.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductDetails;
import com.gensoft.frontend.products.model.ProductColorSize;
 import com.gensoft.frontend.products.repository.ProductColorSizeRepository;
import com.gensoft.frontend.products.repository.ProductDetailsRepository;

@Service
public class ProductDetailsServiceImpl implements ProductDetailsService{

	
	@Autowired
	private ProductDetailsRepository productDetailsRepository;
	
	@Autowired
	private ProductColorSizeRepository productColorSizeRepository;
	
	
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


	@Override
	public ProductDetails getProductDetailsByProductId(int productId, int delStatus) {
		 
		
		ProductDetails productDetails=new ProductDetails();
		try {
			productDetails=productDetailsRepository.findByProdIdAndDelStatus(productId, delStatus);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		return productDetails;
	}


	@Override
	public List<ProductColorSize> getProductColorSizeQtyByProductId(int productId, int delStatus) {

		List<ProductColorSize> productColorSizeList=new ArrayList<ProductColorSize>();
		try {
			productColorSizeList=productColorSizeRepository.findByProductIdAndDelStatus(productId, delStatus);
		
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		return productColorSizeList;
	}

	
	@Override
	public ProductDetails insertProduct(ProductDetails productDetails) {
		
		try {
		productDetails=	productDetailsRepository.save(productDetails);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		return productDetails;
	}
	
}
