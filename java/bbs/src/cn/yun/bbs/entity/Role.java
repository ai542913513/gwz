package cn.yun.bbs.entity;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private String id;
	private String roleName;

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** full constructor */
	public Role(String id, String roleName) {
		this.id = id;
		this.roleName = roleName;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}