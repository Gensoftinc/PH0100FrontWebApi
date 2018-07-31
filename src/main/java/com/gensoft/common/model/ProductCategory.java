package com.gensoft.common.model;



import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="product_category")
public class ProductCategory {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="cat_id")
	private int catId;
	
	@Column(name="cat_name")
	private String catName;
	
	@Column(name="cat_desc")
	private String catDesc;
	
	@Column(name="type")
	private int type;
	
	@Column(name="del_status")
	private int delStatus;
	
	@Column(name="pictures")
	private String pictures;
	
	@Column(name="int_1")
	private int int1;
	
	@Column(name="int_2")
	private int int2;
	
	@Column(name="string_1")
	private String string1;
	
	@Column(name="string_2")
	private String string2;
	
@Transient
private List<ProductSubCategory> productSubCategoryList;

	

	public String getString1() {
		return string1;
	}

	public void setString1(String string1) {
		this.string1 = string1;
	}

	public String getString2() {
		return string2;
	}

	public void setString2(String string2) {
		this.string2 = string2;
	}

	public int getCatId() {
		return catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getCatDesc() {
		return catDesc;
	}

	public void setCatDesc(String catDesc) {
		this.catDesc = catDesc;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	public String getPictures() {
		return pictures;
	}

	public void setPictures(String pictures) {
		this.pictures = pictures;
	}

	public int getInt1() {
		return int1;
	}

	public void setInt1(int int1) {
		this.int1 = int1;
	}

	public int getInt2() {
		return int2;
	}

	public void setInt2(int int2) {
		this.int2 = int2;
	}

	public List<ProductSubCategory> getProductSubCategoryList() {
		return productSubCategoryList;
	}

	public void setProductSubCategoryList(List<ProductSubCategory> productSubCategoryList) {
		this.productSubCategoryList = productSubCategoryList;
	}

	@Override
	public String toString() {
		return "ProductCategory [catId=" + catId + ", catName=" + catName + ", catDesc=" + catDesc + ", type=" + type
				+ ", delStatus=" + delStatus + ", pictures=" + pictures + ", int1=" + int1 + ", int2=" + int2
				+ ", string1=" + string1 + ", string2=" + string2 + ", productSubCategoryList=" + productSubCategoryList
				+ "]";
	}

	 
 
	 

	
	

}
