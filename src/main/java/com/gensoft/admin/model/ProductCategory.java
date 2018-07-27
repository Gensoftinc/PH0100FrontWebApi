package com.gensoft.admin.model;


public class ProductCategory {
	
	private int catId;
	
	private String catName;
	
	private String catDesc;
	
	private int type;
	
	private int delStatus;
	
	private String pictures;

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

	@Override
	public String toString() {
		return "ProductCategory [catId=" + catId + ", catName=" + catName + ", catDesc=" + catDesc + ", type=" + type
				+ ", delStatus=" + delStatus + ", pictures=" + pictures + "]";
	}
	
	

}
