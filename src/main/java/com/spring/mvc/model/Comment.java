package com.spring.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity(name = "comments")
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_comment;
    
    @ManyToOne
    @JoinColumn(name = "id_thread")
    private Threads threads;
    private String comment;

	@ManyToOne
    @JoinColumn(name = "id")
    private User user;
    
    public Comment(int id_comment, Threads threads, User user, String comment) {
		super();
		this.id_comment = id_comment;
		this.threads = threads;
		this.user = user;
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Comment [id_comment=" + id_comment + ", threads=" + threads + ", user=" + user + ", comment=" + comment
				+ "]";
	}

    
    public Comment(Threads threads, User user, String comment) {
        super();
        this.threads = threads;
        this.user = user;
        this.comment = comment;
    }

    public Comment() {
        // TODO Auto-generated constructor stub
    }

    public int getId_comment() {
        return id_comment;
    }

    public void setId_comment(int id_comment) {
        this.id_comment = id_comment;
    }

    public Threads getThreads() {
        return threads;
    }

    public void setThreads(Threads threads) {
        this.threads = threads;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

 

}
