package com.spring.mvc.repositiry;

import javax.servlet.http.HttpSession;

import com.spring.mvc.model.User;

public interface LoginRepository {
	boolean validateUser(String email, String password);
	boolean validateAdmin(String email, String password);
	boolean checkEmail(String email);
	public User loginUser(User user);
	public User getCurrentUser(HttpSession session);

}
