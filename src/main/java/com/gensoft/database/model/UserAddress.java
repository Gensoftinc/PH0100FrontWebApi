package com.gensoft.database.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 * User addresses will be stored in this model.
 * <p>
 * 
 * @author AGolechha, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Entity
@Table(name = "user_addresses")
@EntityListeners(AuditingEntityListener.class)
public class UserAddress {

	/** Identifier */
	@Id
	@Column(name = "address_id")
	private Long addressId;

	/** User identifier */
	@Column(name = "user_id")
	private Long userId;

	/** Address */
	@Column(name = "adress")
	private String address;

	/** Telephone number */
	@Column(name = "phone")
	private String phoneNumber;

	/** City */
	@Column(name = "city", length = 80)
	private String city;

	/** Country */
	@Column(name = "country", length = 80)
	private String country;

	/** Row deleted */
	@Column(name = "deleted")
	private boolean deleted;

	/** Creation date */
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date creationDate;

	/** Last modified date */
	@LastModifiedDate
	@Temporal(TemporalType.TIMESTAMP)
	private Date lastModifiedDate;

	/**
	 * @return the addressId
	 */
	public Long getAddressId() {
		return addressId;
	}

	/**
	 * @param addressId
	 *            the addressId to set
	 */
	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	/**
	 * @return the userId
	 */
	public Long getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the phoneNumber
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}

	/**
	 * @param phoneNumber
	 *            the phoneNumber to set
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country
	 *            the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the deleted
	 */
	public boolean isDeleted() {
		return deleted;
	}

	/**
	 * @param deleted
	 *            the deleted to set
	 */
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

	/**
	 * @return the creationDate
	 */
	public Date getCreationDate() {
		return creationDate;
	}

	/**
	 * @return the lastModifiedDate
	 */
	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	@Override
	public String toString() {
		return "UserAddress [addressId=" + addressId + ", userId=" + userId + ", address=" + address + ", phoneNumber="
				+ phoneNumber + ", city=" + city + ", country=" + country + ", deleted=" + deleted + ", creationDate="
				+ creationDate + ", lastModifiedDate=" + lastModifiedDate + "]";
	}
}
