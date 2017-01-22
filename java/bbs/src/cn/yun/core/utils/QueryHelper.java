package cn.yun.core.utils;

import java.util.ArrayList;

public class QueryHelper {
	private ArrayList<Object> parameters = new ArrayList<Object>();;
	
	private String fromStr = "";
	private String whereStr = "";
	private String orderByStr = "";
	
	/**
	 * 创建from子句
	 * @param clazz 用户的查询的类名
	 * @param as 用户的查询类的别名
	 * 
	 * */
	public void setFromStr(Class clazz,String as){
		fromStr = "from "+clazz.getSimpleName()+" " + as;
	}
	/**
	 * 接收用户传入的查询条件，拼接查询语句和添加查询参数
	 * @param strHql 用户的查询条件语句 类似于i.title like ?
	 * @param params 用户的查询条件参数集合
	 * 
	 * */
	public void addCondition(String strHql,Object... params){
		
		if(params != null){
			for(int i= 0;i<params.length;i++){
				if(whereStr.length()>0){
					whereStr += " and " + strHql;
				}else{
					whereStr += " where " + strHql;
				}
				parameters.add(params[i]);
			}
		}
		
	}
	

	/**
	 * 创建from子句
	 * 
	 * @param param 用户排序的属性名
	 * @param sortType 用户排序的类型
	 * */
	public void setOrderByStr(String param,String sortType){
		
		if(param != null){
			if(orderByStr.length()>0){
				orderByStr += "," + param +" "+ sortType;
			}else{
				orderByStr += " order by " + param +" "+ sortType;
			}
		}
	}
	
	public String getQueryHql(){
		return fromStr + whereStr + orderByStr;
	}
	public ArrayList<Object> getParameters(){
		return parameters;
	}
}
