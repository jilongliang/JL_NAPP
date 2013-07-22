package com.app.domain.config;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-7-21
 */
@SuppressWarnings("all")
public class FileUtil {
	/**
	 * 读配置文件
	 * @param fileName
	 * @return
	 * @throws Exception
	 */
	public static Map read(String fileName) throws Exception{
		Map map=new HashMap();
		BufferedReader reader=null;
		FileReader fr=null;
		//String root=FileUtil.class.getClassLoader().getResource(".").toURI().getPath();
		//fileName=root+fileName;
		File file=null;
		file=new File(fileName);
		fr=new FileReader(file);
		reader=new BufferedReader(fr);
		String text=reader.readLine();
		while(text!=null){
			String val[]=text.split("=");//=分开
			if(val.length>0){
				String key=val[0].split("-")[0];//,分开
				//System.out.println(key);
				//System.out.println(val[1]);
				map.put(key, val[1]);
			}
			 text=reader.readLine();
		}
		return map;
	}
	
	/**获取值
	 * @param msg数据库传过来的值
	 * @param fileName
	 * @return
	 */
	public static String getValue(String msg,String fileName) throws Exception{
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
	}
	
	public static void main(String[] args) throws Exception{
		String fileName="src/config/doc/test.txt";
		String mesg="手机短信";
		String val=getValue(mesg,fileName);
		System.out.println(val);
	}
}
