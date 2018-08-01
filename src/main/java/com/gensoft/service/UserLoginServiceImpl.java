package com.gensoft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.User;
import com.gensoft.common.model.UserLogin;
import com.gensoft.database.model.Info;
import com.gensoft.repository.UserRepository;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Author name, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Service
public class UserLoginServiceImpl implements UserLoginService {

	/** User's repository */
	@Autowired
	private UserRepository userRepository;

	@Override
	public User getUserDetailsByEmailAndDeleted(String email, String password, int deleted) {
		User user = new User();
		Info info = new Info();
		UserLogin userLogin = new UserLogin();
		user = userRepository.findByEmailAndDeleted(email, deleted);
		if (user != null && user.getPasswordHash().equals(password)) {
			userLogin.setUser(user);
			info.setError(false);
			info.setMessage("Login Succesfull");
			userLogin.setInfo(info);
		}
		return user;
	}
}