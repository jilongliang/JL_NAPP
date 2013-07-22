package com.app.duapp;
import org.dom4j.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
/**
 * @author liangjilong
 */
@SuppressWarnings("all")
public class JsoupXml {
	
	private static String url = "http://api.map.baidu.com/geocoder/v2/?ak=E4805d16520de693a3fe707cdc962045&callback=renderReverse&location=39.983424,116.322987&output=xml&pois=1";
	public static void main(String[] args)throws Exception {
		String xml=createAsXml(new Object[]{});
		//System.out.println(xml);
		JsoupReadXml(xml);
	}
	
	/**
	 * Dom4j组装xml
	 * @param html
	 * @return
	 */
	private static String createAsXml(Object ...obj){
		org.dom4j.Document doc=DocumentHelper.createDocument();
		Element  root=doc.addElement("SearchMapRoot");//根
		root.addElement("status").setText("0");//status
		Element result=root.addElement("result");//result
		Element location=result.addElement("location");//location
		location.addElement("lat").setText("");//lat
		location.addElement("lng").setText("");//lat
		result.addElement("formatted_address").setText("");//formatted_address
		result.addElement("business").setText("");//business
		Element comp=result.addElement("addressComponent");//addressComponent
		comp.addElement("streetNumber").setText("");//streetNumber
		comp.addElement("street").setText("");//street
		comp.addElement("district").setText("");//district
		comp.addElement("city").setText("");//city
		comp.addElement("province").setText("");//province
		result.addElement("cityCode").setText("");//cityCode
		
		Element poi=result.addElement("pois").addElement("poi");
		poi.addElement("addr").setText("");//addr
		poi.addElement("distance").setText("");//distance
		poi.addElement("name").setText("");//name
		poi.addElement("poiType").setText("");//poiType
		poi.addElement("tel").setText("");//tel
		poi.addElement("zip").setText("");//zip
		
		Element point=poi.addElement("point");
		point.addElement("x").setText("");
		point.addElement("y").setText("");
		
		return doc.asXML();
	}
	
	/**
	 * 用Jsoup去解析xml
	 * @param params
	 */
	private static void JsoupReadXml(String params) throws Exception{
		//org.jsoup.nodes.Document doc=Jsoup.connect(params).get();//网络连接
		org.jsoup.nodes.Document doc=Jsoup.parse(params);//本地数据,连接关闭就可以调用
		if(doc!=null)
		{
			Elements pois=doc.select("poi");//获取到poi节点
			for(org.jsoup.nodes.Element poi:pois){
				
				String addr=poi.getElementsByTag("addr").text().trim();
				String distance=poi.getElementsByTag("distance").text().trim();
				String name=poi.getElementsByTag("name").text().trim();
				String poiType=poi.getElementsByTag("poiType").text().trim();
				String tel=poi.getElementsByTag("tel").text().trim();
				String zip=poi.getElementsByTag("zip").text().trim();
				String x=poi.getElementsByTag("x").text().trim();
				String y=poi.getElementsByTag("y").text().trim();
				
				Elements comps=doc.select("addressComponent");
				
				for (org.jsoup.nodes.Element comp:comps) {
					String streetNumber=comp.getElementsByTag("streetNumber").text().trim();
					String street=comp.getElementsByTag("street").text().trim();
					String district=comp.getElementsByTag("district").text().trim();
					String city=comp.getElementsByTag("city").text().trim();
					String province=comp.getElementsByTag("province").text().trim();
				}
				
				String	lat=doc.select("lat").text().trim();
				String	lng=doc.select("lng").text().trim();
				String	formatted_address=doc.select("formatted_address").text().trim();
				String	business=doc.select("business").text().trim();
				String	status=doc.select("status").text().trim();
				System.out.println(status);
			}
		}
	}
}
