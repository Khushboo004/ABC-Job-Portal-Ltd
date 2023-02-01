package com.spring.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity(name = "threads")
@Table(name = "threads")
public class Threads {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_thread;


    @ManyToOne
    @JoinColumn(name = "id")
    private User user;
    
    private String title;
    private String content;
    
	/*
	 * @OneToOne(cascade = CascadeType.ALL, mappedBy = "threads") private ThreadTags
	 * tags;
	 */
    
    public Threads( User user, String title, String content) {
        super();
        this.user = user;
        this.title = title;
        this.content = content;
    }

    public Threads() {
        // TODO Auto-generated constructor stub
    }

    public int getId_thread() {
        return id_thread;
    }

    public void setId_thread(int id_thread) {
        this.id_thread = id_thread;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

	@Override
	public String toString() {
		return "Threads [id_thread=" + id_thread + ", user=" + user + ", title=" + title + ", content=" + content + "]";
	}

	public Threads(int id_thread, User user, String title, String content) {
		super();
		this.id_thread = id_thread;
		this.user = user;
		this.title = title;
		this.content = content;
	}



}
