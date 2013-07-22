package com.app.service.impl;

import java.util.List;

import com.app.common.BaseInterface;
import com.app.dao.impl.UserDaoImpl;
import com.app.entity.user.User;
@SuppressWarnings("all")
public class UserSerivceImpl implements BaseInterface<User> {
	BaseInterface userDao=new UserDaoImpl();

	@Override
	public boolean query(User obj) {
		return userDao.query(obj);
	}

	@Override
	public int saveOrUpdate(User obj) {
		return userDao.saveOrUpdate(obj);
	}

	@Override
	public List<User> query() {
		return userDao.query();
	}
	 
}
