package cn.yun.bbs.entity;

/**
 * PinglunId entity. @author MyEclipse Persistence Tools
 */

public class PinglunId implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer weiboId;

	// Constructors

	/** default constructor */
	public PinglunId() {
	}

	/** full constructor */
	public PinglunId(Integer id, Integer weiboId) {
		this.id = id;
		this.weiboId = weiboId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getWeiboId() {
		return this.weiboId;
	}

	public void setWeiboId(Integer weiboId) {
		this.weiboId = weiboId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof PinglunId))
			return false;
		PinglunId castOther = (PinglunId) other;

		return ((this.getId() == castOther.getId()) || (this.getId() != null
				&& castOther.getId() != null && this.getId().equals(
				castOther.getId())))
				&& ((this.getWeiboId() == castOther.getWeiboId()) || (this
						.getWeiboId() != null
						&& castOther.getWeiboId() != null && this.getWeiboId()
						.equals(castOther.getWeiboId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result
				+ (getWeiboId() == null ? 0 : this.getWeiboId().hashCode());
		return result;
	}

}