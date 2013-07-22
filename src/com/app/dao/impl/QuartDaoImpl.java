package com.app.dao.impl;

import java.util.List;

import com.app.common.AppDbUtil;
import com.app.dao.QuartDao;
import com.app.entity.sys.Quartz;

@SuppressWarnings("all")
public class QuartDaoImpl implements QuartDao {
	private java.sql.ResultSet rs = null;
	private java.sql.PreparedStatement pst = null;
	private java.sql.Statement stm = null;
	private java.sql.Connection con = null;

	public int saveData(String name) {
		int ret = -1;
		con = AppDbUtil.getInstance().getConnection();
		String insertSql = "Insert into QUART(name) values(?)";
		try {
			pst = con.prepareStatement(insertSql);
			pst.setString(1, name);
			ret = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			AppDbUtil.Relesae(rs, pst, con);
		}
		return ret;
	}
	/**
	 * 批量保存
	 */
	public int batchsSaveData(List list) {
		int index=0;
		String sqls[]=new String[list.size()];//多条SQL
		for (int i = 0; i < list.size(); i++) {
			Quartz q=(Quartz) list.get(i);
		    String sql="Insert into quart(name) values('"+q.getName()+"')";
		    sqls[index]=sql;
			index++;
		}
		int rows=AppDbUtil.getInstance().supportsBatch(sqls);
		return rows;
	}
	/**
	 * 批量更新
	 */
	public int batchsUpdateData(List list) {
		int index=0;
		String sqls[]=new String[list.size()];//多条SQL
		for (int i = 0; i < list.size(); i++) {
			Quartz q=(Quartz) list.get(i);
		    String sql="update quart set name='"+q.getName()+"' where id="+q.getId()+"" ;
		    sqls[index]=sql;
			index++;
		}
		int rows=AppDbUtil.getInstance().supportsBatch(sqls);
		return rows;
	}

	/**
	 * 批量删除
	 */
	public int batchsDeleteData(List list) {
		int index=0;
		String sqls[]=new String[list.size()];//多条SQL
		for (int i = 0; i < list.size(); i++) {
			Quartz q=(Quartz) list.get(i);
		    String sql="delete from quart where id="+q.getId() ;
		    sqls[index]=sql;
			index++;
		}
		int rows=AppDbUtil.getInstance().supportsBatch(sqls);
		return rows;
	}
	/**
	 * 批量查询
	 */
	public List batchsQueryData(List list) {

		int index=0;
		String sqls[]=new String[list.size()];//多条SQL
		for (int i = 0; i < list.size(); i++) {
			Quartz q=(Quartz) list.get(i);
		    String sql="select * from quart where id="+q.getId() ;
		    sqls[index]=sql;
			index++;
		}
		int rows=AppDbUtil.getInstance().supportsBatch(sqls);
	
		return null;
	}
	
}
