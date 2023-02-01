package com.spring.mvc.repositiry;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.spring.mvc.model.Jobs;

public interface JobRepository {
	public void saveJobsToDB(MultipartFile file, String name, String title, int salary, String type,String location,String description);
	public Jobs singleJob(int id);
	public List<Jobs> getAlljobs();
	public void deleteJobsdById(int id);
	public void saveJobs(Jobs jobs);
	
}
