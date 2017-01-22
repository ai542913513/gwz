package cn.yun.test.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yun.test.dao.TestDao;
import cn.yun.test.entity.Person;
import cn.yun.test.service.TestService;
@Service("testService")
public class TestServiceImpl implements TestService {

	@Resource
	private TestDao testDao;
	
	public void say() {
		System.out.println("hello Spring !");
	}

	public void save(Person person) {
		testDao.save(person);
	}
	
}
