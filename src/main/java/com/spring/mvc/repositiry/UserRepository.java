package com.spring.mvc.repositiry;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.spring.mvc.model.Admin;
import com.spring.mvc.model.User;

public interface UserRepository {
	public void saveUsers(User user);
	public List<User> getUser();
	public void deleteUser(int uid);
	public User getUser(int uid);
	public int saveUser(User user );
	public User getCurrentUser(HttpSession session);
	public List<User> listPeople(int id);
	 public Admin getCurrentAdminr(HttpSession session);
	
	
	
	
	
}
