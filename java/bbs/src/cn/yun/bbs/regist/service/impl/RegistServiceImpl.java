package cn.yun.bbs.regist.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yun.bbs.entity.User;
import cn.yun.bbs.regist.dao.RegistDao;
import cn.yun.bbs.regist.service.RegistService;
import cn.yun.core.service.impl.BaseServiceImpl;

@Service("registService")
public class RegistServiceImpl extends BaseServiceImpl<User> implements RegistService{
	private RegistDao registDao;
	
	@Resource
	public void setRegistDao(RegistDao registDao) {
		super.setBaseDao(registDao);
		this.registDao = registDao;
	}
	
}
