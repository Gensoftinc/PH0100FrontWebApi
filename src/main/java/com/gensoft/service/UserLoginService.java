package com.gensoft.service;

import com.gensoft.common.model.User;

public interface UserLoginService {
 
	User getUserDetailsByEmailAndDeleted(String email,String password,int delStatus);

	
}
