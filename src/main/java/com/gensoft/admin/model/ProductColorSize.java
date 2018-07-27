package com.gensoft.admin.model;


public class ProductColorSize {
	
	private int colorSizeId;
	
	private int productId;
	
	private int productQty;
	
	private int delStatus;
	
	private String color;
	
	private String size;

	public int getColorSizeId() {
		return colorSizeId;
	}

	public void setColorSizeId(int colorSizeId) {
		this.colorSizeId = colorSizeId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getProductQty() {
		return productQty;
	}

	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return "ProductColorSize [colorSizeId=" + colorSizeId + ", productId=" + productId + ", productQty="
				+ productQty + ", delStatus=" + delStatus + ", color=" + color + ", size=" + size + "]";
	}
	
	
	
	

}
