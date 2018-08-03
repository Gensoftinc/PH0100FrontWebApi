package com.gensoft.common.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class GetCartProducts {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cart_id")
	private int cartId;
	
	@Column(name = "product_id")
	private int productId;
	
	@Column(name = "user_id")
	private int userId;
	
	@Column(name = "product_quantity")
	private int productQuantity;
	
	@Column(name = "date")
	private String date;
	
	
	@Column(name = "sub_cat_id")
	private int subCatId;

	/** product name */
	@Column(name = "prod_name")
	private String prodName;
	
	/** product desc */
	@Column(name = "prod_desc")
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
	
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "size")
	private String size;
	
	@Column(name = "note")
	private String note;
	
	
	@Column(name = "updated_date")
	private Date updatedDate;
	
	/** Active status */
	@Column(name = "del_status")
	private int delStatus;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	public int getSubCatId() {
		return subCatId;
	}

	public void setSubCatId(int subCatId) {
		this.subCatId = subCatId;
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

	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
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

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	@Override
	public String toString() {
		return "GetCartProducts [cartId=" + cartId + ", productId=" + productId + ", userId=" + userId
				+ ", productQuantity=" + productQuantity + ", date=" + date + ", subCatId=" + subCatId + ", prodName="
				+ prodName + ", prodDesc=" + prodDesc + ", price=" + price + ", discount=" + discount + ", weight="
				+ weight + ", quantity=" + quantity + ", size=" + size + ", note=" + note + ", updatedDate="
				+ updatedDate + ", delStatus=" + delStatus + "]";
	}

	

}
