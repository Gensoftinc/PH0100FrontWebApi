package com.gensoft.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gensoft.database.model.User;
import com.gensoft.repository.UserRepository;

@RestController("/rest-api")
public class UserController {

	@Autowired
	UserRepository userRepository;

	@RequestMapping(value = "/userLogin", method = RequestMethod.GET)
	public User userLogin(@RequestBody User user) {

		return userRepository.findAll().get(0);
	}

}
 