package com.spring.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.mvc.model.Comment;
import com.spring.mvc.model.Jobs;
import com.spring.mvc.model.Threads;
import com.spring.mvc.model.User;
import com.spring.mvc.repositiry.LoginRepository;
import com.spring.mvc.repositiry.ThreadReopsitory;
import com.spring.mvc.repositiry.UserRepository;

@Controller
public class ThreadController {

	@Autowired
	ThreadReopsitory threadReopsitory;

	@Autowired
	LoginRepository loginRepository;
	@Autowired
	UserRepository userRepository;

	@RequestMapping("/threadRead/{userId}")
	public String threadRead(@PathVariable("userId") int uId, HttpSession session, Model model,
			Threads th) {
		User user = this.userRepository.getUser(uId);

		if (user == null) {
			return "redirect:/login";
		}
		List<Threads> threads = threadReopsitory.listThread();
		List<Threads> userthreads = new ArrayList<>();

		for (Threads thread : threads) {
			if (thread.getUser().getId() == user.getId()) {
				userthreads.add(thread);
			}
		}


		model.addAttribute("thread", userthreads);
		model.addAttribute("user", user);

		return "thread-read";
	}

	@RequestMapping("/allComments/{userId}/{threadId}")
	public String CommentRead(@PathVariable("userId") int uId, @PathVariable("threadId") int tId, HttpSession session,
			Model model, Threads th/* Comment comments */) {
		User user = this.userRepository.getUser(uId);
		Threads threads = this.threadReopsitory.findThreadById(tId);
		model.addAttribute("thread", threads);
		if (threads == null) {
			return "redirect:/thread-read";
		} else if (user == null) {
			return "redirect:/login";
		}
		List<Comment> comment = threadReopsitory.listUserComment();
		List<Comment> userComment = new ArrayList<>();
		for (Comment commentThread : comment) {
			if (commentThread.getThreads().getId_thread() == threads.getId_thread()) {
				userComment.add(commentThread);
			}
		}

		model.addAttribute("listComment", userComment);
		model.addAttribute("user", user);

		return "comment";
	}

	// Post Thread
	@RequestMapping("/postthread/{userId}")
	public String postThread(@PathVariable("userId") int uId, Model model) {
		User user = this.userRepository.getUser(uId);        
		if (user == null) {
			return "redirect:/login";
		}

		model.addAttribute("user", user);

		return "threadPost";
	}


	@RequestMapping("/postThread/{userId}")
	public ModelAndView savePostThread(@PathVariable("userId") int userId,@RequestParam("id") int id, @RequestParam("title") String title,
			@RequestParam("content") String content, HttpSession session) {
		ModelAndView mv = new ModelAndView();

		User user = userRepository.getUser(userId);

		
		try {
		if (user == null) {
			mv.setViewName("redirect:/login");
			return mv;
		}
			threadReopsitory.postThread(user, title, content);
			List<Threads> threads = threadReopsitory.listThread();
			List<Threads> userthreads = new ArrayList<>();

			for (Threads thread : threads) {
				if (thread.getUser().getId() == user.getId()) {
					userthreads.add(thread);
				}
			}


			mv.addObject("thread", userthreads);
			mv.addObject("user", user);

			mv.setViewName("thread-read");
			return mv;
		} catch (Exception e) {
			e.printStackTrace();
		}
			return mv;
	}

	@RequestMapping(value = "/postComment/{userId}/{threadId}", method = RequestMethod.POST)
	public ModelAndView postComment(@PathVariable("userId") int userId, @PathVariable("threadId") int threadId,
			@RequestParam("u_id") int uId, @RequestParam("comment") String comment, @RequestParam("id") int t_id,
			HttpSession session, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		try {
			User userid = this.userRepository.getUser(userId);
			Threads threadid = threadReopsitory.findThreadById(threadId);

			User user = this.userRepository.getUser(uId);
			Threads thread = threadReopsitory.findThreadById(t_id);

			if (user == null) {
				mv.setViewName("redirect:/login");
				return mv;
			}

			threadReopsitory.postComment(comment, thread, user);
			mv.addObject("user", userid);

			List<Comment> comments = threadReopsitory.listUserComment();
			List<Comment> userComment = new ArrayList<>();
			for (Comment commentThread : comments) {
				if (commentThread.getThreads().getId_thread() == thread.getId_thread()) {
					userComment.add(commentThread);
				}
			}
			mv.addObject("listComment", userComment);
			mv.addObject("thread", threadid);
			mv.setViewName("comment");
			return mv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}


}
