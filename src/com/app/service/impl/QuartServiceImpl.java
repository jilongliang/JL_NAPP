package com.app.service.impl;

import java.util.List;

import com.app.dao.QuartDao;
import com.app.dao.impl.QuartDaoImpl;
import com.app.service.QuartService;

/**
 *@DEMO:Spring_Quarz
 *@Author:jilongliang
 *@Date:2013-5-13
 */
public class QuartServiceImpl implements QuartService {
	private QuartDao quartDao=new QuartDaoImpl();

	public int saveData(String name) {
		return quartDao.saveData(name);
	}

	@Override
	public int batchsSaveData(List list) {
		return quartDao.batchsSaveData(list);
	}

	@Override
	public int batchsUpdateData(List list) {
		return quartDao.batchsUpdateData(list);
	}

	@Override
	public int batchsDeleteData(List list) {
		return quartDao.batchsDeleteData(list);
	}
	public List batchsQueryData(List list){
		return quartDao.batchsQueryData(list);
	}
}
