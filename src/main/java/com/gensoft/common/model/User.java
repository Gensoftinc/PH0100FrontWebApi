package com.gensoft.common.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 * User model
 * <p>
 * 
 * @author KUdavant, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 *
 */

@Entity
@Table(name = "users")
@Inheritance(strategy = InheritanceType.JOINED)
@EntityListeners(AuditingEntityListener.class)
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private long userId;

	@Column(name = "create_date")
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date createDate;

	@Column(name = "first_name", length = 50)
	private String firstName;

	@Column(name = "middle_name", length = 50)
	private String middleName;

	@Column(name = "last_name", length = 50)
	private String lastName;

	@Column(name = "email", length = 100)
	private String email;
	
	/** User address */
	@Column(name = "address", length = 250)
	private String address;
	
	/**  user pin code */
	@Column(name = "pin_code")
	private int pinCode;
	
	/**  payment Status */
	@Column(name = "payment_status")
	private int paymentStatus;
	
	
	/**  referred by code */
	@Column(name = "referred_by", length = 50, nullable=true)
	private String referredBy;
	
	/** user referral code */
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "referral_code", length = 50, unique = true)
	private String referralCode;
	
	/** user contact no */
	@Column(name = "contact_no", length = 50)
	private String contactNo;
	
	/** user  Aadhar no */
	@Column(name = "aadhar_no", length = 50, unique = true)
	private String aadharNo;

	/** Last modified date */
	@LastModifiedDate
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "last_modified_date")
	private Date lastModifiedDate;

	@Column(name = "password_hash", length = 15)
	private String passwordHash;

	@Column(name = "deleted")
	private int deleted;

	@Column(name = "status", length = 2)
	private int status;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	 
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	 

	public String getPasswordHash() {
		return passwordHash;
	}

	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getDeleted() {
		return deleted;
	}

	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public int getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(int paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getReferredBy() {
		return referredBy;
	}

	public void setReferredBy(String referredBy) {
		this.referredBy = referredBy;
	}

	public String getReferralCode() {
		return referralCode;
	}

	public void setReferralCode(String referralCode) {
		this.referralCode = referralCode;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", createDate=" + createDate + ", firstName=" + firstName + ", middleName="
				+ middleName + ", lastName=" + lastName + ", email=" + email + ", address=" + address + ", pinCode="
				+ pinCode + ", paymentStatus=" + paymentStatus + ", referredBy=" + referredBy + ", referralCode="
				+ referralCode + ", contactNo=" + contactNo + ", aadharNo=" + aadharNo + ", lastModifiedDate="
				+ lastModifiedDate + ", passwordHash=" + passwordHash + ", deleted=" + deleted + ", status=" + status
				+ "]";
	}

	 

}
