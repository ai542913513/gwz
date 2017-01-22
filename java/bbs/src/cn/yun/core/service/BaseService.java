package cn.yun.core.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import cn.yun.core.page.PageResult;
import cn.yun.core.utils.QueryHelper;

public interface BaseService<T> {
	//新增
	public void save(T entity);
	//更新
	public void update(T entity);
	//根据id删除
	public void delete(Serializable id);
	//根据id查找
	public T findObjectById(Serializable id);
	//查找列表
	public List<T> findObjects();
	//根据查询条件查询数据
	public List<T> findObjectsByCondition(String hql,ArrayList<Object> parameters);
	//分页查询
	public PageResult findObjectsByCondition(QueryHelper queryHelper,int pageNo,int pageSize);
}
