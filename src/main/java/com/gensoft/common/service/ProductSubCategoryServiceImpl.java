package com.gensoft.common.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductSubCategory;
import com.gensoft.common.repository.ProductSubCategoryRepository;
 
@Service 
public class ProductSubCategoryServiceImpl implements ProductSubCategoryService{
	
	@Autowired
	ProductSubCategoryRepository productSubCategoryRepository;
	
	@Override
	public ProductSubCategory insertProductSubCategory(ProductSubCategory productSubCategory) {
		
		try {
			
			productSubCategory=productSubCategoryRepository.save(productSubCategory);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return productSubCategory;
	}
	
	@Override
	public List<ProductSubCategory> getAllSubCategory(int delStatus) {

		List<ProductSubCategory> productSubCategoryList=new ArrayList<ProductSubCategory>();
		try {
			productSubCategoryList=productSubCategoryRepository.findByDelStatus(delStatus);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		return productSubCategoryList;
	}


}
