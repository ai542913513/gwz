package cn.yun.bbs.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Weibo entity. @author MyEclipse Persistence Tools
 */

public class Weibo implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String coment;
	private Date creatTime;
	private Set pingluns = new HashSet(0);

	// Constructors

	/** default constructor */
	public Weibo() {
	}

	/** minimal constructor */
	public Weibo(User user, String coment, Date creatTime) {
		this.user = user;
		this.coment = coment;
		this.creatTime = creatTime;
	}

	/** full constructor */
	public Weibo(User user, String coment, Date creatTime, Set pingluns) {
		this.user = user;
		this.coment = coment;
		this.creatTime = creatTime;
		this.pingluns = pingluns;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getComent() {
		return this.coment;
	}

	public void setComent(String coment) {
		this.coment = coment;
	}

	public Date getCreatTime() {
		return this.creatTime;
	}

	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}

	public Set getPingluns() {
		return this.pingluns;
	}

	public void setPingluns(Set pingluns) {
		this.pingluns = pingluns;
	}

}