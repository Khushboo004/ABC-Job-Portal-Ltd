package com.spring.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.mail.MailService;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.LoginRepository;


@Controller
public class LoginController {
	@Autowired
	LoginRepository loginRepository;

	
	@Autowired
	private MailService mailService; 

	/*
	 * If admin & user give correct email & password and user will be directly
	 * displayed on success page. If email & password are not entered correctly,
	 * admin and user login page will be displayed again
	 */
//	@GetMapping("/loginform")
	 @PostMapping("/loginform") 
	public String checkUser(@RequestParam String email, @RequestParam String password,@ModelAttribute("users")User user,Model model,HttpSession session) {
		 User user2=loginRepository.loginUser(user);
		 boolean loginUser = loginRepository.validateUser(email, password);
		boolean loginAdmin = loginRepository.validateAdmin(email, password);
	
	
		if(loginUser==true || user2 !=null) {
			model.addAttribute("user", user2);
			session.setAttribute("user", user2);
			return "login_Success";
		}else if(loginAdmin==true) {
			return "admin_login_Success";
		}else {
			model.addAttribute("msg", "Email & Password is incorrect!! Please try again"); 
			return "login";			
		}	
		
	}
	
	//User will go to check mail page if correct email is entered in reset password
	@PostMapping("/emailConfirm")
	public String emailConfirm(@RequestParam(value="email") String email, Model model,HttpServletRequest req,
			HttpServletResponse res) {
		boolean loginE = loginRepository.checkEmail(email);
		if(loginE==true) {
			mailService.sendMail(email);
			req.getSession().setAttribute("email", email);
			return "checkMail";
		}else {
			model.addAttribute("msg", "Email is incorrect!! Please try again"); 
			return "forgot-password";			
		}	
}
//	@RequestMapping(value="/resetPass", method = RequestMethod.POST)
//	public String handleUserData(@ModelAttribute String email,@ModelAttribute String password, Model m) {
//		 try {
//			 System.out.println("Email: "+email+", Password: "+password);
//			 userDao.saveUsers(email);
//			   
//			  return "resetSuccess";
//		} catch (Exception e) {
//			e.printStackTrace();
//			return "reset-password";
//			
//		}
//	}

//    @RequestMapping(value = "/logout", method = RequestMethod.GET)
//    public String logout(HttpServletRequest request,
//            HttpServletResponse response) {
//        
//        Authentication authentication = SecurityContextHolder.getContext()
//                .getAuthentication();
//        
//        if (authentication != null) {
//            new SecurityContextLogoutHandler().logout(request, response,
//                    authentication);
//        }
//
//        return "redirect:/";
//    }
	
	
}
