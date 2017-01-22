package cn.yun.core.page;

import java.util.ArrayList;
import java.util.List;

public class PageResult {
	//1.总共记录数     
	private int totalCount;
	//2.当前页
	private int pageNo;
	//3.总页数         
	private int tatalPageCount;
	//4.结果集         
	private List items;
	//5.每页显示记录数 
	private int pageSize;
	
	public static int PAGE_SIZE = 3;
	
	public PageResult(int totalCount, int pageNo, List items, int pageSize) {
		
		this.totalCount = totalCount;
		
		this.pageNo = pageNo;
		
		this.tatalPageCount = (totalCount%pageSize)==0?(totalCount/pageSize):(totalCount/pageSize)+1;
		if(items == null){
			this.items = new ArrayList();
		}else{
			this.items = items;
		}
		
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTatalPageCount() {
		return tatalPageCount;
	}
	public void setTatalPageCount(int tatalPageCount) {
		this.tatalPageCount = tatalPageCount;
	}
	public List getItems() {
		return items;
	}
	public void setItems(List items) {
		this.items = items;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	
}
