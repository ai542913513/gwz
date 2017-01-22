package cn.yun.bbs.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Bbs entity. @author MyEclipse Persistence Tools
 */

public class Bbs implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Set fourms = new HashSet(0);

	// Constructors

	/** default constructor */
	public Bbs() {
	}

	/** minimal constructor */
	public Bbs(String name) {
		this.name = name;
	}

	/** full constructor */
	public Bbs(String name, Set fourms) {
		this.name = name;
		this.fourms = fourms;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getFourms() {
		return this.fourms;
	}

	public void setFourms(Set fourms) {
		this.fourms = fourms;
	}

}