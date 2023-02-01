package com.spring.mvc.repositiry;

import java.util.List;

import com.spring.mvc.model.ApplyJob;
import com.spring.mvc.model.Jobs;
import com.spring.mvc.model.User;

public interface ApplyRepository {
    public void saveApplyJobs(User user, Jobs job,String name, String schoolName, float schoolGrade, String collegeName, float collegeGrade, String versityName, float versityGrade,String status);
    public List<ApplyJob> allApplyJob();
    public ApplyJob singleApplyJob(int ajid);
    public void deleteApplyJobd(int ajid);
     public void saveApplyJob(ApplyJob applyJob);
     public boolean validateApplyJob(int id, int job_id);
		public void status(User user, Jobs job,String name, String schoolName, float schoolGrade, String collegeName, float collegeGrade, String versityName, float versityGrade,String status);
		public void saveApply(List<User> user,List<Jobs> job,ApplyJob applyJob);

}
