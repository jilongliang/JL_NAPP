package com.app.spider.example;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.tags.HeadingTag;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;

public class PickerThread extends Thread {

	private HttpClient httpClient = null;
	private int pageNum = 0;
	private int picCountT = 0;
	private int startCategory = 0;

	public PickerThread(HttpClient httpClient, int pageNum, int startCategory) {
		this.httpClient = httpClient;
		this.pageNum = pageNum;
		this.startCategory = startCategory - 1;
	}

	public int getCount() {
		return picCountT;
	}

	@Override
	public void run() {
		System.out.println("Thread " + pageNum + " Running~~");
		File forLogFile = new File("log4thread" + pageNum);
		FileWriter fwl = null;
		String picStr = null;
		try {
			Parser parser;
			parser = new Parser("http://www.baidu.com/" + pageNum + ".html");
			fwl = new FileWriter(forLogFile);
			NodeList nodelist = parser.parse(null);
			NodeFilter categoryFilter = new TagNameFilter("h4");
			NodeList categoryList = nodelist.extractAllNodesThatMatch(categoryFilter, true);
			GetMethod getPageMethod = null;
			for (int i = startCategory; i < categoryList.size(); i++) {
				HeadingTag ht = (HeadingTag) categoryList.elementAt(i);
				LinkTag lt = (LinkTag) ht.getChild(0);
				String oneUrl = lt.getLink();
				fwl.write("[INFO]" + "Category Num" + i + " Downloading! Url:" + oneUrl + "\n");
				getPageMethod = new GetMethod(oneUrl);
				int statusCode = httpClient.executeMethod(getPageMethod);
				if (statusCode != HttpStatus.SC_OK) {
					fwl.write("[ERROR]" + "Method failed: " + getPageMethod.getStatusLine() + "\n");
				} else {
					fwl.write("[INFO]" + "Page" + pageNum + "_" + getPageMethod.getStatusLine() + "\n");
					fwl.flush();
					byte[] pageBody = getPageMethod.getResponseBody();
					getPageMethod.releaseConnection();
					String picListHtml = new String(pageBody, "UTF-8").trim();
					String picSubStr = picListHtml.substring(picListHtml.indexOf("start"), picListHtml.indexOf("end"));
					while (picSubStr.indexOf("\"file\"") != -1) {
						picStr = picSubStr.substring(picSubStr.indexOf("\"file\"") + 8, picSubStr.indexOf("\"pic\"") - 2).replace("\\",
								"");
						StringBuilder sb = new StringBuilder();
						sb.append("P").append(pageNum).append("_C").append(i + 1).append("/");
						File dir = new File(sb.toString());
						if (!dir.exists()) {
							dir.mkdir();
							dir = null;
						}
						sb.append(picStr.substring(picStr.indexOf("/", 16) + 1, picStr.length()));
						File picFile = new File(sb.toString());
						if (picFile.exists()) {
							fwl.write("[ERROR]" + "Duplication picture! FileName:" + sb.toString() + "\n");
							if (picSubStr.indexOf("\"pic\"", 7) != -1) {
								picSubStr = picSubStr.substring(picSubStr.indexOf("\"pic\"", 7) + 7, picSubStr.length());
							}
							continue;
						}
						GetMethod getPicMethod = new GetMethod("http://www.******.com/" + picStr);
						statusCode = httpClient.executeMethod(getPicMethod);
						if (statusCode != HttpStatus.SC_OK) {
							fwl.write("[ERROR]" + "Method failed: " + " URL:" + "http://www.********.com/" + picStr
									+ getPicMethod.getStatusLine() + "\n");
						} else {
							byte[] picBody = getPicMethod.getResponseBody();
							getPicMethod.releaseConnection();
							FileOutputStream picOutPut = new FileOutputStream(picFile);
							picOutPut.write(picBody);
							picOutPut.close();
							fwl.write("[INFO]" + "Pic" + picCountT++ + " URL:" + "http://www.*********.com/" + picStr + "\n");
							fwl.flush();
							System.out.print('.');
						}
						// System.out.println(picStr);
						if (picSubStr.indexOf("\"pic\"", 7) != -1) {
							picSubStr = picSubStr.substring(picSubStr.indexOf("\"pic\"", 7) + 7, picSubStr.length());
						}
					}
					fwl.write("[DEBUG]" + lt.getLink());
					fwl.flush();
				}
				System.out.println();
				fwl.flush();
			}
			fwl.write("[INFO]" + "Thread " + pageNum + " run over " + picCountT + "pic!!!\n");
			fwl.flush();
		} catch (Exception e) {
			System.out.println("Thread " + pageNum + " Exception!!! PicUrl:" + picStr);
			e.printStackTrace();
		} finally {
			try {
				if (fwl != null)
					fwl.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}
}

