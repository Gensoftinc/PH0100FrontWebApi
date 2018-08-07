package com.gensoft.common.model;

import com.gensoft.database.model.Info;

public class UserLogin {

	private User user;

	Info info;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Info getInfo() {
		return info;
	}

	public void setInfo(Info info) {
		this.info = info;
	}

	@Override
	public String toString() {
		return "UserLogin [user=" + user + "]";
	}
}
