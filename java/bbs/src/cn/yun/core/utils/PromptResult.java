package cn.yun.core.utils;

import java.io.Serializable;

public class PromptResult implements Serializable {
	/**
	 * 友好提示内容
	 */
	private String message="";
	/**
	 * 友好提示标题
	 */
	private String title=null;
	/**
	 * 友好提示图片
	 */
	private int imagename;
	
	private String togo;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getImagename() {
		return imagename;
	}

	public void setImagename(int imagename) {
		this.imagename = imagename;
	}

	public String getTogo() {
		return togo;
	}

	public void setTogo(String togo) {
		this.togo = togo;
	}
}
