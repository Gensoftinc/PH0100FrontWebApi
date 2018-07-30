package com.gensoft.common.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.repository.ProductCategoryRepository;
@Service
public class ProductCategoryServiceImpl implements ProductCategoryService{

	
	private ProductCategoryRepository productCategoryRepository;
	
	@Override
	public List<ProductCategory> getAllCategory(int delStatus) {

		List<ProductCategory> productCategoryList=new ArrayList<ProductCategory>();
		try {
			productCategoryList=productCategoryRepository.findByDelStatus(delStatus);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		return productCategoryList;
	}

	@Override
	public ProductCategory insertProductCategory(ProductCategory productCategory) {
		
		System.out.println("bfvhdvhbj");
		try {
			
			productCategory=productCategoryRepository.save(productCategory);
			System.out.println("Products "+productCategory);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return productCategory;
	}
}
