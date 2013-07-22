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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.app.common.FileUtil;
import com.app.dao.impl.HtmlDao;
import com.app.entity.user.Dept;

public class HttpClientHtml {
	private static final Log logger = LogFactory.getLog(HttpClientHtml.class);
	private static HtmlDao htmlDao = new HtmlDao();
	private static final String siteUrl = "login.goodjobs.cn";
	private static final String baseDir = "http://user.goodjobs.cn/";
	private static final String baseUrl = "d:\\test\\";
	private static final String loginAction = "/index.php/action/UserLogin";
	private static final int PORT = 80;
	private static final String forwardURL = baseDir;
	private static final String forwardURL1 = baseDir+"dispatcher.php/module/Default/action/VipPage/page/";
	private static final String hostCss  = baseUrl+"style1.txt";
	private static final String css  = baseDir+"personal.css";
	private static final String Img = baseDir+"images";
	private static final String serverJS = baseDir+"scripts/fValidate/fValidate.one.js";
    /**
     * @param LOGON_SITE
     * @param LOGON_PORT
     * @param login_Action
     * @param params
     * @throws Exception
     */
    private static HttpClient loginHtml(String LOGON_SITE, int LOGON_PORT,String login_Action,String ...params) throws Exception {
        HttpClient client = new HttpClient();
        client.getHostConfiguration().setHost(LOGON_SITE, LOGON_PORT);
        PostMethod post = new PostMethod(login_Action);
        NameValuePair userName = new NameValuePair("memberName",params[0] );
        NameValuePair password = new NameValuePair("password",params[1] );
        post.setRequestBody(new NameValuePair[] { userName, password });
        client.executeMethod(post);
        post.releaseConnection();
        CookieSpec cookiespec = CookiePolicy.getDefaultSpec();
        Cookie[] cookies = cookiespec.match(LOGON_SITE, LOGON_PORT, "/", false,
                client.getState().getCookies());
        if (cookies != null)
            if (cookies.length == 0) {
                   System.out.println("Cookies is not Exists ");
            } else {
                for (int i = 0; i < cookies.length; i++) {
                    System.out.println(cookies[i].toString());
                }
            }
        return client;
    }
    /**
     * @param client
     * @param newUrl
     * @throws Exception
     */
    private static String  createHtml(HttpClient client, String newUrl,int radom) throws  Exception {
    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String filePath = baseUrl	+ format.format(new Date() )+ "_" + radom + ".html";
        PostMethod post = new PostMethod(newUrl);
        client.executeMethod(post);
        post.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "GBK");
        String content= post.getResponseBodyAsString();
        FileUtil.write(content, filePath);
        post.releaseConnection();
        return filePath;
    }
    /**
	 * @param filePath
	 * @param random
	 * @return
	 */
	private static String JsoupFile(String filePath, int random) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		File infile = new File(filePath);
		String url = baseUrl + format.format(new Date()) + "_new_" + random+ ".html";
				
		try {
			File outFile = new File(url);
			Document doc = Jsoup.parse(infile, "GBK");
			String html="<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>";
			StringBuffer sb = new StringBuffer();
			sb.append(html).append("\n");
			sb.append("<html>").append("\n");
			sb.append("<head>").append("\n");
			sb.append("<title>index</title>").append("\n");
			Elements meta = doc.getElementsByTag("meta");
			sb.append(meta.toString()).append("\n");
			 /////////////////////////////css////////////////////////////
			File cssFile = new File(hostCss);
			BufferedReader in = new BufferedReader(new FileReader(cssFile));
	        Writer out = new BufferedWriter(new OutputStreamWriter( new FileOutputStream(outFile), "gbk"));  
			String content=in.readLine();
			while(content!=null){
				//System.out.println(content);
				sb.append(content+"\n");
				content=in.readLine();
			}
			in.close();
			////////////////////////////Body//////////////////////////
			Elements body = doc.getElementsByTag("body");
			Elements links = doc.select("a");//  
         
            for (Element link : links) {  
                String comp=link.text().trim();//
                String _url=link.attr("href");
                Dept d=new Dept();
                if(comp!=null&&comp!=""){
                	d.setCompany(comp);
                	d.setUrl(_url);
                }
                List list=new ArrayList();
        		list.add(d);
        		
        		int ret = htmlDao.batchsSaveData(list);//
        		if (ret > 0) {
        			logger.info("成功"+ret+"条数据 ");
        		} else {
        			logger.info("Fail");
        		}
            }  
			sb.append(body.toString());
			sb.append("</html>");
			out.write(sb.toString());
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return url;
	}
	
    public static void doHtml() throws Exception {
    	String [] params={"liangjilong","admin@123"};
        HttpClient client = loginHtml(siteUrl, PORT, loginAction,params);
        for (int i = 1; i <=7; i++) {
            String path=createHtml(client, forwardURL1,i);
            System.out.println( JsoupFile(path,i));
		}
    }
    
}
