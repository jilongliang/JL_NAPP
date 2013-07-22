package com.app.domain.wsmx;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.app.common.AppDbUtil;

@SuppressWarnings("all")
public class Test1 {
	private static String sql = "create table test(id int)";
	private static String query = "select * from QUARTZ ";

	public static void main(String[] args) throws Exception {
		queryTable();
	}

	/**
	 * 创建表
	 * 
	 * @throws IOException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	private static void createTable() throws Exception {
		Connection connection =   AppDbUtil.getConnection();
		Statement statement = connection.createStatement();
		statement.executeUpdate(sql);
		ResultSet resultSet = statement.getResultSet();
		if (resultSet != null) {
			while (resultSet.next()) {
				System.out.println(resultSet.getObject(1));
			}
		}
	}

	/**
	 * 查询表的数据
	 * 
	 * @throws IOException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	private static void queryTable() throws Exception {
		Connection connection = AppDbUtil.getConnection();
		PreparedStatement pst = connection.prepareStatement(query);
		ResultSet resultSet = pst.executeQuery();
		if (resultSet != null) {
			while (resultSet.next()) {
				System.out.println(resultSet.getObject(2));
			}
		}
	}
}
