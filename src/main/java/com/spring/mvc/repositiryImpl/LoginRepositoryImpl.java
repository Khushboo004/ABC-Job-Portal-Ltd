package com.spring.mvc.repositiryImpl;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.LoginRepository;
@Component
@Transactional
public class LoginRepositoryImpl implements LoginRepository{
	@Autowired
	SessionFactory sessionFactory;


	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session  getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public boolean validateUser(String email, String password) {
		int count= jdbcTemplate.queryForObject("select count(*) from users where email=? and password =?;", Integer.class, email, password);
		if(count==1){
			return true;
		}else {
		return false;
		}
	}
	

	

	public boolean checkEmail(String email) {
		int count= jdbcTemplate.queryForObject("select count(*) from users where email=?;", Integer.class, email);
		if(count==1){
			return true;
		}else {
		return false;
		}
	}



	public boolean validateAdmin(String email, String password) {
		int count= jdbcTemplate.queryForObject("select count(*) from admin where email=? and password =?;", Integer.class, email, password);
		if(count==1){
			return true;
		}else {
		return false;
		}
	}
	

	public User loginUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		try {
			Query<User> query=session.createQuery("from users where email=:email and password=:password",User.class);
			
			query.setParameter("email",user.getEmail());
			query.setParameter("password",user.getPassword());
user=query.getSingleResult();
//			query.setMaxResults(1).uniqueResult();
		
			return user;
	}catch(NoResultException e) {
		return null;
	}
		

}

    public User getCurrentUser(HttpSession session) {
        // TODO Auto-generated method stub
        return null;
    }
	

	   

}
