package cn.yun.bbs.entity;

/**
 * Friend entity. @author MyEclipse Persistence Tools
 */

public class Friend implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String fid;

	// Constructors

	/** default constructor */
	public Friend() {
	}

	/** minimal constructor */
	public Friend(User user) {
		this.user = user;
	}

	/** full constructor */
	public Friend(User user, String fid) {
		this.user = user;
		this.fid = fid;
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

	public String getFid() {
		return this.fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

}