package com.gensoft.exception;

/**
 * Application specific exception class.
 * <p>
 * 
 * @author AGolechha, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public final class ApplicationException extends RuntimeException {

	/** Serial version id */
	private static final long serialVersionUID = 1L;

	/**
	 * @param message
	 *            - exception message.
	 * @param cause
	 *            - throwable exception object.
	 */
	public ApplicationException(String message, Throwable cause) {
		super(message, cause);
	}
}
