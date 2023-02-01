package com.spring.mvc.services;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mvc.model.ApplyJob;
import com.spring.mvc.model.Jobs;
import com.spring.mvc.model.User;


import java.util.List;

@Service
@Transactional
public class ApplyService {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveApplyJobs(ApplyJob applyJob) {
		sessionFactory.getCurrentSession().save(applyJob);

	}
	
	

	@SuppressWarnings("unchecked")
	public List<ApplyJob> listApplyJob() {
		/*
		 * List<User> users =sessionFactory.getCurrentSession().loadAll(User.class);
		 * return users;
		 */
		return sessionFactory.getCurrentSession().createQuery("from apply_job").list();
	}

	public void deleteApplyJob(int aid) {
		ApplyJob applyJob = sessionFactory.getCurrentSession().load(ApplyJob.class, aid);
		sessionFactory.getCurrentSession().delete(applyJob);
	}
	
//	public void applyJob(User user, Jobs job) {
//		ApplyJob apply = new ApplyJob(user, job, "PENDING");
//		
//		sessionFactory.getCurrentSession().save(apply);
//	}


}

















































//package com.spring.mvc.services;
//
//import javax.transaction.Transactional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.spring.mvc.model.ApplyJob;
//import com.spring.mvc.model.Jobs;
//import com.spring.mvc.model.User;
//import com.spring.mvc.repositiry.ApplyJobRepository;
//
//import java.util.List;
//
//@Service
//@Transactional
//public class ApplyService {
//	
//	@Autowired
//	ApplyJobRepository applyRepo;
//	
//
//	
//	public List<ApplyJob> listApplyJob(){
//		List<ApplyJob> listApply = applyRepo.findAll();
//		return listApply;
//	}
//
//
//	
//	public void applyJob(User user, Jobs job) {
//		ApplyJob apply = new ApplyJob(0, user, job, "PENDING");
//		
//		applyRepo.save(apply);
//	}
//
//
//}
