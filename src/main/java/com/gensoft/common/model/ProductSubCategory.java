package com.gensoft.common.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product_sub_category")
public class ProductSubCategory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="sub_cat_id")
	private int subCatId;
	
	@Column(name="cat_id")
	private int catId;
	
	@Column(name="sub_cat_desc")
	private String subCatDesc;
	
	@Column(name="sub_cat_name")
	private String subCatName;
	
	@Column(name="sub_cat_image")
	private String subCatImage;
	
	@Column(name="del_status")
	private int delStatus;
	
	@Column(name="type")
	private int type;
	
	@Column(name="int_1")
	private int int1;
	
	@Column(name="int_2")
	private int int2;
	
	@Column(name="string_1")
	private String string1;
	
	@Column(name="string_2")
	private String string2;

	public int getSubCatId() {
		return subCatId;
	}

	public void setSubCatId(int subCatId) {
		this.subCatId = subCatId;
	}

	public int getCatId() {
		return catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public String getSubCatDesc() {
		return subCatDesc;
	}

	public void setSubCatDesc(String subCatDesc) {
		this.subCatDesc = subCatDesc;
	}

	public String getSubCatName() {
		return subCatName;
	}

	public void setSubCatName(String subCatName) {
		this.subCatName = subCatName;
	}

	public String getSubCatImage() {
		return subCatImage;
	}

	public void setSubCatImage(String subCatImage) {
		this.subCatImage = subCatImage;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
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

	@Override
	public String toString() {
		return "ProductSubCategory [subCatId=" + subCatId + ", catId=" + catId + ", subCatDesc=" + subCatDesc
				+ ", subCatName=" + subCatName + ", subCatImage=" + subCatImage + ", delStatus=" + delStatus + ", type="
				+ type + ", int1=" + int1 + ", int2=" + int2 + ", string1=" + string1 + ", string2=" + string2 + "]";
	}
	
	

}
