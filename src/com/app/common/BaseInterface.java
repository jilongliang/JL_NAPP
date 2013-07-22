package com.app.common;

import java.util.List;


public interface BaseInterface<T> {
	public  boolean query(T obj);
	public  List<T> query();
	public int saveOrUpdate(T obj) ;
}
