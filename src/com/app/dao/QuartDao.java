package com.app.dao;

import java.util.List;

@SuppressWarnings("all")
public interface QuartDao {

	public int saveData(String name);
	public int batchsSaveData(List list);
	public int batchsUpdateData(List list);
	public int batchsDeleteData(List list);
	public List batchsQueryData(List list);
}
