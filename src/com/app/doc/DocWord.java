package com.app.doc;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import org.apache.poi.hwpf.extractor.WordExtractor;

/**
 *poi-3.9-20121203.jar
 *poi-examples-3.9-20121203.jar
 *poi-excelant-3.9-20121203.jar
 *poi-ooxml-3.9-20121203.jar
 *poi-ooxml-schemas-3.9-20121203.jar
 *poi-scratchpad-3.9-20121203.jar
 */
public class DocWord {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception{
		String path="D:/0401.doc";
		String text =readWordDoc(path);
		String content = new String(text.getBytes("utf-8"),"utf-8");
		System.out.println(content);
	}
	/**
	 * 读word文件的内容
	 * @param path
	 * @return
	 * @throws Exception
	 */
	public static String readWordDoc(String path) throws Exception { 
		InputStream input=new FileInputStream(new File(path));
		WordExtractor extractor = null;
        // 创建WordExtractor
        extractor = new WordExtractor(input);
        // 对doc文件进行提取
		return extractor.getText();
	}
}