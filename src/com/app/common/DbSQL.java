package com.app.common;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;


/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-6-29
 */
@SuppressWarnings("all")
public class DbSQL {
	private static Connection conn = null;
	private static Statement stm = null;
	private static ResultSet rs = null;
	private static DatabaseMetaData dma;
	private static ResultSetMetaData rsmd;
	public static void main(String[] args) {
		try {
			conn = AppDbUtil.getInstance().getConnection();
			String sql="select * from quart";
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			rsmd = rs.getMetaData();
			int columns = rsmd.getColumnCount();
			String rows = "";
			for (int i = 1; i < columns; i++) {
				rows += rsmd.getColumnName(i) + ";";
			}
			//System.out.println(rows);
			
			while (rs.next()) {
				rows = "";
				for (int i = 1; i < columns; i++) {
					rows += rs.getString(i) + ";";
				}
				System.out.println(rows);
			}
		} catch (Exception e) {
		}
	}
}
