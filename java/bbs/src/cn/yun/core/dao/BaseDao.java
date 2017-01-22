package cn.yun.core.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import cn.yun.core.page.PageResult;
import cn.yun.core.utils.QueryHelper;

public interface BaseDao<T> {
	//添加
	void save(T entity);
	//修改
	void update(T entity);
	//删除（根据ID删除对象）
	void delete(Serializable id);
	//查询（根据ID获取对象）
	T findObjectById(Serializable id);
	//查询列表（获取全部对象）
	List<T> findObjects();
	//根据条件查询数据
	List<T> findObjectsByCondition(String hql,ArrayList<Object> parameters);
		
	PageResult findObjectsByCondition(QueryHelper queryHelper,int pageNo,int pageSize);
}
