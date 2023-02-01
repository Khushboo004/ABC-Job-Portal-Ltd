package com.spring.mvc.repositiry;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.spring.mvc.model.Comment;

import com.spring.mvc.model.Threads;
import com.spring.mvc.model.User;

public interface ThreadReopsitory {
    public List<Threads> listThread();
    public List<Threads> listUserThread(int id);
    public List<Comment> listComment(int id);
    public Threads findThreadById(int id);
    public void postThread(User user, String title, String content);
    public Threads editThread(Threads thread);
    public void deletetThread(int tid);
    public void deletetComment(int cid);
    public void postComment(String comment, Threads thread, User user);
    public List<Comment> listUserComment();
    public Threads getCurrentThread(HttpSession session);
    public Comment getCurrentComment(HttpSession session);
    public Comment uComment(Comment comment);
    public boolean delateThread(int tid) ;
}