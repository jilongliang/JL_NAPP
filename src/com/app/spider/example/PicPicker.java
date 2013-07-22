package com.app.spider.example;

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.htmlparser.util.ParserException;

public class PicPicker {
	public static final String siteUrlPrefix = "http://www.baidu.com/";
	public static final String siteUrlSuffix = ".html";;
	public static final int pageNum = 4;// Sum 20 pages.
	public static final int startCategory = 1;

	public static void main(String args[]) throws ParserException, HttpException, IOException, InterruptedException {
		MultiThreadedHttpConnectionManager connectionManager = new MultiThreadedHttpConnectionManager();
		HttpClient httpClient = new HttpClient(connectionManager);

		int picCount = 0;
		// Main Loop, all page.
		PickerThread[] ppt = new PickerThread[pageNum];
		for (int p = 3; p < pageNum; p++) {
			ppt[p] = new PickerThread(httpClient, p + 1, startCategory);
			ppt[p].start();
			System.out.println("Thread " + (p + 1) + " Started~~");
			ppt[p].join();
		}
		for (int p = 3; p < pageNum; p++) {
			picCount = picCount + ppt[p].getCount();
		}
		System.out.println("All downloaded file num:" + picCount);
	}
}
