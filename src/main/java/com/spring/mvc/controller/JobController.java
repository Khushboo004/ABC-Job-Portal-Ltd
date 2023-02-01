package com.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.spring.mvc.model.Jobs;
import com.spring.mvc.repositiry.JobRepository;
import com.spring.mvc.repositiry.LoginRepository;
import com.spring.mvc.services.ApplyService;


@Controller
public class JobController {

	@Autowired
	private JobRepository jobRepository;

	@Autowired
	LoginRepository loginRepository;
	@Autowired
	ApplyService applyService;

	@RequestMapping(value = "/addJobs", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView returnAddJob() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addJobs");
		// mv.addObject("var", "halim");
		return mv;

	}

	@RequestMapping("/listJobs")
	public String showExampleView(Model model) {
		
		List<Jobs> jobs = jobRepository.getAlljobs();
		model.addAttribute("jobs", jobs);
		return "/listJobs";
	}

	@GetMapping("/add")
	public String showAddJobs() {

		return "addJobs";
	}

	@PostMapping("/addJ")
	public String saveJob(@RequestParam("file") MultipartFile file, @RequestParam("name") String name,
			@RequestParam("salary") int salary, @RequestParam("title") String title, @RequestParam("type") String type,
			@RequestParam("location") String location, @RequestParam("description") String description) {

		try {
			jobRepository.saveJobsToDB(file, name, title, salary, type, location, description);
			return "redirect:/listJobs";
		} catch (Exception e) {
			e.printStackTrace();

		}
		return "addJobs";
	}

	@GetMapping("/deletejob/{id}")
	public String deletejob(@PathVariable("id") int id) {

		jobRepository.deleteJobsdById(id);
		return "redirect:/listJobs";
	}

	// Admin can update/edit single job
	@RequestMapping("/updateJob/{jobId}")
	public String updateUserForm(@PathVariable("jobId") int Id, Model model) {
		Jobs job = this.jobRepository.singleJob(Id);
		model.addAttribute("job", job);
		return "updateJob";
	}

    @RequestMapping(value = "/updateJobs", method = RequestMethod.POST)
    public String resetUserData(@ModelAttribute Jobs jobs) {

        System.out.println(jobs);
        jobRepository.saveJobs(jobs);

        return "editJobSuccess";
    }

    @RequestMapping("/jobDetails/{jobId}")
    public String profile(@PathVariable("jobId") int id, Model model) {
        Jobs job = this.jobRepository.singleJob(id);
        model.addAttribute("job", job);
        return "jobDetails";
    }


}

