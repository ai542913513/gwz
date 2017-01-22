package cn.yun.bbs.userInfo.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yun.bbs.entity.Userinfo;
import cn.yun.bbs.userInfo.dao.UserInfoDao;
import cn.yun.bbs.userInfo.service.UserInfoService;
import cn.yun.core.service.impl.BaseServiceImpl;
@Service("userInfoService")
public class UserInfoServiceImpl extends BaseServiceImpl<Userinfo> implements UserInfoService{
	private UserInfoDao userInfoDao;
	
	@Resource
	public void setUserInfoDao(UserInfoDao userInfoDao) {
		super.setBaseDao(userInfoDao);
		this.userInfoDao = userInfoDao;
	}
	
}
