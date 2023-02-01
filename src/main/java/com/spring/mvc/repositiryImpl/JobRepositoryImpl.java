package com.spring.mvc.repositiryImpl;

import java.io.IOException;

import java.util.Base64;
import java.util.List;

import javax.transaction.Transactional;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.spring.mvc.model.Jobs;
import com.spring.mvc.repositiry.JobRepository;
import com.spring.mvc.repositiry.UserRepository;
@Component
@Transactional
public class JobRepositoryImpl implements JobRepository{
@Autowired
	private SessionFactory sessionFactory;


@Autowired
UserRepository userRepository;


	

	@Transactional
	public void saveJobsToDB(MultipartFile file, String name, String title, int salary, String type,String location,String description) {
		Jobs jobs = new Jobs();
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		if (fileName.contains(".")) {
			System.out.println("not a a valid file");
		}
		try {
			jobs.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		jobs.setName(name);
		jobs.setSalary(salary);
		jobs.setTitle(title);
		jobs.setType(type);
		jobs.setDescription(description);
		jobs.setLocation(location);
//		jobs.setPostedOn(postedOn);
		jobs.setImage(fileName);
		sessionFactory.getCurrentSession().saveOrUpdate(jobs);
	}
	

	//get the single job
	public Jobs singleJob(int id) {
		return sessionFactory.getCurrentSession().get(Jobs.class, id);
	}

	public List<Jobs> getAlljobs() {
		@SuppressWarnings("unchecked")
		List<Jobs> jobs = sessionFactory.getCurrentSession().createQuery("from job_Posting").list();
		return jobs;
	}

	  public void deleteJobsdById(int id)
	    {
		Jobs jobs =sessionFactory.getCurrentSession().load(Jobs.class, id);
		sessionFactory.getCurrentSession().delete(jobs);
	}

	
	public void saveJobs(Jobs jobs) {
		sessionFactory.getCurrentSession().saveOrUpdate(jobs);
		
	}

}

