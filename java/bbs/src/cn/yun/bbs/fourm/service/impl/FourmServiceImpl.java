package cn.yun.bbs.fourm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yun.bbs.entity.Fourm;
import cn.yun.bbs.fourm.dao.FourmDao;
import cn.yun.bbs.fourm.service.FourmService;
import cn.yun.core.service.impl.BaseServiceImpl;

@Service("fourmService")
public class FourmServiceImpl extends BaseServiceImpl<Fourm> implements FourmService{
	private FourmDao fourmDao;
	
	@Resource
	public void setFourmDao(FourmDao fourmDao) {
		super.setBaseDao(fourmDao);
		this.fourmDao = fourmDao;
	}
	
	
}
