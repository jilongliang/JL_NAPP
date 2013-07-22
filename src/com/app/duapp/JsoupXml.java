package com.app.duapp;
import java.util.Iterator;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
/**
 * @author liangjilong
 */
@SuppressWarnings("all")
public class JsoupXml {
	
	public static void main(String[] args)throws Exception {
		String url = "http://api.map.baidu.com/geocoder/v2/?ak=E4805d16520de693a3fe707cdc962045&callback=renderReverse&location=39.983424,116.322987&output=xml&pois=1";
		//readXml(url);
		JsoupReadXml(url);
	}
	/**
	 * 
	 * @param url xml地址
	 * @return
	 */
	public static void readXml(String url) throws Exception{ 
		
		Document doc=Jsoup.connect(url).get();
		
		Elements status=doc.select("status");//status节点
		for(Element st:status){
			System.out.println(st.text());//获取值
		}
		Elements lats=doc.select("lat");//lat节点
		for(Element lat:lats){
			System.out.println(lat.text());
		}
		Elements lngs=doc.select("lng");//lng节点
		for(Element lng:lngs){
			System.out.println(lng.text());
		}
		Elements formatted_address=doc.select("formatted_address");//formatted_address节点
		for(Element a:formatted_address){
			System.out.println(a.text());
		}
		
		Elements businesss=doc.select("business");//business节点
		for(Element b:businesss){
			System.out.println(b.text());
		}
		Elements streetNumbers=doc.select("streetNumber");//streetNumber节点
		for(Element sn:streetNumbers){
			System.out.println(sn.text());
		}
		Elements streets=doc.select("street");//street节点
		for(Element st:streets){
			System.out.println(st.text());
		}
		Elements districts=doc.select("district");//district节点
		for(Element d:districts){
			System.out.println(d.text());
		}
		Elements citys=doc.select("city");//city节点
		for(Element c:citys){
			System.out.println(c.text());
		}
		Elements provinces=doc.select("province");//province节点
		for(Element p:provinces){
			System.out.println(p.text());
		}
		Elements cityCodes=doc.select("cityCode");//cityCode节点
		for(Element cc:cityCodes){
			System.out.println(cc.text());
		}
		Elements addrs=doc.select("addr");//addr节点
		for(Element add:addrs){
			System.out.println(add.text());
		}
		Elements distances=doc.select("distance");//distance节点
		for(Element d:distances){
			System.out.println(d.text());
		}
		Elements names=doc.select("name");//name节点
		for(Element n:names){
			System.out.println(n.text());
		}
		Elements poiTypes=doc.select("poiType");//poiType节点
		for(Element pt:poiTypes){
			System.out.println(pt.text());
		}
		Elements tels=doc.select("tel");//tel节点
		for(Element t:tels){
			System.out.println(t.text());
		}
		Elements zips=doc.select("zip");//zip节点
		for(Element z:zips){
			System.out.println(z.text());
		}
		Elements xs=doc.select("x");//zip节点
		for(Element x:xs){
			System.out.println(x.text());
		}
		Elements ys=doc.select("y");//zip节点
		for(Element y:ys){
			System.out.println(y.text());
		}
		
	}
	
	/**
	 * 用Jsoup去解析xml
	 * @param url
	 */
	private static void JsoupReadXml(String url) throws Exception{
		org.jsoup.nodes.Document doc=Jsoup.connect(url).get();
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
				System.out.println(business);
			}
		}
	}
	 
}