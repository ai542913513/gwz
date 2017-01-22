package cn.yun.bbs.entity;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String headImage;
	private String mail;
	private String phone;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(User user) {
		this.user = user;
	}

	/** full constructor */
	public Userinfo(User user, String headImage, String mail, String phone) {
		this.user = user;
		this.headImage = headImage;
		this.mail = mail;
		this.phone = phone;
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

	public String getHeadImage() {
		return this.headImage;
	}

	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}