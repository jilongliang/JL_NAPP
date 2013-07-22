package com.app.spider;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-7-11
 */
public class Test1 {
	private static final String toUrl = "d:\\test\\";
	/**
	 * html代码解析
	 * @param filePath
	 * @param random
	 * @return
	 */
	private static String JsoupFile(String filePath, int random) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		File infile = new File(filePath);
		String url = toUrl + format.format(new Date()) + "_new_" + random+ ".html";
				
		try {
			File outFile = new File(url);
			Document doc = Jsoup.parse(infile, "GBK");
			String html="<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>";
			StringBuffer sb = new StringBuffer();
			sb.append(html).append("\n");
			sb.append("<html>").append("\n");
			sb.append("<head>").append("\n");
			sb.append("<title>欢迎使用新安人才网个人专区</title>").append("\n");
			Elements meta = doc.getElementsByTag("meta");
			sb.append(meta.toString()).append("\n");
			 
			////////////////////////////body//////////////////////////
			Elements body = doc.getElementsByTag("body");
			
			////////////////////////////link//////////////////////////
			Elements links = doc.select("link");//对link标签有href的路径都作处理
			
			for (Element link : links) {
				String hrefAttr = link.attr("href");
				if (hrefAttr.contains("/personal.css")) {
					hrefAttr = hrefAttr.replace("/personal.css","http://user.goodjobs.cn/personal.css");
					Element hrefVal=link.attr("href", hrefAttr);//修改href的属性值
					sb.append(hrefVal.toString()).append("\n");
				}
			}
			////////////////////////////script//////////////////////////
			Elements scripts = doc.select("script");//对script标签 
			for (Element js : scripts) {
				String jsrc = js.attr("src");
				if (jsrc.contains("/fValidate.one.js")) {
					jsrc = jsrc.replace("/fValidate.one.js","/scripts/fValidate/fValidate.one.js");
					Element val=js.attr("src", jsrc);//修改href的属性值
					sb.append(val.toString()).append("\n");
				}
			}
			
			////////////////////////////script//////////////////////////
			Elements tags = body.select("*");//对所有标签有src的路径都作处理
			for (Element tag : tags) {
				String src = tag.attr("src");
				if (src.contains("/images")) {
					src = src.replace("/images","http://user.goodjobs.cn/images");
					tag.attr("src", src);//修改src的属性值
				}
			}

			sb.append(body.toString());
			sb.append("</html>");
			
			BufferedReader in = new BufferedReader(new FileReader(infile));
			Writer out = new BufferedWriter(new OutputStreamWriter(	new FileOutputStream(outFile), "gbk"));
			String content = sb.toString();
			out.write(content);
			in.close();
			
			System.out.println("页面已经爬完");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return url;
	}
	
	public static void main(String[] args) {
		String filePath = toUrl + "2013-07-12_1.html";
		JsoupFile(filePath, 12);
	}
}
