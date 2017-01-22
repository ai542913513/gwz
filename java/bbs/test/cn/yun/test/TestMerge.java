package cn.yun.test;

import static org.junit.Assert.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.yun.test.entity.Person;
import cn.yun.test.service.TestService;

public class TestMerge {
	ClassPathXmlApplicationContext cxt;
	@Before
	public void load(){
		cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	@Test
	public void testSpring(){
		TestService ts = (TestService) cxt.getBean("testService");
		ts.say();
	}
	@Test
	public void TestHibernate(){
		SessionFactory sf = (SessionFactory)cxt.getBean("sessionFactory");
		Session session = sf.openSession();
		Transaction ts = session.beginTransaction();
		session.save(new Person("测试"));
		ts.commit();
		session.close();
	}
	
}
