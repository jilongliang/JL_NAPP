package com.app.dao.impl;

import java.util.List;

import com.app.common.AppDbUtil;
import com.app.entity.user.Dept;

/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-7-13
 */
public class HtmlDao {
	/**
	 * 批量保存
	 */
	public int batchsSaveData(List list) {
		int index=0;
		String sqls[]=new String[list.size()];//多条SQL
		for (int i = 0; i < list.size(); i++) {
			Dept d=(Dept) list.get(i);
		    String sql="Insert into html(company,url) values('"+d.getCompany()+"','"+d.getUrl()+"')";
		    sqls[index]=sql;
			index++;
		}
		int rows=AppDbUtil.getInstance().supportsBatch(sqls);
		return rows;
	}
}
