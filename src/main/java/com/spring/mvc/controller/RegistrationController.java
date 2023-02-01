package com.spring.mvc.controller;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.mail.RegisterMailService;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.UserRepository;
@Controller
public class RegistrationController {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RegisterMailService registerMailService;
	static ModelAndView modelAndView;

    //Registration URL
    @RequestMapping("/registration_form")
    public String registration_form() {
        return "registration_form";
    }

    @RequestMapping("/success")
    public String succes() {
        return "success";

    }
    static String emailToRecipient, userName, emailMessage;
    @RequestMapping(value="/handleform", method = RequestMethod.POST)
    public String handleUserData(@Valid @ModelAttribute  ("users") User user,Errors errors, Model m,HttpServletRequest request) {

        if(errors.hasErrors()) {
            return "registration_form";
        }
        //get email & full name from user
        emailToRecipient = request.getParameter("email");
        userName = request.getParameter("fullName");
        // Logging The Email Form Parameters For Debugging Purpose
        System.out.println("email?= " + emailToRecipient + ", fullName?= "+userName +  "\n");

        try {
            

            System.out.println(user);
            userRepository.saveUsers(user); 
            registerMailService.sendMail(emailToRecipient, userName);
            request.getSession().setAttribute("name", userName);
            request.getSession().setAttribute("email",emailToRecipient);
            System.out.println("\nMessage Send Successfully.... Hurrey!\n");
            m.addAttribute("thankYou","messageObj");

            return "thankYou";    
        } catch (DuplicateKeyException e) {
            m.addAttribute("err", "Email is already exixts");
            return "registration_form";
        }
    }




@RequestMapping(value="/updateUsers", method = RequestMethod.POST)
public String resetUserData(@ModelAttribute User user, Model m) {
//   try {
         System.out.println(user);
         userRepository.saveUsers(user); 
           
          return "updateSuccess";
    } /*
         * catch (DuplicateKeyException e) { e.printStackTrace(); m.addAttribute("err",
         * "Email is already exixts"); return "updateUser";
         * 
         * } }
         */

@RequestMapping(value="/updatePro", method = RequestMethod.POST)
public String tUserData(@ModelAttribute User user, Model m) {
         System.out.println(user);
         userRepository.saveUsers(user); 
           
          return "editProSuccess";
    
}
}