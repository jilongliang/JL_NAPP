package com.app.action;

import java.util.List;

import com.app.common.BaseInterface;
import com.app.entity.user.User;
import com.app.service.impl.UserSerivceImpl;

@SuppressWarnings("all")
public class UserAction extends BaseAction {
	BaseInterface userService = new UserSerivceImpl();
	/**
	 * 登陆
	 * @return
	 * @throws Exception
	 */
	public String login() throws Exception {
		User user=new User();
		user.setPassword(password);
		user.setUsername(username);
		boolean flag = userService.query(user);
		//System.out.println(flag);
		if (!flag) {
			//flag = true;
			return "input";
		} else {
			//flag = false;
			return "success";
		}
	}
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String query() throws Exception {
		 List<User> list=userService.query();
		 if(list!=null){
			 request.setAttribute("Q_userAll", list);
			 return "userinfo";
		 }else{
			 return "input";
		 }
	}
}
