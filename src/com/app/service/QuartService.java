package com.app.service;

import java.util.List;


/**
 *@DEMO:Spring_Quarz
 *@Author:jilongliang
 *@Date:2013-5-13
 */
public interface QuartService {
	public int saveData(String name);
	public int batchsSaveData(List list);
	public int batchsUpdateData(List list);
	public int batchsDeleteData(List list);
	public List batchsQueryData(List list);
}
