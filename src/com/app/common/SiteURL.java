package com.app.common;

import java.io.IOException;
import java.util.Properties;

public class SiteURL {
	private static final Properties pro = new Properties();
	static {
		try {
			pro.load(SiteURL.class.getClassLoader().getResourceAsStream(
					"jdbc.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static String readUrl(String key) {
		return (String) pro.get(key);
	}

	public static void main(String[] args) {
		System.out.println(readUrl("jdbc.password"));
	}
}
