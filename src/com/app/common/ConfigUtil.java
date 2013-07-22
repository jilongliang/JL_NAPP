package com.app.common;

import java.io.File;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.jsoup.Jsoup;

import com.app.entity.sys.JdbcInfo;
public class ConfigUtil {
	private static ConfigUtil instance = new ConfigUtil();
	private Document doc;
	private JdbcInfo jdbcInfo;
	private ConfigUtil() {
		try {
			doc = new SAXReader().read(Thread.currentThread().getContextClassLoader().getResourceAsStream("sys-config.xml"));
			Element driverNameElement = (Element) doc.selectObject("/config/db-info/driver-name");
			Element urlElement = (Element) doc.selectObject("/config/db-info/url");
			Element usernameElement = (Element) doc.selectObject("/config/db-info/username");
			Element passwordElement = (Element) doc.selectObject("/config/db-info/password");
			jdbcInfo = new JdbcInfo();
			jdbcInfo.setDriverName(driverNameElement.getStringValue());//获取driver-name节点值
			jdbcInfo.setUrl(urlElement.getStringValue());
			jdbcInfo.setUsername(usernameElement.getStringValue());
			jdbcInfo.setPassword(passwordElement.getStringValue());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 利用Jsoup解析xml
	 * @throws Exception
	 */
	private static void Jsoup()throws Exception{
		String pathname="src/config/doc/xml/sys-config.xml";
		File flie=new File(pathname);
		org.jsoup.nodes.Document doc = Jsoup.parse(flie, "UTF-8");
		String driverName=doc.select("driver-name").text();//获取driver-name节点值
		String url=doc.select("url").text();
		String username=doc.select("username").text();
		String password=doc.select("password").text();
		System.out.println(password);
	} 
	public JdbcInfo getJdbcInfo() {
		return jdbcInfo;

	}

	public static ConfigUtil getInstance() {
		return instance;
	}

	public static void main(String[] args)  {
		
	}
}