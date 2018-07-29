package com.gensoft.frontend.products.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

 

@Entity
@Table(name = "product_details")
@Inheritance(strategy = InheritanceType.JOINED)
public class ProductDetails implements Serializable {

	
	private static final long serialVersionUID = -583233563657173372L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "prod_id")
	private int prodId;
	
	/** Category Id from product_category */
	@Column(name = "sub_cat_id")
	private int subCatId;

	/** product name */
	@Column(name = "prod_name", length = 100)
	private String prodName;
	
	/** product desc */
	@Column(name = "prod_desc", length = 500)
	private String prodDesc;
	
	/** product Price */
	@Column(name = "price")
	private float price;

	/** product weight */
	@Column(name = "discount")
	private float discount;
	
	/** product weight */
	@Column(name = "weight")
	private float weight;
	
	

	/** product picture */
	@Column(name = "picture", length = 100)
	private String picture;
	
	/** product picture */
	@Column(name = "note", length = 200)
	private String note;
	
	/** product updated_date */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_date", length = 50)
	private Date updatedDate;
	
	/** Active status */
	@Column(name = "del_status")
	private int delStatus;

	/** extra int field */
	@Column(name = "int_1")
	private int int1;
	

	/** extra int field */
	@Column(name = "int_2")
	private int int2;
								
	/** extra string field */
	@Column(name = "string_1", length = 100)
	private String string1;
	
	/** extra string field */
	@Column(name = "string_2", length = 100)
	private String string2;

	public int getProdId() {
		return prodId;
	}

	public void setProdId(int prodId) {
		this.prodId = prodId;
	}

	 

	public int getSubCatId() {
		return subCatId;
	}

	public void setSubCatId(int subCatId) {
		this.subCatId = subCatId;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdDesc() {
		return prodDesc;
	}

	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ProductDetails [prodId=" + prodId + ", subCatId=" + subCatId + ", prodName=" + prodName + ", prodDesc="
				+ prodDesc + ", price=" + price + ", discount=" + discount + ", weight=" + weight + ", picture="
				+ picture + ", note=" + note + ", updatedDate=" + updatedDate + ", delStatus=" + delStatus + ", int1="
				+ int1 + ", int2=" + int2 + ", string1=" + string1 + ", string2=" + string2 + "]";
	}
 
		
	
	
	
	
}
