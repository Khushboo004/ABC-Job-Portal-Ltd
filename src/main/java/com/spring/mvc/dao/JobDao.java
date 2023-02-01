//package com.spring.mvc.dao;
//
//import java.io.IOException;
//import java.util.Base64;
//import java.util.List;
//
//import javax.transaction.Transactional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate5.HibernateTemplate;
//import org.springframework.stereotype.Repository;
//import org.springframework.util.StringUtils;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.spring.mvc.model.Jobs;
//
//@Repository
//public class JobDao {
//
//	@Autowired
//	private HibernateTemplate hibernateTemplate;
//	
//
//
//	public HibernateTemplate getHibernateTemplate() {
//		return hibernateTemplate;
//	}
//
//	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
//		this.hibernateTemplate = hibernateTemplate;
//	}
//
//	@Transactional
//	public void saveJobsToDB(MultipartFile file, String name, String title, int salary, String type,String location,String description) {
//		Jobs jobs = new Jobs();
//		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
//		if (fileName.contains(".")) {
//			System.out.println("not a a valid file");
//		}
//		try {
//			jobs.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		jobs.setName(name);
//		jobs.setSalary(salary);
//		jobs.setTitle(title);
//		jobs.setType(type);
//		jobs.setDescription(description);
//		jobs.setLocation(location);
////		jobs.setPostedOn(postedOn);
//		jobs.setImage(fileName);
//		this.hibernateTemplate.saveOrUpdate(jobs);
//	}
//	
////	@Transactional
////	public void saveUsers(User user) {
////		this.hibernateTemplate.saveOrUpdate(user);
////		
////		
////	}
//	//get the single user
//	@Transactional
//	public Jobs UpdateJob(Long id) {
//		return this.hibernateTemplate.get(Jobs.class, id);
//	}
//
//	public List<Jobs> getAlljobs() {
//		List<Jobs> jobs = this.hibernateTemplate.loadAll(Jobs.class);
//		return jobs;
//	}
////		return jobRepository.findAll();
////	}
//	//delete the jobs user
//	@Transactional
//	  public void deleteJobsdById(Long id)
//	    {
//		Jobs jobs = this.hibernateTemplate.load(Jobs.class, id);
//		this.hibernateTemplate.delete(jobs);
//	}
////	    	jobRepository.deleteById(id);
////	    }
//
//	
//	@Transactional
//	public void saveJobs(Jobs jobs) {
//		this.hibernateTemplate.saveOrUpdate(jobs);
//		
//	}
//
//}
