package com.app.common;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
@SuppressWarnings("all")
public class AppDbUtil  extends HibernateDaoSupport{
	private static String Driver=PropertyUtil.getProperty("jdbc.driver");
	private static String url=PropertyUtil.getProperty("jdbc.url");
	private static String url1=PropertyUtil.getProperty("jdbc.url");
	private static String username=PropertyUtil.getProperty("jdbc.username");
	private static String password=PropertyUtil.getProperty("jdbc.password");
	
	private static AppDbUtil instance=null;
	private static Connection con = null;
	private static Statement stmt = null;
	private static PreparedStatement  pst = null;
	private static ResultSet rs = null;
	/**
	 * Single
	 * @return
	 */
	public static AppDbUtil getInstance(){
		if (instance == null) {
			synchronized (AppDbUtil.class) {
				instance = new AppDbUtil();
			}
		}
		return instance;
	}
	
	/**
	 * 通过过文件处理流加载配置,读key获取value值
	 * @return
	 */
	public static Connection getConnection() {
		Connection conn=null;
		try {
			Class.forName(Driver);
			conn=DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * @return
	 */
	public static Connection getConn() {
		Connection conn=null;
		try {
			Class.forName(Driver);
			conn=DriverManager.getConnection(url1, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 调用log4通过key值去获取value值
	 * @return
	 */
	public static Connection getConfigConnection() {
		try {
			Class.forName(Driver);
			con = DriverManager.getConnection(url1, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	/**
	 * 支持批量处理delete update insert
	 * @param sqls
	 * @return
	 */
	public  int supportsBatch(Object [] sqls){
		
		try {
			con=AppDbUtil.getInstance().getConnection();
			con.setAutoCommit(false);
			DatabaseMetaData dma=con.getMetaData();
			
			if(dma.supportsBatchUpdates()){
				stmt=con.createStatement();
				for (int i = 0; i < sqls.length; i++) {
					stmt.addBatch(sqls[i]+"");
				}
				int [] rows=stmt.executeBatch();
				con.commit();
				return rows.length;
			}else{
				//HQL或SQL
				for (int i = 0; i < sqls.length; i++) {
					SQLQuery query=this.getSession().createSQLQuery(sqls[i]+"");
					query.list();
				}
				return sqls.length;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Relesae(null, stmt, con);
		}
		return 0;
	}
	
	/***
	 * 释放资源...
	 * @param rs
	 * @param st
	 * @param conn
	 */
	public static void Relesae(ResultSet rs, Statement st, Connection conn) {
		try {
			if (rs != null)
				rs.close();
			if (st != null)
				st.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	 
}
