package com.spring.mvc.repositiryImpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mvc.model.Admin;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.UserRepository;

@Component
@Transactional
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private SessionFactory sessionFactory;
	
	

	public void saveUsers(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);

	}

	@SuppressWarnings("unchecked")
	public List<User> getUser() {
		/*
		 * List<User> users =sessionFactory.getCurrentSession().loadAll(User.class);
		 * return users;
		 */
		return sessionFactory.getCurrentSession().createQuery("from users").list();
	}

	public void deleteUser(int uid) {
		User u = sessionFactory.getCurrentSession().load(User.class, uid);
		sessionFactory.getCurrentSession().delete(u);
	}

	public User getUser(int uid) {
		return sessionFactory.getCurrentSession().get(User.class, uid);
	}

	public int saveUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
    public User getCurrentUser(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if(user != null) {
            System.out.println("User " + user.getFullName());
        }
        return user;
    }
    
	
    public Admin getCurrentAdminr(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if(admin != null) {
            System.out.println("admin " + admin.getFullName());
        }
        return admin;
    }
    
	@SuppressWarnings("unchecked")
	public List<User> listPeople(int id){
		List<User> listPeople = (List<User>) sessionFactory.getCurrentSession().get(User.class,id);
		return listPeople;
	}
	


	
	
	

}
