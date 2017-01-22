package cn.yun.bbs.entity;

import java.util.Date;

/**
 * Remark entity. @author MyEclipse Persistence Tools
 */

public class Remark implements java.io.Serializable {

	// Fields

	private Integer id;
	private Fourm fourm;
	private String coment;
	private String reId;
	private Date reTime;

	// Constructors

	/** default constructor */
	public Remark() {
	}

	/** minimal constructor */
	public Remark(Fourm fourm, String coment, String reId) {
		this.fourm = fourm;
		this.coment = coment;
		this.reId = reId;
	}

	/** full constructor */
	public Remark(Fourm fourm, String coment, String reId, Date reTime) {
		this.fourm = fourm;
		this.coment = coment;
		this.reId = reId;
		this.reTime = reTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Fourm getFourm() {
		return this.fourm;
	}

	public void setFourm(Fourm fourm) {
		this.fourm = fourm;
	}

	public String getComent() {
		return this.coment;
	}

	public void setComent(String coment) {
		this.coment = coment;
	}

	public String getReId() {
		return this.reId;
	}

	public void setReId(String reId) {
		this.reId = reId;
	}

	public Date getReTime() {
		return this.reTime;
	}

	public void setReTime(Date reTime) {
		this.reTime = reTime;
	}

}