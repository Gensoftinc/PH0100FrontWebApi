package com.gensoft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gensoft.common.model.User;
import com.gensoft.common.model.UserLogin;
import com.gensoft.database.model.Info;
import com.gensoft.repository.UserRepository;

@Service
public class UserLoginServiceImpl implements UserLoginService{

	@Autowired
	UserRepository userRepository;
	
	@Override
	public User getUserDetailsByEmailAndDeleted(String email,String password,int deleted) {
		// TODO Auto-generated method stub
		User user=new User();
		Info info=new Info(); 
		UserLogin userLogin=new UserLogin();
		try {
		
		System.out.println("email"+email+"password"+password);
		 
		user=userRepository.findByEmailAndDeleted(email, deleted);
		System.out.println("User ="+user.toString());
		
		if(user!=null) {
		if(user.getPasswordHash().equals(password)) {
			
			userLogin.setUser(user);
			info.setError(false);
			info.setMessage("Login Succesfull");
			userLogin.setInfo(info);
		}
		}
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return user;
	}
	
}
