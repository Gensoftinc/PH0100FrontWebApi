package com.gensoft.frontend.products.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product_color_size")
public class ProductColorSize {
	 
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="color_size_id")
	private int colorSizeId;
	
	@Column(name="prod_id")
	private int productId;
	
	@Column(name="prod_qty")
	private int productQty;
	
	@Column(name="del_status")
	private int delStatus;
	
	@Column(name="color")
	private String color;
	
	@Column(name="size")
	private String size;
	
	@Column(name="int_1")
	private String int1;
	
	@Column(name="int_2")
	private String int2;
	
	@Column(name="string_1")
	private String string1;
	
	@Column(name="string_2")
	private String string2;
	
	public String getInt1() {
		return int1;
	}

	public void setInt1(String int1) {
		this.int1 = int1;
	}

	public String getInt2() {
		return int2;
	}

	public void setInt2(String int2) {
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
