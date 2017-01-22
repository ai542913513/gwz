package cn.yun.bbs.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Zhuanzai entity. @author MyEclipse Persistence Tools
 */

public class Zhuanzai implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uid;
	private Set fourms = new HashSet(0);

	// Constructors

	/** default constructor */
	public Zhuanzai() {
	}

	/** minimal constructor */
	public Zhuanzai(String uid) {
		this.uid = uid;
	}

	/** full constructor */
	public Zhuanzai(String uid, Set fourms) {
		this.uid = uid;
		this.fourms = fourms;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUid() {
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Set getFourms() {
		return this.fourms;
	}

	public void setFourms(Set fourms) {
		this.fourms = fourms;
	}

}