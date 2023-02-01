package com.spring.mvc.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.mvc.model.Comment;
import com.spring.mvc.model.Jobs;
import com.spring.mvc.model.Threads;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.JobRepository;
import com.spring.mvc.repositiry.ThreadReopsitory;
import com.spring.mvc.repositiry.UserRepository;


@Controller
public class MainController {
    
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private JobRepository jobRepository;
    @Autowired
    ThreadReopsitory threadReopsitory;



    @RequestMapping("/")
    public String getLoginhomPage(Model model) {
        List<Jobs> jobs = jobRepository.getAlljobs();
        model.addAttribute("jobs", jobs);
        return "all-user-home";
    }
	//Login  URL	
	@RequestMapping("/login")
	public ModelAndView getLoginPage() {
		ModelAndView login = new ModelAndView("login");
		return login;
	}


	/*
	 * Admin Dashboard URL 
	 * show admin dashboard page
	 */
	@RequestMapping("/dashboard")
	public ModelAndView adminDashboard(Model model) {

		ModelAndView dashboard = new ModelAndView("dashboard");

		List<User> users = userRepository.getUser();
		model.addAttribute("users", users);
		return dashboard;
	}

	// show add user form
	@RequestMapping("/register")
	public String addUsres(Model model) {
		model.addAttribute("title", "Add users");
		return "registration_form";
	}

	// Show Login Page
	@RequestMapping("/loginPage")
	public String goToLoginPage() {
		return "login"; }

	//will Go to the login page
	@RequestMapping("/goLogin") 
	public String goToLogin() {
		return "login"; }

	// will Go to the home page
	/*
	 * @RequestMapping("/homePage") public String goToHomePage() { return "home"; }
	 */
	// will Go to the home page
	@RequestMapping("/homePage")
	public String showInHomepage(HttpSession session,Model model) {
		User user = userRepository.getCurrentUser(session);

		if (user == null) {
			return "redirect:/login";
		}
		List<Jobs> jobs = jobRepository.getAlljobs();
		model.addAttribute("jobs", jobs);
		List<Threads> thread = threadReopsitory.listThread();
		model.addAttribute("thread", thread);
		List<Comment> comments = threadReopsitory.listUserComment();
		model.addAttribute("comments", comments);


		return "home";
	}

	// Admin can delete single user
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteUserData(@PathVariable("userId") 
	int userId, HttpServletRequest request) {
		this.userRepository.deleteUser(userId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/dashboard");
		return redirectView;
	}

	//Admin can update/edit single user
	@RequestMapping("/update/{userId}")
	public String updateUserForm(@PathVariable("userId") int uId, Model model) {
		User user= this.userRepository.getUser(uId);
		model.addAttribute("user", user);
		return "updateUser";
	}

	
	//After clicking on reset password in the email, the reset password page will be displayed
	@RequestMapping("/profile/{userId}")
	public String profile(@PathVariable("userId") int uId, Model model) {
		User user= this.userRepository.getUser(uId);
		model.addAttribute("user", user);
		return "profile";
	}

//	// user profile
//	@RequestMapping("/userprofile")
//	public ModelAndView userProfile() {
//		ModelAndView profile = new ModelAndView("user_profile");
//		return profile;
//	}	
	// user profile
	@RequestMapping("/userprofile")
	public String userProfile(HttpSession session, Model model) {
		User user = userRepository.getCurrentUser(session);
//        List<Threads> threads = threadReopsitory.listThread(); 
//		model.addAttribute("users", threads);

  

		if (user == null) {
			return "redirect:/login";
		}
		return "user_profile";
	}



@RequestMapping("/edit/{userId}")
public String updaeUserForm(@PathVariable("userId") int uId, Model model) {
	User user= this.userRepository.getUser(uId);
	model.addAttribute("user", user);
	return "editeProfile";
}
// user profile
@RequestMapping("/thread-user")
public ModelAndView threadUser() {
    ModelAndView threadUser = new ModelAndView("thread-user");
    return threadUser;
}

}


