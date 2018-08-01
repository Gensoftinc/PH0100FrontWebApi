package com.gensoft.service;

import com.gensoft.common.model.User;
/**
 * TODO Insert class comment here.
 * <p>
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
public interface UserLoginService {
	public User getUserDetailsByEmailAndDeleted(String email, String password, int delStatus);
}