package com.gensoft.frontend.products.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;
import com.gensoft.common.model.User;
import com.gensoft.service.UserLoginService;

/**
 * 
 * @author KUdavant, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 *
 */
@Controller
@Scope("session")
public class UserLoginController {

	
	@Autowired
	UserLoginService userLoginService;
	
	
	/**
	 * TODO
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/showUserLogin", method = RequestMethod.GET)
	public ModelAndView showUserLogin(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("login/user_login");

		return model;
	}

	/**
	 * TODO
	 * 
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/userLoginProcess", method = RequestMethod.POST)
	public User userLoginProcess(HttpServletRequest req, HttpServletResponse res) {

		String email = req.getParameter("email");
		
		String password=req.getParameter("password");

		return userLoginService.getUserDetailsByEmailAndDeleted(email,password,0);
	}

}
