package cn.yun.core.action;

import cn.yun.core.page.PageResult;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{
	//选中的记录
	protected String[] selectedRow;
	//当前页
	protected int pageNo = 1;
	//每页显示记录数 
	protected int pageSize;
	//数据库返回的结果对象
	protected PageResult pageResult;
	public String[] getSelectedRow() {
		return selectedRow;
	}
	public void setSelectedRow(String[] selectedRow) {
		this.selectedRow = selectedRow;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public PageResult getPageResult() {
		return pageResult;
	}
	public void setPageResult(PageResult pageResult) {
		this.pageResult = pageResult;
	}
}
