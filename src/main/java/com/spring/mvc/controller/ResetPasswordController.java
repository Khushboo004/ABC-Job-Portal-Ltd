package com.spring.mvc.controller;


import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class ResetPasswordController {

	/*
	 * in login page,When the user clicks on the (Forgot Password?) link, the user
	 * will be taken to the forgot password page
	 */
	@RequestMapping("/forgot")
	public String forgotPassword() {
		return "forgot-password";
	}
	
		@RequestMapping(value="/resetPassword/{email}" )
		public String resetPassword(@PathVariable String email,Map<String,String> model,Model m)
		{
			//check if the email id is valid and registered with us.
			model.put("emailid", email);
	//		User user= this.userDao.getProfile(email);
	//		m.addAttribute("user", user);
			return "reset-password";
		}	
}

	
//@PostMapping("/resetPass")
//	public String restPassword(@RequestParam ("password") String password,HttpSession session) {
//		String email=(String) session.getAttribute("email");
//		User user = this.userReopsitior.resetPass(email);
//		this.userReopsitior.save(user);
//		return "login";
//	}
	
	
	
	/*
	 * @RequestMapping("/resetPassword/{email}/resetPass") public String
	 * updateUserForm(@PathVariable("email") String email,String password,Model
	 * model) { User user= this.userDao.reset(email, password); // SearchDao user=
	 * this.searchDao.reset("email") model.addAttribute("user", user); return
	 * "login";
	 * 
	 * }
	 */
//	@RequestMapping(value = "/resetPassword/{email}/resetPass", method = RequestMethod.POST)
//	public void resetPass(@ModelAttribute User user, Model model,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	HttpSession session = request.getSession();
//	String newPassword = request.getParameter("password");
//	String cPassword = request.getParameter("cpassword");
//
//	RequestDispatcher dispatcher = null;
//	try {
//		
//		  Class.forName("com.mysql.cj.jdbc.Driver");
//		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/register");
//		 PreparedStatement ptst =
//		 connection.prepareStatement("update  users  =? email ="+user.getEmail()
//		 +"'");
//		 
//		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		SearchDao obj = context.getBean("dao",SearchDao.class);
//		List list = obj.resetPassword(user);
//		ptst.setString(1, newPassword);
//		ptst.setString(2, (String) session.getAttribute("email"));
//		int rowCount = ptst.executeUpdate();
//		if (rowCount > 0) {
//			request.setAttribute("status", "resetSuccess");
//			dispatcher = request.getRequestDispatcher("login.jsp");
//			
//		}else {
//			request.setAttribute("status", "resetFailed");
//			dispatcher = request.getRequestDispatcher("login.jsp");
//		}
//		dispatcher.forward(request, response);
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	}
//}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value = "/resetPassword/{email}/resetPass", method = RequestMethod.POST)
//	public String resetPass(@ModelAttribute ("bean") User user, Model model,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	HttpSession session = request.getSession();
//	String newPassword = request.getParameter("password");
//	String cPassword = request.getParameter("cpassword");
////	SearchDao obj = context.getBean("dao",SearchDao.class);
////	List list = obj.resetPassword(user);
//	RequestDispatcher dispatcher = null;
//	if(newPassword != null && cPassword != null && newPassword.equals(cPassword)) {
//		context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		SearchDao obj = context.getBean("dao",SearchDao.class);
//		List list = obj.resetPassword(user);
//		if( !list.isEmpty()) {
//			request.setAttribute("status", "resetSuccess");
//			dispatcher = request.getRequestDispatcher("login.jsp");			
//		}else {
//			request.setAttribute("status",  "resetFailed");
//			dispatcher = request.getRequestDispatcher("login.jsp");
//		}
//		dispatcher.forward(request, response);
//	}
//	return "login";
//}
	
	
	
	
	
	
//	@RequestMapping("/update/{userId}")
//	public String updateUserForm(@PathVariable("userId") int uId, Model model) {
//		User user= this.userDao.getUser(uId);
//		model.addAttribute("user", user);
//		return "updateUser";
//		
//	}
	
	
	
	
	
	
//	  }
