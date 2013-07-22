package com.app.entity.sys;

import java.io.Serializable;

/**
 *@DEMO:Spring_Quarz
 *@Author:jilongliang
 *@Date:2013-5-13
 */
@SuppressWarnings("all")
public class Quartz implements Serializable{
	private int id;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
