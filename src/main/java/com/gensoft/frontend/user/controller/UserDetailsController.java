package com.gensoft.frontend.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.gensoft.common.model.User;
import com.gensoft.frontend.products.controller.ProductDetailsController;
import com.gensoft.service.UserSignUpService;

/**
 * TODO Insert class comment here.
 * <p>
 * 
 * @author Ganesh P, (c) Copyright 2018 GenSoft, Inc. All Rights Reserved.
 */
@Controller
@Scope(WebApplicationContext.SCOPE_SESSION)
public class UserDetailsController {

	/** Logger */
	private static final Logger LOGGER = LoggerFactory.getLogger(ProductDetailsController.class);

	@Autowired
	UserSignUpService userSignUpService;

	@RequestMapping(value = "/showUserSignUp", method = RequestMethod.GET)
	public ModelAndView showUserSignUp(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView model = new ModelAndView("user_signup");
		model.addObject("referralCode", req.getParameter("referral_code"));
		return model;
	}

	@RequestMapping(value = "/submitUserSignUp", method = RequestMethod.POST)
	public String submitUserSignUp(HttpServletRequest req, HttpServletResponse res) {

		User user = new User();

		user.setAadharNo(req.getParameter("aadhar_no"));
		user.setAddress(req.getParameter("address"));
		user.setContactNo(req.getParameter("contact_no"));
		user.setEmail(req.getParameter("email"));
		user.setFirstName(req.getParameter("first_name"));
		user.setMiddleName(req.getParameter("middle_name"));
		user.setLastName(req.getParameter("last_name"));
		user.setPasswordHash(req.getParameter("password"));
		user.setPinCode(Integer.parseInt(req.getParameter("pin_code")));
		user.setReferredBy(req.getParameter("referred_by"));

		userSignUpService.signUpUser(user);
		return "redirect:/";
	}
}