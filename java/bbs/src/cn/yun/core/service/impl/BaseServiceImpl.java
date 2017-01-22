package cn.yun.core.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import cn.yun.core.dao.BaseDao;
import cn.yun.core.page.PageResult;
import cn.yun.core.service.BaseService;
import cn.yun.core.utils.QueryHelper;

public class BaseServiceImpl<T> implements BaseService<T> {
	
	private BaseDao<T> baseDao;
	
	public void setBaseDao(BaseDao<T> baseDao) {
		this.baseDao = baseDao;
	}
	
	public void delete(Serializable id) {
		baseDao.delete(id);
	}

	public T findObjectById(Serializable id) {
		return baseDao.findObjectById(id);
	}

	public List<T> findObjects() {
		return baseDao.findObjects();
	}

	public void save(T entity) {
		baseDao.save(entity);
	}

	public void update(T entity) {
		baseDao.update(entity);
	}
	
	public List<T> findObjectsByCondition(String hql,ArrayList<Object> parameters){
		return baseDao.findObjectsByCondition(hql, parameters);
	}
	
	public PageResult findObjectsByCondition(QueryHelper queryHelper,int pageNo,int pageSize){
		return baseDao.findObjectsByCondition(queryHelper, pageNo, pageSize);
	}
}
