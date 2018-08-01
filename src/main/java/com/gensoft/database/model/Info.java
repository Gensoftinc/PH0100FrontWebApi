package com.gensoft.database.model;

/** 
 * TODO Insert class comment here.
 * <p>
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public class Info {
	
	private String message;
       
	private boolean isError;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isError() {
		return isError;
	}
  
	public void setError(boolean isError) {
		this.isError = isError;
	}

	@Override
	public String toString() {
		return "Info [message=" + message + ", isError=" + isError + "]";
	}
}