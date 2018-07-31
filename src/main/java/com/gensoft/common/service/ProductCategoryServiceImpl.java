package com.gensoft.common.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.ProductCategory;
import com.gensoft.common.model.ProductSubCategory;
import com.gensoft.common.repository.ProductCategoryRepository;
import com.gensoft.common.repository.ProductSubCategoryRepository;

 
@Service()
public class ProductCategoryServiceImpl implements ProductCategoryService{

	@Autowired
	private ProductCategoryRepository productCategoryRepository;
	
	@Autowired
	private ProductSubCategoryRepository productSubCategoryRepository;
	
	private static List<ProductSubCategory> productSubCategoryList;
	
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

	@Override
	public List<ProductCategory> getAllProductCatecoryWithSubCategory(int delStatus) {
		 
		
		List<ProductCategory> productCategoryList=new ArrayList<ProductCategory>();
		try {
			productCategoryList=productCategoryRepository.findByDelStatus(delStatus);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		for(int i=0;i<productCategoryList.size();i++)
		{
			productSubCategoryList=new ArrayList<ProductSubCategory>();
			try {
			productSubCategoryList=productSubCategoryRepository.findByCatIdAndDelStatus(productCategoryList.get(i).getCatId(), delStatus);
		
			}catch (Exception e) {
				System.out.println(e.getMessage());// TODO: handle exception
			}
			productCategoryList.get(i).setProductSubCategoryList(productSubCategoryList);
		}
		return productCategoryList;
	}
}
