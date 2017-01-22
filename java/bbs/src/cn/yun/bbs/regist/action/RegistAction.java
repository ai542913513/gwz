package cn.yun.bbs.regist.action;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import cn.yun.bbs.entity.User;
import cn.yun.bbs.entity.Userinfo;
import cn.yun.bbs.regist.service.RegistService;
import cn.yun.core.action.BaseAction;

public class RegistAction extends BaseAction{
	@Resource
	private RegistService registService;
	private User user;
	private String userAccount;
	private String email;
	private String passWord;
	private Boolean beUsed;
	
	//跳转至注册界面
	public String registUI(){
		return "registUI";
	}
	
	//注册帐号
	public String regist(){
		user.setRegistTime(new Date());
//		//user.setRole(role);
		registService.save(user);
		return SUCCESS;
		
	}
	//检测帐号是否重复
	public String checkUserName(){
		beUsed=false;
		System.out.println(userAccount);
		List<User> userList=registService.findObjects();
		for(User u:userList){
			if(u.getAcount()==userAccount){
				beUsed=true;
			}
		}
		return "checkAccount";
	}
	//检测邮箱是否重复
	public String checkUserEmail(){
		beUsed=false;
		List<User> userList=registService.findObjects();
		for(User u:userList){
			Set<Userinfo> userInfoList=u.getUserinfos();
			for(Userinfo userInfo:userInfoList){
				if(email==userInfo.getMail()){
					beUsed=true;
				}
			}
		}
		return "checkEmail";
	}

	public RegistService getRegistService() {
		return registService;
	}

	public void setRegistService(RegistService registService) {
		this.registService = registService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public Boolean getBeUsed() {
		return beUsed;
	}

	public void setBeUsed(Boolean beUsed) {
		this.beUsed = beUsed;
	}
	
}
