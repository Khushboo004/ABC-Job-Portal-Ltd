package com.spring.mvc.repositiryImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;


import com.spring.mvc.model.ApplyJob;
import com.spring.mvc.model.Jobs;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.ApplyRepository;
import com.spring.mvc.repositiry.UserRepository;

@Component
@Transactional
public class ApplyRepositoryImpl implements ApplyRepository{
    
    
    @Autowired
    private SessionFactory sessionFactory;

@Autowired
UserRepository userRepository;
@Autowired
private JdbcTemplate jdbcTemplate;
    
    public void saveApplyJob(ApplyJob applyJob) {
         sessionFactory.getCurrentSession().saveOrUpdate(applyJob);

     }
    @SuppressWarnings("unchecked")
    public List<ApplyJob> allApplyJob() {

        return sessionFactory.getCurrentSession().createQuery("from apply_job").list();
    }
    
    public void saveApplyJobs(User user, Jobs job,String name, String schoolName, float schoolGrade, String collegeName, float collegeGrade, String versityName, float versityGrade,String status) {
        ApplyJob apply = new ApplyJob();

        apply.setJob(job);
        apply.setUser(user);
        apply.setName(name);
        apply.setSchoolName(schoolName);
        apply.setSchoolGrade(schoolGrade);
        apply.setCollegeName(collegeName);
        apply.setCollegeGrade(collegeGrade);
        apply.setVersityName(versityName);
        apply.setVersityGrade(versityGrade);
        apply.setStatus(status);
        sessionFactory.getCurrentSession().save(apply);
    }
    
	//get the single job
	public ApplyJob singleApplyJob(int ajid) {
		return sessionFactory.getCurrentSession().get(ApplyJob.class, ajid);
	}
    

	  public void deleteApplyJobd(int ajid)	    {
		  ApplyJob aj =sessionFactory.getCurrentSession().load(ApplyJob.class, ajid);
		sessionFactory.getCurrentSession().delete(aj);
	}
	public boolean validateApplyJob(int id, int job_id) {
		int count= jdbcTemplate.queryForObject("select count(*) from apply_job where id=? and job_id =?;", Integer.class, id, job_id);
		if(count==1){
			return true;
		}else {
		return false;
		}
		
	}
		public void status(User user, Jobs job,String name, String schoolName, float schoolGrade, String collegeName, float collegeGrade, String versityName, float versityGrade,String status) {
	        ApplyJob apply = new ApplyJob();

	        apply.setJob(job);
	        apply.setUser(user);
	        apply.setName(name);
	        apply.setSchoolName(schoolName);
	        apply.setSchoolGrade(schoolGrade);
	        apply.setCollegeName(collegeName);
	        apply.setCollegeGrade(collegeGrade);
	        apply.setVersityName(versityName);
	        apply.setVersityGrade(versityGrade);
	        apply.setStatus(status);
			sessionFactory.getCurrentSession().update(apply);

		
		
		
	}
		public void saveApply(List<User> user,List<Jobs> job,ApplyJob applyJob) {
			sessionFactory.getCurrentSession().saveOrUpdate(applyJob);

		}



	


	
       

}
