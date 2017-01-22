package cn.yun.bbs.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String id;
	private String acount;
	private String userName;
	private String passWord;
	private String role;
	private Date registTime;
	private Date lastLoginTime;
	private Set friends = new HashSet(0);
	private Set userinfos = new HashSet(0);
	private Set weibos = new HashSet(0);
	private Set fourms = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String acount, String passWord, Date registTime) {
		this.acount = acount;
		this.passWord = passWord;
		this.registTime = registTime;
	}

	/** full constructor */
	public User(String acount, String userName, String passWord, String role,
			Date registTime, Date lastLoginTime, Set friends, Set userinfos,
			Set weibos, Set fourms) {
		this.acount = acount;
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
		this.registTime = registTime;
		this.lastLoginTime = lastLoginTime;
		this.friends = friends;
		this.userinfos = userinfos;
		this.weibos = weibos;
		this.fourms = fourms;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAcount() {
		return this.acount;
	}

	public void setAcount(String acount) {
		this.acount = acount;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Date getRegistTime() {
		return this.registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	public Date getLastLoginTime() {
		return this.lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Set getFriends() {
		return this.friends;
	}

	public void setFriends(Set friends) {
		this.friends = friends;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

	public Set getWeibos() {
		return this.weibos;
	}

	public void setWeibos(Set weibos) {
		this.weibos = weibos;
	}

	public Set getFourms() {
		return this.fourms;
	}

	public void setFourms(Set fourms) {
		this.fourms = fourms;
	}

}