package com.app.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;

import org.apache.log4j.PropertyConfigurator;

public class PropertyUtil {
	
	protected static Properties pro = null;
	protected static InputStream is = null;
	private static File file = null;
	private static long fileLastModified = 0L;

	public static synchronized Properties getInstance() {
		if(pro==null){
			  pro=new Properties();
		}
		return pro;
	}
	/**
	 * 初始化
	 */
	private static void init() {
		URL url = PropertyUtil.class.getClassLoader().getResource(
				"/config/jdbc.properties");
		file = new File(url.getFile());
		fileLastModified = file.lastModified();
		pro = new Properties();
		load();
	}
	/**
	 * 加载
	 */
	private static void load() {
		try {
			pro.load(new FileInputStream(file));
			fileLastModified = file.lastModified();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 获取key
	 * @param key
	 * @return
	 */
	public static String getProperty(String key) {
		if ((file == null) || (pro == null)) {
			init();
		}
		if (file.lastModified() > fileLastModified) {
			load();
		}
		return pro.getProperty(key);
	}

	/**
	 * @param key
	 * @return
	 */
	public static String getLog4jConfigKey(String key) {
		String strVal = "";
		String path="/jdbc.properties";
		try {
			// is=PropertyUtil.class.getClass().getResourceAsStream(path);
			is = new FileInputStream(new File(path));
			pro = new Properties();
			pro.load(is);

			PropertyConfigurator.configure(pro);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		strVal = (String) pro.getProperty(key);
		return strVal;
	}
	
}
