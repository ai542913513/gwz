package cn.yun.test.action;

import javax.annotation.Resource;

import cn.yun.test.entity.Person;
import cn.yun.test.service.TestService;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport{
	@Resource
	private TestService testService;
	
	public String execute(){
		return SUCCESS;
	}
	public String hib(){
		testService.save(new Person("哈哈"));
		return "hib";
	}
}
