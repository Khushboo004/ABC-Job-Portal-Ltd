package com.spring.mvc.repositiryImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mvc.model.Comment;
import com.spring.mvc.model.Threads;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.ThreadReopsitory;

@Service
@Transactional
public class ThreadReopsitoryImpl implements ThreadReopsitory{
    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public List<Threads> listThread(){
        List<Threads> listThread = sessionFactory.getCurrentSession().createQuery("from threads").list();
        return listThread;
    }
    
    @SuppressWarnings("unchecked")
    public List<Threads> listUserThread(int id){
        List<Threads> listThread = (List<Threads>) sessionFactory.getCurrentSession().get(Threads.class, id);
        return listThread;
    }
    
    @SuppressWarnings("unchecked")
    public List<Comment> listComment(int id){
        List<Comment> listComment = (List<Comment>) sessionFactory.getCurrentSession().get(Comment.class, id);
        return listComment;
    }
    
    @SuppressWarnings("unchecked")
    public List<Comment> listUserComment(){
        List<Comment> listComment = sessionFactory.getCurrentSession().createQuery("from comments").list();
        return listComment;
    }
    
	public void deletetThread(int tid) {
		Threads threads = sessionFactory.getCurrentSession().load(Threads.class, tid);
		sessionFactory.getCurrentSession().delete(threads);
	}
	public void deletetComment(int cid) {
		Comment comment = sessionFactory.getCurrentSession().load(Comment.class, cid);
		sessionFactory.getCurrentSession().delete(comment);
	}
    
    public Threads findThreadById(int id) {
        Threads thread = sessionFactory.getCurrentSession().get(Threads.class, id);
        return thread;
    }
    

    
    public void postThread(User user, String title, String content) {
    	Threads threads = new Threads();
        
        threads.setUser(user);
        threads.setTitle(title);
        threads.setContent(content);
        
        
        
        sessionFactory.getCurrentSession().saveOrUpdate(threads);
    }
    
    public Threads editThread(Threads thread) {
        Threads editThread = findThreadById(thread.getId_thread());
        
        editThread.setTitle(thread.getTitle());
        editThread.setContent(thread.getContent());
        

        
        
        sessionFactory.getCurrentSession().saveOrUpdate(editThread);
        
        return editThread;
    }
    
    public void postComment(String comment, Threads thread, User user) {
        Comment postComment = new Comment();
        
        postComment.setUser(user);
        postComment.setThreads(thread);
        postComment.setComment(comment);
        sessionFactory.getCurrentSession().saveOrUpdate(postComment);
    }
    
    public Threads getCurrentThread(HttpSession session) {
    	Threads threads = (Threads) session.getAttribute("thread");
        if(threads != null) {
            System.out.println("User " + threads.getId_thread());
        }
        return threads;
    }
    
    public Comment getCurrentComment(HttpSession session) {
    	Comment comment = (Comment) session.getAttribute("comment");
        if(comment != null) {
            System.out.println("User " + comment.getThreads().getId_thread());
        }
        return comment;
    }
    @Autowired
    private JdbcTemplate jdbcTemplate;

	public Comment uComment(Comment comment) {
		Session session=sessionFactory.getCurrentSession();
		try {
			Query<Comment> query=session.createQuery("from comment where id=:id",Comment.class);
			
			query.setParameter("user",comment.getUser().getId());
			comment=query.getSingleResult();
//			query.setMaxResults(1).uniqueResult();
		
			return comment;
	}catch(NoResultException e) {
		return null;
	}
	}
		


	public boolean delateThread(int tid) {
		int count= jdbcTemplate.queryForObject("delete from comments where id_thread=?;", Integer.class, tid);
		if(count==1){
			return true;
		}else {
		return false;
		}
	}


		
		






}