package com.app.domain.timer;

import com.app.dao.impl.HtmlDao;
import com.app.spider.HttpClientHtml;

/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-7-13
 */
@SuppressWarnings("all")
public class Spider {
	private HtmlDao htmlDao = new HtmlDao();
	public void doSpider()throws Exception {
		HttpClientHtml html=new HttpClientHtml();
		html.doHtml();
	}
}
