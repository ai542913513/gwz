package cn.yun.bbs.entity;

/**
 * Pinglun entity. @author MyEclipse Persistence Tools
 */

public class Pinglun implements java.io.Serializable {

	// Fields

	private PinglunId id;
	private Weibo weibo;
	private String pid;
	private String coment;

	// Constructors

	/** default constructor */
	public Pinglun() {
	}

	/** full constructor */
	public Pinglun(PinglunId id, Weibo weibo, String pid, String coment) {
		this.id = id;
		this.weibo = weibo;
		this.pid = pid;
		this.coment = coment;
	}

	// Property accessors

	public PinglunId getId() {
		return this.id;
	}

	public void setId(PinglunId id) {
		this.id = id;
	}

	public Weibo getWeibo() {
		return this.weibo;
	}

	public void setWeibo(Weibo weibo) {
		this.weibo = weibo;
	}

	public String getPid() {
		return this.pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getComent() {
		return this.coment;
	}

	public void setComent(String coment) {
		this.coment = coment;
	}

}