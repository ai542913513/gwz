package cn.yun.bbs.bbs.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yun.bbs.bbs.dao.BbsDao;
import cn.yun.bbs.bbs.service.BbsService;
import cn.yun.bbs.entity.Bbs;
import cn.yun.core.service.impl.BaseServiceImpl;

@Service("bbsService")
public class BbsServiceImpl extends BaseServiceImpl<Bbs> implements BbsService {
	private BbsDao bbsDao;

	@Resource
	public void setBbsDao(BbsDao bbsDao) {
		super.setBaseDao(bbsDao);
		this.bbsDao = bbsDao;
	}

}
