package com.app.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.app.common.AppDbUtil;
import com.app.common.BaseInterface;
import com.app.entity.user.User;
@SuppressWarnings("all")
public class UserDaoImpl implements BaseInterface<User>{
	private java.sql.ResultSet rs = null;
	private java.sql.PreparedStatement pst = null;
	private java.sql.Connection con = null;

	public boolean query(User user){
		String sql = "select username,password from T_users where username=? and password=?";
		con = AppDbUtil.getInstance().getConnection();
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, user.getUsername());
			pst.setString(2,user.getPassword());
			rs=pst.executeQuery();
			while(rs.next()){
				if(user.getUsername()==rs.getString("username")
				   &&user.getPassword().equals(rs.getString("password"))){
				  return true;
				}
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public int saveOrUpdate(User user) {
		int ret = -1;
		con = AppDbUtil.getInstance().getConnection();
		String insertSql = "Insert into T_users(username,password) values(?,md5(?))";
		try {
			pst = con.prepareStatement(insertSql);
			pst.setString(1,  user.getUsername());
			pst.setString(2,  user.getPassword());
			ret = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			AppDbUtil.Relesae(rs, pst, con);
		}
		return ret;
	}

	@Override
	public List<User> query() {
		List<User> list=new ArrayList<User>();
		String sql = "select username,password from T_users";
		con = AppDbUtil.getInstance().getConnection();
		try {
			pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				 User user=new User();
				 user.setPassword(rs.getString("password"));
				 user.setUsername(rs.getString("username"));
				 list.add(user);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
