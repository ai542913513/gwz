package cn.yun.test.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.yun.test.dao.TestDao;
import cn.yun.test.entity.Person;

public class TestDaoImpl extends HibernateDaoSupport implements TestDao {

	public void save(Person person) {
		this.getHibernateTemplate().save(person);
	}

}
