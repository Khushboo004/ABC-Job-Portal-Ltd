package com.spring.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.model.ApplyJob;
import com.spring.mvc.model.Jobs;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.ApplyRepository;
import com.spring.mvc.repositiry.JobRepository;
import com.spring.mvc.repositiry.UserRepository;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ApplyJobController {
	@Autowired
	private JobRepository jobRepository;
	@Autowired
	private ApplyRepository applyRepository;
	@Autowired
	UserRepository userRepository;

	@RequestMapping("/applyJobList")
	public ModelAndView applyJobList(Model model) {
		ModelAndView applyJobList = new ModelAndView("applyJobList");
		List<ApplyJob> applyJob = applyRepository.allApplyJob();
		model.addAttribute("applyJob", applyJob);
		return applyJobList;
	}

	@RequestMapping("/applyJobs/{jobId}/{userId}")
	public String applyJobs(@PathVariable("jobId") int job_id, @PathVariable("userId") int uId, Model model) {
		Jobs job = this.jobRepository.singleJob(job_id);
		User user = this.userRepository.getUser(uId);
		if (user == null) {
			return "redirect:/login";
		}
		model.addAttribute("job", job);
		model.addAttribute("user", user);
		return "applyJob";
	}

	@RequestMapping("/applyJobs/{userId}")
	public String applyJobList(Model model, HttpSession session, @PathVariable("userId") int uId) {

		User users = userRepository.getUser(uId);

		if (users == null) {
			return "redirect:/login";
		}
		List<ApplyJob> applyJob = applyRepository.allApplyJob();
//        List<User> user = userRepository.getUser()
		List<ApplyJob> userApply = new ArrayList<ApplyJob>();

		for (ApplyJob apply : applyJob) {
			if (apply.getUser().getId() == users.getId()) {
				userApply.add(apply);
			}
		}

		model.addAttribute("applyJob", userApply);
		return "userApplyJobDetails";

	}

	@RequestMapping(value = "/applyJob/{userId}/{jobId}", method = RequestMethod.POST)
	public String applyJobsForm(@PathVariable("jobId") int jobid, @PathVariable("userId") int uId,@RequestParam("id") int id, @RequestParam("jobId") int job_id,
			@RequestParam("name") String name, @RequestParam("schoolName") String schoolName,
			@RequestParam("schoolGrade") float schoolGrade, @RequestParam("collegeName") String collegeName,
			@RequestParam("collegeGrade") float collegeGrade, @RequestParam("versityName") String versityName,
			@RequestParam("versityGrade") float versityGrade, @RequestParam("status") String status,

			Model model, HttpSession session) {
		Jobs jobd = this.jobRepository.singleJob(jobid);
		User userid= this.userRepository.getUser(uId);
		User users = userRepository.getCurrentUser(session);
		User user = userRepository.getUser(id);
		Jobs job = jobRepository.singleJob(job_id);
		boolean ajAgain = applyRepository.validateApplyJob(id, job_id);
		if (ajAgain == true) {
			model.addAttribute("user", userid);
			model.addAttribute("job", jobd);
			model.addAttribute("err", "Can't apply again");
			return "jobDetails";
		}
		try {



			applyRepository.saveApplyJobs(user, job, name, schoolName, schoolGrade, collegeName, collegeGrade,
					versityName, versityGrade, status);


			model.addAttribute("applyJobSuccess", "msg");
			return "applyJobSuccess";
		} catch (Exception e) {
			model.addAttribute("msg", "Please fill up all form");
		}

		if (users == null) {
			return "redirect:/login";
		} else {
			model.addAttribute("msg", "Email & Password is incorrect!! Please try again");
			return "redirect:/applyJob";
		}

	}

	// Admin can update/edit single user
	@RequestMapping("/status/{applyJobId}")
	public String updateApplyForm(@PathVariable("applyJobId") int ajId, Model model) {
		ApplyJob applyJob = this.applyRepository.singleApplyJob(ajId);
		model.addAttribute("applyJob", applyJob);
		return "status";
	}

	// Admin can delete single user
	@RequestMapping("/deleteStatus/{applyJobId}")
	public RedirectView deleteapplyData(@PathVariable("applyJobId") int ajId, HttpServletRequest request) {
		this.applyRepository.deleteApplyJobd(ajId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/applyJobList");
		return redirectView;
	}

	@RequestMapping(value = "/giveStatus", method = RequestMethod.POST)
	public String giveStatus(@RequestParam("id") int id, @RequestParam("jobId") int job_id,
			@RequestParam("name") String name, @RequestParam("schoolName") String schoolName,
			@RequestParam("schoolGrade") float schoolGrade, @RequestParam("collegeName") String collegeName,
			@RequestParam("collegeGrade") float collegeGrade, @RequestParam("versityName") String versityName,
			@RequestParam("versityGrade") float versityGrade, @RequestParam("status") String status, Model model) {
		User user = userRepository.getUser(id);
		Jobs job = jobRepository.singleJob(job_id);
		applyRepository.status(user, job, name, schoolName, schoolGrade, collegeName, collegeGrade, versityName,
				versityGrade, status);
		return "updateSuccess";

	}

}
