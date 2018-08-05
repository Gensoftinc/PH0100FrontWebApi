package com.gensoft.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.User;
import com.gensoft.exception.ApplicationException;
import com.gensoft.repository.UserRepository;
@Service
public class UserSignUpServiceImpl implements UserSignUpService{

	/** LOGGER */
	private static final Logger LOGGER = LoggerFactory.getLogger(UserSignUpServiceImpl.class);
	
	@Autowired
	private UserRepository userRepository;
	@Override
	public User signUpUser(User user) {

		User userRes=new User();
		
		try {
			userRes= userRepository.save(user);
		}
		catch (Exception e) {
			LOGGER.error("Error while save user details.", e);
			throw new ApplicationException("Error while save user details.", e);
		}
		return userRes;
	}

}
