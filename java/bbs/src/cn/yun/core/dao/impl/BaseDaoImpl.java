package cn.yun.core.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.yun.core.dao.BaseDao;
import cn.yun.core.page.PageResult;
import cn.yun.core.utils.QueryHelper;

public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T>{

	Class<T> clazz;
	
	public BaseDaoImpl(){
		ParameterizedType pt = (ParameterizedType)this.getClass().getGenericSuperclass();
		clazz = (Class<T>)pt.getActualTypeArguments()[0];
	}
	
	public void delete(Serializable id) {
		getHibernateTemplate().delete(findObjectById(id));
	}

	public T findObjectById(Serializable id) {
		return getHibernateTemplate().get(clazz, id);
	}

	public List<T> findObjects() {
		Query Query = this.getSession().createQuery("from "+clazz.getSimpleName());
		return Query.list();
	}

	public void save(T entity) {
		getHibernateTemplate().save(entity);
	}

	public void update(T entity) {
		getHibernateTemplate().update(entity);
	}
	
	//查找列表
	public List<T> findObjectsByCondition(String hql,ArrayList<Object> parameters){
		Query query = getSession().createQuery(hql);
		if(parameters != null){
			for(int i = 0;i<parameters.size();i++){
				query.setParameter(i, parameters.get(i));
			}
		}
		return query.list();
	}
	//查找列表
	public PageResult findObjectsByCondition(QueryHelper queryHelper,int pageNo,int pageSize){
		//从哪里开始查询
		int startIndex = (pageNo-1)*pageSize;
		
		Query query = getSession().createQuery(queryHelper.getQueryHql());
		ArrayList<Object> parameters = queryHelper.getParameters();
		if(parameters != null){
			for(int i = 0;i<parameters.size();i++){
				query.setParameter(i, parameters.get(i));
			}
		}
		//获取总记录数
		ScrollableResults sc = query.scroll();
		sc.last();
		int totalCount = sc.getRowNumber()+1;
		
		//设置分页查询
		query.setFirstResult(startIndex);
		query.setMaxResults(pageSize);
		
		List items = query.list();
		
		return new PageResult(totalCount, pageNo, items, pageSize);
	}
}
