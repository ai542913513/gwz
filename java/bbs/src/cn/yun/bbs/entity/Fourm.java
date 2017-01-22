package cn.yun.bbs.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Fourm entity. @author MyEclipse Persistence Tools
 */

public class Fourm implements java.io.Serializable {

	// Fields

	private Integer id;
	private Bbs bbs;
	private Zhuanzai zhuanzai;
	private User user;
	private Date creatTime;
	private String title;
	private String coment;
	private Set remarks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Fourm() {
	}

	/** minimal constructor */
	public Fourm(Bbs bbs, Zhuanzai zhuanzai, User user, Date creatTime,
			String title, String coment) {
		this.bbs = bbs;
		this.zhuanzai = zhuanzai;
		this.user = user;
		this.creatTime = creatTime;
		this.title = title;
		this.coment = coment;
	}

	/** full constructor */
	public Fourm(Bbs bbs, Zhuanzai zhuanzai, User user, Date creatTime,
			String title, String coment, Set remarks) {
		this.bbs = bbs;
		this.zhuanzai = zhuanzai;
		this.user = user;
		this.creatTime = creatTime;
		this.title = title;
		this.coment = coment;
		this.remarks = remarks;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Bbs getBbs() {
		return this.bbs;
	}

	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}

	public Zhuanzai getZhuanzai() {
		return this.zhuanzai;
	}

	public void setZhuanzai(Zhuanzai zhuanzai) {
		this.zhuanzai = zhuanzai;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getCreatTime() {
		return this.creatTime;
	}

	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getComent() {
		return this.coment;
	}

	public void setComent(String coment) {
		this.coment = coment;
	}

	public Set getRemarks() {
		return this.remarks;
	}

	public void setRemarks(Set remarks) {
		this.remarks = remarks;
	}

}