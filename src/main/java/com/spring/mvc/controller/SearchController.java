package com.spring.mvc.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mvc.dao.SearchDao;
import com.spring.mvc.model.User;


@Controller
public class SearchController {
	private ApplicationContext context;

	  @RequestMapping("/find") public String search(Model model) { context = new
	  ClassPathXmlApplicationContext("ApplicationContext.xml"); User user =
	  context.getBean("info",User.class); model.addAttribute("bean", user); return
	 "search"; }
	 
	@RequestMapping("/search")
	public String searchUsrs(@ModelAttribute ("bean") User user, Model model) {
		
		 context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
			SearchDao obj = context.getBean(SearchDao.class);
		List list = obj.search(user);
		if(!list.isEmpty()) {
			model.addAttribute("data", list);
		}else {
			model.addAttribute("msg", "User Not found");
		}
		return "search";
	}
	

    @RequestMapping({"/userSearch"})
    public String searchuser(@ModelAttribute("bean") User user, Model model) {
		
		  this.context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		        SearchDao obj = (SearchDao)this.context.getBean(SearchDao.class);
        List list = obj.search(user);
        if (!list.isEmpty()) {
            model.addAttribute("profile", list);
        } else {
            model.addAttribute("msg", "User Not found");
        }

        return "home-header";
    }
	

	
	  @RequestMapping(value="/resetPass",method = RequestMethod.POST)
	  public String edit( @ModelAttribute("bean") User user,Model model) {
		  context = new  ClassPathXmlApplicationContext("ApplicationContext.xml");
		  SearchDao obj =context.getBean("dao",SearchDao.class);
		  List list=obj.update(user);
		  model.addAttribute("data",list);
		  model.addAttribute("reset"," Reset Password Successful");
		  return "login";	
	  }
	  
	  
	  
	  
		
//	  @RequestMapping(value="/updateProfile",method = RequestMethod.POST)
//	  public String editProfile( @ModelAttribute User user,Model model) {
//		  context = new  ClassPathXmlApplicationContext("ApplicationContext.xml");
//		  SearchDao obj =context.getBean("dao",SearchDao.class);
//		  List list=obj.updateProfile(user);
//		  model.addAttribute("data",list);
//		  model.addAttribute("reset"," Reset Password Successful");
//		  return "updateUser";	
//	  }
//	
	
	


}
