package com.gensoft.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gensoft.database.model.User;
import com.gensoft.repository.UserRepository;
import com.gensoft.rest.constant.APIName;

@RestController(APIName.USER_CONTROLLER)
public class UserController {

	@Autowired
	UserRepository userRepository;

	@RequestMapping(value = APIName.USER_LOGIN, method = RequestMethod.GET)
	public User userLogin(@RequestBody User user) {
		return userRepository.findAll().get(0);
	}

}
