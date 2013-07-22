package com.app.domain.config;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStream;

/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-7-21
 */
@SuppressWarnings("all")
public class Test {
	public static void main(String[] args) throws Exception{
		String path="src/config/doc/Tree.properties";
		reader(path);
		
	}

	private static String reader(String path) throws Exception {
		BufferedReader reader=null;
		File file=null;
		file=new File(path);
		
		reader=new BufferedReader(new FileReader(file));
		String text="";
		while(text!=reader.readLine()){
			text=reader.readLine();
			System.out.println(text);
		}
		text=null;
		return text;
	}
	
	/*public static String getValue(String msg,String fileName) throws Exception{
		Map map=read(fileName);
		String retVal="";
		List list=new ArrayList(map.keySet());
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			String key = (String) iterator.next();
			String []value=map.get(key).toString().split(",");
			for (int i = 0; i < value.length; i++) {
				String megs=value[i];
				if(msg!=null&&msg.indexOf((megs))>-1){
					retVal=key;
					break;
				}
			}
			if(!"".equals(retVal))break;
		}
		return retVal;
	}*/
}
